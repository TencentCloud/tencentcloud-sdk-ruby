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
  module Databuddy
    module V20260715
      # 高级依赖配置
      class AdvancedDependencyConfig < TencentCloud::Common::AbstractModel
        # @param Operator: 逻辑运算符号OR / AND
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Conditions: 任务运行条件规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array

        attr_accessor :Operator, :Conditions

        def initialize(operator=nil, conditions=nil)
          @Operator = operator
          @Conditions = conditions
        end

        def deserialize(params)
          @Operator = params['Operator']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              taskrunconditionrule_tmp = TaskRunConditionRule.new
              taskrunconditionrule_tmp.deserialize(i)
              @Conditions << taskrunconditionrule_tmp
            end
          end
        end
      end

      # 高级运行参数（工作流高级运行时用户填入的参数）
      class AdvancedParameter < TencentCloud::Common::AbstractModel
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

      # 告警配置
      class AlarmBrief < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警 ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmId: String
        # @param AlarmMonitorType: 告警的监控对象类型，如工作流、任务等，当前支持 1. WORKFLOW 2. TASK
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmMonitorType: String
        # @param AlarmGroups: 告警组，最多 50 个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmGroups: Array
        # @param DoNotDisturbWhenSkipped: 被跳过时免打扰，默认值 false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoNotDisturbWhenSkipped: Boolean
        # @param DoNotDisturbWhenManuallyTerminated: 被手动终止时免打扰，默认值 false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoNotDisturbWhenManuallyTerminated: Boolean
        # @param DoNotDisturbUntilTheLastRetry: 最后一次重试前免打扰，默认值 false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoNotDisturbUntilTheLastRetry: Boolean

        attr_accessor :AlarmId, :AlarmMonitorType, :AlarmGroups, :DoNotDisturbWhenSkipped, :DoNotDisturbWhenManuallyTerminated, :DoNotDisturbUntilTheLastRetry

        def initialize(alarmid=nil, alarmmonitortype=nil, alarmgroups=nil, donotdisturbwhenskipped=nil, donotdisturbwhenmanuallyterminated=nil, donotdisturbuntilthelastretry=nil)
          @AlarmId = alarmid
          @AlarmMonitorType = alarmmonitortype
          @AlarmGroups = alarmgroups
          @DoNotDisturbWhenSkipped = donotdisturbwhenskipped
          @DoNotDisturbWhenManuallyTerminated = donotdisturbwhenmanuallyterminated
          @DoNotDisturbUntilTheLastRetry = donotdisturbuntilthelastretry
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @AlarmMonitorType = params['AlarmMonitorType']
          unless params['AlarmGroups'].nil?
            @AlarmGroups = []
            params['AlarmGroups'].each do |i|
              alarmgroup_tmp = AlarmGroup.new
              alarmgroup_tmp.deserialize(i)
              @AlarmGroups << alarmgroup_tmp
            end
          end
          @DoNotDisturbWhenSkipped = params['DoNotDisturbWhenSkipped']
          @DoNotDisturbWhenManuallyTerminated = params['DoNotDisturbWhenManuallyTerminated']
          @DoNotDisturbUntilTheLastRetry = params['DoNotDisturbUntilTheLastRetry']
        end
      end

      # 告警组
      class AlarmGroup < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通知渠道ID，可通过基础平台通知渠道相关接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelId: String
        # @param ChannelName: 通知渠道名称，可以是用户组名称或邮箱地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelName: String
        # @param IsEmailChannel: 是否启用邮件渠道，默认值：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEmailChannel: Boolean
        # @param AlarmConditions: 一组告警条件，有 启动，成功，失败和任务超时告警
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmConditions: Array
        # @param ChannelType: 通知渠道类型。取值：0 未指定，1 Email，2 Webhook，3 Teams，4 Slack
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelType: Integer

        attr_accessor :ChannelId, :ChannelName, :IsEmailChannel, :AlarmConditions, :ChannelType

        def initialize(channelid=nil, channelname=nil, isemailchannel=nil, alarmconditions=nil, channeltype=nil)
          @ChannelId = channelid
          @ChannelName = channelname
          @IsEmailChannel = isemailchannel
          @AlarmConditions = alarmconditions
          @ChannelType = channeltype
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @IsEmailChannel = params['IsEmailChannel']
          @AlarmConditions = params['AlarmConditions']
          @ChannelType = params['ChannelType']
        end
      end

      # 批量异步操作的逐项结果
      class AsyncActionRsp < TencentCloud::Common::AbstractModel
        # @param ActionResults: 多个操作项的结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionResults: Array

        attr_accessor :ActionResults

        def initialize(actionresults=nil)
          @ActionResults = actionresults
        end

        def deserialize(params)
          unless params['ActionResults'].nil?
            @ActionResults = []
            params['ActionResults'].each do |i|
              runactionbrief_tmp = RunActionBrief.new
              runactionbrief_tmp.deserialize(i)
              @ActionResults << runactionbrief_tmp
            end
          end
        end
      end

      # OneFlow 透传的 Workspace 异步文件操作信息；作业状态由 Workspace 持久化和维护
      class AsyncOperation < TencentCloud::Common::AbstractModel
        # @param IsAsync: 是否异步执行；ZIP 解压创建时为 true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAsync: Boolean
        # @param JobId: Workspace 持久化的异步作业 ID，用于查询作业进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param OperationId: 调用方生成的提交幂等与链路追踪标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationId: String
        # @param Status: 异步作业状态：0-未指定，1-已受理，2-解压中，3-回调处理中，4-成功，5-部分失败，6-失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :IsAsync, :JobId, :OperationId, :Status

        def initialize(isasync=nil, jobid=nil, operationid=nil, status=nil)
          @IsAsync = isasync
          @JobId = jobid
          @OperationId = operationid
          @Status = status
        end

        def deserialize(params)
          @IsAsync = params['IsAsync']
          @JobId = params['JobId']
          @OperationId = params['OperationId']
          @Status = params['Status']
        end
      end

      # CreateFile请求参数结构体
      class CreateFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileName: <p>文件名，含后缀，最长 255 字节。不能以 . 或 .. 开头/结尾，不能含空格与控制字符</p>
        # @type FileName: String
        # @param ParentFolderPath: <p>父文件夹路径，以 / 开头、末尾不带 /，根目录传 /。来源：ListFiles 接口返回的 Path</p>
        # @type ParentFolderPath: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String
        # @param FileConfig: <p>文件运行配置</p>
        # @type FileConfig: :class:`Tencentcloud::Databuddy.v20260715.models.FileConfig`
        # @param BundleId: <p>绑定的 BundleId。来源：ListBundles 接口返回的 BundleId</p>
        # @type BundleId: String
        # @param BundleInfo: <p>绑定的 BundleInfo，JSON 字符串</p>
        # @type BundleInfo: String
        # @param Storage: <p>文件初始内容。不传则按FileType 生成默认内容</p>
        # @type Storage: :class:`Tencentcloud::Databuddy.v20260715.models.FileStorage`
        # @param ExtractArchive: 是否将 Storage 中的 ZIP 文件异步解压创建，默认 false。true 时异步作业由 Workspace 负责全生命周期，响应仅通过 AsyncOperation 返回作业信息（FileId 为空）；作业进度查询由基础平台 WS 接口实现，不在本协议中定义。
        # @type ExtractArchive: Boolean

        attr_accessor :WorkspaceId, :FileName, :ParentFolderPath, :FileType, :FileConfig, :BundleId, :BundleInfo, :Storage, :ExtractArchive

        def initialize(workspaceid=nil, filename=nil, parentfolderpath=nil, filetype=nil, fileconfig=nil, bundleid=nil, bundleinfo=nil, storage=nil, extractarchive=nil)
          @WorkspaceId = workspaceid
          @FileName = filename
          @ParentFolderPath = parentfolderpath
          @FileType = filetype
          @FileConfig = fileconfig
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @Storage = storage
          @ExtractArchive = extractarchive
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileName = params['FileName']
          @ParentFolderPath = params['ParentFolderPath']
          @FileType = params['FileType']
          unless params['FileConfig'].nil?
            @FileConfig = FileConfig.new
            @FileConfig.deserialize(params['FileConfig'])
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['Storage'].nil?
            @Storage = FileStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @ExtractArchive = params['ExtractArchive']
        end
      end

      # CreateFile返回参数结构体
      class CreateFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.FileInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FileInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkflow请求参数结构体
      class CreateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param BaseInfo: <p>工作流基本信息。必填，其中 WorkflowName 必填且工作空间内唯一</p>
        # @type BaseInfo: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowBaseInfo`
        # @param Trigger: <p>工作流调度配置</p>
        # @type Trigger: Array
        # @param ParamList: <p>工作流参数列表</p>
        # @type ParamList: Array
        # @param LabelList: <p>标签列表</p>
        # @type LabelList: Array
        # @param Alarm: <p>工作流告警配置</p>
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: <p>监控指标配置。若告警条件中选择了监控告警，则本字段必填</p>
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param AdvanceConfig: <p>工作流高级设置</p>
        # @type AdvanceConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowAdvanceConfig`
        # @param TaskList: <p>工作流任务列表</p>
        # @type TaskList: Array
        # @param BundleId: <p>BundleId，可通过 Bundle 相关接口获取</p>
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # @type BundleInfo: String
        # @param GitConfigId: <p>Git配置ID，可通过 Git 配置相关接口获取</p>
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # @type GitBranch: String

        attr_accessor :WorkspaceId, :BaseInfo, :Trigger, :ParamList, :LabelList, :Alarm, :MonitorMetric, :AdvanceConfig, :TaskList, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workspaceid=nil, baseinfo=nil, trigger=nil, paramlist=nil, labellist=nil, alarm=nil, monitormetric=nil, advanceconfig=nil, tasklist=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkspaceId = workspaceid
          @BaseInfo = baseinfo
          @Trigger = trigger
          @ParamList = paramlist
          @LabelList = labellist
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @AdvanceConfig = advanceconfig
          @TaskList = tasklist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BaseInfo'].nil?
            @BaseInfo = WorkflowBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['AdvanceConfig'].nil?
            @AdvanceConfig = WorkflowAdvanceConfig.new
            @AdvanceConfig.deserialize(params['AdvanceConfig'])
          end
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtask_tmp = WorkflowTask.new
              workflowtask_tmp.deserialize(i)
              @TaskList << workflowtask_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # CreateWorkflow返回参数结构体
      class CreateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>创建工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkflowRsp
      class CreateWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
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

      # DeleteFile请求参数结构体
      class DeleteFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID。来源：CreateFile / ListFiles / GetFile 接口返回的 FileId</p>
        # @type FileId: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String

        attr_accessor :WorkspaceId, :FileId, :FileType

        def initialize(workspaceid=nil, fileid=nil, filetype=nil)
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileType = filetype
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          @FileType = params['FileType']
        end
      end

      # DeleteFile返回参数结构体
      class DeleteFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteFileResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteFileResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件删除结果
      class DeleteFileResult < TencentCloud::Common::AbstractModel
        # @param FileId: <p>被删除的文件 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param Status: <p>删除是否成功</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :FileId, :Status

        def initialize(fileid=nil, status=nil)
          @FileId = fileid
          @Status = status
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Status = params['Status']
        end
      end

      # DeleteWorkflow请求参数结构体
      class DeleteWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>待删除的工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String

        attr_accessor :WorkspaceId, :WorkflowId

        def initialize(workspaceid=nil, workflowid=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # DeleteWorkflow返回参数结构体
      class DeleteWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>删除工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteWorkflowRsp
      class DeleteWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param Status: 删除状态，true 表示成功
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

      # 任务依赖简要信息
      class DependOnBrief < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过 ListWorkflowTasks 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 文件运行配置
      class FileConfig < TencentCloud::Common::AbstractModel
        # @param Params: <p>高级运行参数，变量替换用，map-json String,String</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param ResourceId: <p>执行资源 ID。来源：ListComputeResources 接口返回的 ResourceId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param DefaultCatalog: <p>默认 catalog</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCatalog: String
        # @param DefaultSchema: <p>默认 schema</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultSchema: String
        # @param AdvanceConfig: <p>高级配置，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceConfig: String
        # @param ExtraParams: <p>扩展参数，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraParams: String
        # @param Widgets: <p>Notebook 交互控件定义，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Widgets: String
        # @param OutputConf: <p>各单元格输出配置。仅 Get 出参返回，入参忽略</p>
        # @type OutputConf: Array
        # @param SqlSyntax: <p>SQL脚本语法标记</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlSyntax: String
        # @param ClusterId: <p>平台集群id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String

        attr_accessor :Params, :ResourceId, :DefaultCatalog, :DefaultSchema, :AdvanceConfig, :ExtraParams, :Widgets, :OutputConf, :SqlSyntax, :ClusterId

        def initialize(params=nil, resourceid=nil, defaultcatalog=nil, defaultschema=nil, advanceconfig=nil, extraparams=nil, widgets=nil, outputconf=nil, sqlsyntax=nil, clusterid=nil)
          @Params = params
          @ResourceId = resourceid
          @DefaultCatalog = defaultcatalog
          @DefaultSchema = defaultschema
          @AdvanceConfig = advanceconfig
          @ExtraParams = extraparams
          @Widgets = widgets
          @OutputConf = outputconf
          @SqlSyntax = sqlsyntax
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Params = params['Params']
          @ResourceId = params['ResourceId']
          @DefaultCatalog = params['DefaultCatalog']
          @DefaultSchema = params['DefaultSchema']
          @AdvanceConfig = params['AdvanceConfig']
          @ExtraParams = params['ExtraParams']
          @Widgets = params['Widgets']
          unless params['OutputConf'].nil?
            @OutputConf = []
            params['OutputConf'].each do |i|
              fileoutputconf_tmp = FileOutputConf.new
              fileoutputconf_tmp.deserialize(i)
              @OutputConf << fileoutputconf_tmp
            end
          end
          @SqlSyntax = params['SqlSyntax']
          @ClusterId = params['ClusterId']
        end
      end

      # 文件详情
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param AppId: <p>主账号 AppId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param WorkspaceId: <p>工作空间 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param FileName: <p>文件名，含后缀</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param Path: <p>文件在工作空间中的完整路径，以 / 开头，如 /etl/daily/demo.ipynb</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param FileConfig: <p>文件运行配置</p>
        # @type FileConfig: :class:`Tencentcloud::Databuddy.v20260715.models.FileConfig`
        # @param BundleId: <p>绑定的 BundleId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>绑定的 BundleInfo，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param Status: <p>文件状态。active=正常，deleted=已删除</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OwnerUserName: <p>文件负责人用户名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param CreateUserUin: <p>创建人子账号 Uin</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param UpdateUserUin: <p>最近更新人子账号 Uin</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param CreateTime: <p>创建时间，毫秒级时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>最近更新时间，毫秒级时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Storage: <p>文件存储信息。仅当请求 IncludeContent=true 时返回内容</p>
        # @type Storage: :class:`Tencentcloud::Databuddy.v20260715.models.FileStorage`
        # @param Permissions: <p>当前调用方对该文件的权限点列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permissions: String
        # @param ReleaseStatus: <p>是否已发布</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseStatus: Boolean
        # @param ResourceMode: <p>资源模式。1=分布式，2=单节点</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceMode: Integer
        # @param AsyncOperation: ZIP 异步创建时透传 Workspace 作业信息；普通同步创建或其他复用该返回结构的接口不设置该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncOperation: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncOperation`

        attr_accessor :AppId, :WorkspaceId, :FileId, :FileName, :FileType, :Path, :FileConfig, :BundleId, :BundleInfo, :Status, :OwnerUserName, :CreateUserUin, :UpdateUserUin, :CreateTime, :UpdateTime, :Storage, :Permissions, :ReleaseStatus, :ResourceMode, :AsyncOperation

        def initialize(appid=nil, workspaceid=nil, fileid=nil, filename=nil, filetype=nil, path=nil, fileconfig=nil, bundleid=nil, bundleinfo=nil, status=nil, ownerusername=nil, createuseruin=nil, updateuseruin=nil, createtime=nil, updatetime=nil, storage=nil, permissions=nil, releasestatus=nil, resourcemode=nil, asyncoperation=nil)
          @AppId = appid
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileName = filename
          @FileType = filetype
          @Path = path
          @FileConfig = fileconfig
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @Status = status
          @OwnerUserName = ownerusername
          @CreateUserUin = createuseruin
          @UpdateUserUin = updateuseruin
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Storage = storage
          @Permissions = permissions
          @ReleaseStatus = releasestatus
          @ResourceMode = resourcemode
          @AsyncOperation = asyncoperation
        end

        def deserialize(params)
          @AppId = params['AppId']
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @Path = params['Path']
          unless params['FileConfig'].nil?
            @FileConfig = FileConfig.new
            @FileConfig.deserialize(params['FileConfig'])
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @Status = params['Status']
          @OwnerUserName = params['OwnerUserName']
          @CreateUserUin = params['CreateUserUin']
          @UpdateUserUin = params['UpdateUserUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Storage'].nil?
            @Storage = FileStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @Permissions = params['Permissions']
          @ReleaseStatus = params['ReleaseStatus']
          @ResourceMode = params['ResourceMode']
          unless params['AsyncOperation'].nil?
            @AsyncOperation = AsyncOperation.new
            @AsyncOperation.deserialize(params['AsyncOperation'])
          end
        end
      end

      # Notebook/Python单元格输出配置
      class FileOutputConf < TencentCloud::Common::AbstractModel
        # @param CellId: 单元格 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CellId: String
        # @param DashboardConf: Dashboard 图表配置，JSON 字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DashboardConf: String
        # @param OutputPath: 执行结果文件的预签名下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputPath: String

        attr_accessor :CellId, :DashboardConf, :OutputPath

        def initialize(cellid=nil, dashboardconf=nil, outputpath=nil)
          @CellId = cellid
          @DashboardConf = dashboardconf
          @OutputPath = outputpath
        end

        def deserialize(params)
          @CellId = params['CellId']
          @DashboardConf = params['DashboardConf']
          @OutputPath = params['OutputPath']
        end
      end

      # 文件存储
      class FileStorage < TencentCloud::Common::AbstractModel
        # @param StorageType: 存储类型
        # @type StorageType: Integer
        # @param StoragePath: 存储路径
        # @type StoragePath: String
        # @param Content: 文件内容
        # @type Content: String

        attr_accessor :StorageType, :StoragePath, :Content

        def initialize(storagetype=nil, storagepath=nil, content=nil)
          @StorageType = storagetype
          @StoragePath = storagepath
          @Content = content
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          @StoragePath = params['StoragePath']
          @Content = params['Content']
        end
      end

      # GetFile请求参数结构体
      class GetFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID。来源：CreateFile / ListFiles 接口返回的 FileId。与 FilePath 二选一</p>
        # @type FileId: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String
        # @param IncludeContent: <p>是否返回文件内容。true 时 Storage.Content 返回 base64 内容，默认 false</p>
        # @type IncludeContent: Boolean
        # @param VersionId: <p>文件版本 ID。来源：ListFileVersions 接口返回的 VersionId。不传则读取最新版本</p>
        # @type VersionId: String
        # @param FilePath: <p>文件完整路径，以 / 开头，如 /etl/daily/demo.ipynb。与 FileId 二选一</p>
        # @type FilePath: String

        attr_accessor :WorkspaceId, :FileId, :FileType, :IncludeContent, :VersionId, :FilePath

        def initialize(workspaceid=nil, fileid=nil, filetype=nil, includecontent=nil, versionid=nil, filepath=nil)
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileType = filetype
          @IncludeContent = includecontent
          @VersionId = versionid
          @FilePath = filepath
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          @FileType = params['FileType']
          @IncludeContent = params['IncludeContent']
          @VersionId = params['VersionId']
          @FilePath = params['FilePath']
        end
      end

      # GetFile返回参数结构体
      class GetFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.FileInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FileInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWorkflow请求参数结构体
      class GetWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String

        attr_accessor :WorkspaceId, :WorkflowId

        def initialize(workspaceid=nil, workflowid=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # GetWorkflow返回参数结构体
      class GetWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>获取工作流详细信息响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWorkflowRsp
      class GetWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param BaseInfo: <p>工作流基本信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseInfo: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowBaseInfoDetail`
        # @param Trigger: <p>工作流调度配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trigger: Array
        # @param ParamList: <p>工作流参数列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamList: Array
        # @param LabelList: <p>标签列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param Alarm: <p>工作流告警配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: <p>监控指标配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param AdvanceConfig: <p>工作流高级设置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowAdvanceConfig`
        # @param TaskList: <p>工作流任务列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array
        # @param BundleId: <p>工作流绑定的 Bundle唯一标识，未绑定时为空</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param GitConfigId: <p>Git配置ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitBranch: String

        attr_accessor :WorkspaceId, :BaseInfo, :Trigger, :ParamList, :LabelList, :Alarm, :MonitorMetric, :AdvanceConfig, :TaskList, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workspaceid=nil, baseinfo=nil, trigger=nil, paramlist=nil, labellist=nil, alarm=nil, monitormetric=nil, advanceconfig=nil, tasklist=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkspaceId = workspaceid
          @BaseInfo = baseinfo
          @Trigger = trigger
          @ParamList = paramlist
          @LabelList = labellist
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @AdvanceConfig = advanceconfig
          @TaskList = tasklist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BaseInfo'].nil?
            @BaseInfo = WorkflowBaseInfoDetail.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['AdvanceConfig'].nil?
            @AdvanceConfig = WorkflowAdvanceConfig.new
            @AdvanceConfig.deserialize(params['AdvanceConfig'])
          end
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtask_tmp = WorkflowTask.new
              workflowtask_tmp.deserialize(i)
              @TaskList << workflowtask_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # GetWorkflowRun请求参数结构体
      class GetWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowRunId: <p>工作流运行ID，可通过 ListWorkflowRuns 获取。必填</p>
        # @type WorkflowRunId: String

        attr_accessor :WorkspaceId, :WorkflowRunId

        def initialize(workspaceid=nil, workflowrunid=nil)
          @WorkspaceId = workspaceid
          @WorkflowRunId = workflowrunid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowRunId = params['WorkflowRunId']
        end
      end

      # GetWorkflowRun返回参数结构体
      class GetWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询工作流运行详情响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetWorkflowRunRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetWorkflowRunRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作流运行详情响应。
      class GetWorkflowRunRsp < TencentCloud::Common::AbstractModel
        # @param WorkflowRun: 工作流运行信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRun: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowRun`

        attr_accessor :WorkflowRun

        def initialize(workflowrun=nil)
          @WorkflowRun = workflowrun
        end

        def deserialize(params)
          unless params['WorkflowRun'].nil?
            @WorkflowRun = WorkflowRun.new
            @WorkflowRun.deserialize(params['WorkflowRun'])
          end
        end
      end

      # GetWorkflowTaskRun请求参数结构体
      class GetWorkflowTaskRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowTaskRunId: <p>任务运行ID，可通过 ListWorkflowTaskRuns 获取。必填</p>
        # @type WorkflowTaskRunId: String
        # @param InnerWorkflowTaskRunListOption: <p>内嵌工作流任务运行列表选项（仅限 FOR_EACH 任务使用）。非必填</p>
        # @type InnerWorkflowTaskRunListOption: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskRunListOption`

        attr_accessor :WorkspaceId, :WorkflowTaskRunId, :InnerWorkflowTaskRunListOption

        def initialize(workspaceid=nil, workflowtaskrunid=nil, innerworkflowtaskrunlistoption=nil)
          @WorkspaceId = workspaceid
          @WorkflowTaskRunId = workflowtaskrunid
          @InnerWorkflowTaskRunListOption = innerworkflowtaskrunlistoption
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          unless params['InnerWorkflowTaskRunListOption'].nil?
            @InnerWorkflowTaskRunListOption = InnerWorkflowTaskRunListOption.new
            @InnerWorkflowTaskRunListOption.deserialize(params['InnerWorkflowTaskRunListOption'])
          end
        end
      end

      # GetWorkflowTaskRun返回参数结构体
      class GetWorkflowTaskRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询任务运行详情响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetWorkflowTaskRunRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetWorkflowTaskRunRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWorkflowTaskRunRsp
      class GetWorkflowTaskRunRsp < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowTaskRunId: 任务运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTaskRunId: String
        # @param RunState: 运行状态。取值参考工作流任务运行状态枚举，如 Pending / Running / Succeeded / Failed / Killed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param WorkspaceId: 工作空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowRunId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskTypeName: 任务类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param TaskVersionId: 任务版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskVersionId: String
        # @param TriggerType: 触发类型 (参考SchedulerTriggerType枚举)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param ResourceGroupId: 所属资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ErrorCodeString: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param RunUserUin: 运行用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: 运行用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param CreateUserUin: 创建人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param JobId: 执行平台执行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CreateTime: 创建时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DependenceFinishedTime: 依赖任务完成时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependenceFinishedTime: String
        # @param RunStartTime: 运行开始时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: 运行结束时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunCostTime: 运行时长，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param WaitTime: 等待时长（依赖就绪到开始运行的等待耗时），单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitTime: String
        # @param IssueTime: 下发执行平台时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssueTime: String
        # @param TimeZone: 时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeZone: String
        # @param DependOnList: 依赖上游任务ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param RunParams: 运行参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunParams: String
        # @param TaskTypeExtensions: 任务扩展信息，包含脚本路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeExtensions: String
        # @param LeftCoordinate: 任务X坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: 任务Y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param RetryTimes: 重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryTimes: Integer
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param RerunTimes: 重跑次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param IsLatestRun: 是否最新一次运行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLatestRun: Boolean
        # @param ResourceGroupInfoList: 资源组信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param ErrorMessage: 错误消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RunResult: 运行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunResult: String
        # @param InnerWorkflowTaskRun: 内嵌工作流任务运行详情（仅限 FOR_EACH 任务，其他任务类型不返回该字段）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerWorkflowTaskRun: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskRun`

        attr_accessor :TaskName, :WorkflowTaskRunId, :RunState, :WorkspaceId, :WorkflowId, :WorkflowRunId, :TaskId, :TaskTypeName, :TaskVersionId, :TriggerType, :ResourceGroupId, :ErrorCodeString, :RunUserUin, :RunUserName, :CreateUserUin, :JobId, :CreateTime, :UpdateTime, :DependenceFinishedTime, :RunStartTime, :RunEndTime, :RunCostTime, :WaitTime, :IssueTime, :TimeZone, :DependOnList, :RunParams, :TaskTypeExtensions, :LeftCoordinate, :TopCoordinate, :RetryTimes, :WorkflowName, :RerunTimes, :IsLatestRun, :ResourceGroupInfoList, :ErrorMessage, :RunResult, :InnerWorkflowTaskRun

        def initialize(taskname=nil, workflowtaskrunid=nil, runstate=nil, workspaceid=nil, workflowid=nil, workflowrunid=nil, taskid=nil, tasktypename=nil, taskversionid=nil, triggertype=nil, resourcegroupid=nil, errorcodestring=nil, runuseruin=nil, runusername=nil, createuseruin=nil, jobid=nil, createtime=nil, updatetime=nil, dependencefinishedtime=nil, runstarttime=nil, runendtime=nil, runcosttime=nil, waittime=nil, issuetime=nil, timezone=nil, dependonlist=nil, runparams=nil, tasktypeextensions=nil, leftcoordinate=nil, topcoordinate=nil, retrytimes=nil, workflowname=nil, reruntimes=nil, islatestrun=nil, resourcegroupinfolist=nil, errormessage=nil, runresult=nil, innerworkflowtaskrun=nil)
          @TaskName = taskname
          @WorkflowTaskRunId = workflowtaskrunid
          @RunState = runstate
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @TaskId = taskid
          @TaskTypeName = tasktypename
          @TaskVersionId = taskversionid
          @TriggerType = triggertype
          @ResourceGroupId = resourcegroupid
          @ErrorCodeString = errorcodestring
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @CreateUserUin = createuseruin
          @JobId = jobid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DependenceFinishedTime = dependencefinishedtime
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunCostTime = runcosttime
          @WaitTime = waittime
          @IssueTime = issuetime
          @TimeZone = timezone
          @DependOnList = dependonlist
          @RunParams = runparams
          @TaskTypeExtensions = tasktypeextensions
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @RetryTimes = retrytimes
          @WorkflowName = workflowname
          @RerunTimes = reruntimes
          @IsLatestRun = islatestrun
          @ResourceGroupInfoList = resourcegroupinfolist
          @ErrorMessage = errormessage
          @RunResult = runresult
          @InnerWorkflowTaskRun = innerworkflowtaskrun
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          @RunState = params['RunState']
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @TaskId = params['TaskId']
          @TaskTypeName = params['TaskTypeName']
          @TaskVersionId = params['TaskVersionId']
          @TriggerType = params['TriggerType']
          @ResourceGroupId = params['ResourceGroupId']
          @ErrorCodeString = params['ErrorCodeString']
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          @CreateUserUin = params['CreateUserUin']
          @JobId = params['JobId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DependenceFinishedTime = params['DependenceFinishedTime']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunCostTime = params['RunCostTime']
          @WaitTime = params['WaitTime']
          @IssueTime = params['IssueTime']
          @TimeZone = params['TimeZone']
          @DependOnList = params['DependOnList']
          @RunParams = params['RunParams']
          @TaskTypeExtensions = params['TaskTypeExtensions']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          @RetryTimes = params['RetryTimes']
          @WorkflowName = params['WorkflowName']
          @RerunTimes = params['RerunTimes']
          @IsLatestRun = params['IsLatestRun']
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RunResult = params['RunResult']
          unless params['InnerWorkflowTaskRun'].nil?
            @InnerWorkflowTaskRun = InnerWorkflowTaskRun.new
            @InnerWorkflowTaskRun.deserialize(params['InnerWorkflowTaskRun'])
          end
        end
      end

      # 内嵌工作流任务简要信息（目前只有 FOR_EACH 工作流任务该字段才有值）
      class InnerWorkflowTaskBrief < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskTypeName: 任务类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String

        attr_accessor :TaskId, :TaskName, :TaskTypeName

        def initialize(taskid=nil, taskname=nil, tasktypename=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskTypeName = tasktypename
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskTypeName = params['TaskTypeName']
        end
      end

      # 内嵌工作流任务运行详情（仅限 FOR_EACH 任务）
      class InnerWorkflowTaskRun < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 迭代运行列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param IterationCount: 迭代次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IterationCount: Integer
        # @param FailureCount: 失败次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureCount: Integer
        # @param SuccessCount: 成功次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param InnerWorkflowId: 内嵌工作流ID，可通过 ListWorkflows 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerWorkflowId: String
        # @param InnerTaskId: 内嵌任务ID，可通过 ListWorkflowTasks 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTaskId: String
        # @param InnerTaskRunBizEnumInfos: 内嵌任务运行状态数量统计（实例业务枚举键值对列表）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTaskRunBizEnumInfos: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items, :IterationCount, :FailureCount, :SuccessCount, :InnerWorkflowId, :InnerTaskId, :InnerTaskRunBizEnumInfos

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil, iterationcount=nil, failurecount=nil, successcount=nil, innerworkflowid=nil, innertaskid=nil, innertaskrunbizenuminfos=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
          @IterationCount = iterationcount
          @FailureCount = failurecount
          @SuccessCount = successcount
          @InnerWorkflowId = innerworkflowid
          @InnerTaskId = innertaskid
          @InnerTaskRunBizEnumInfos = innertaskrunbizenuminfos
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              innerworkflowtaskruniteration_tmp = InnerWorkflowTaskRunIteration.new
              innerworkflowtaskruniteration_tmp.deserialize(i)
              @Items << innerworkflowtaskruniteration_tmp
            end
          end
          @IterationCount = params['IterationCount']
          @FailureCount = params['FailureCount']
          @SuccessCount = params['SuccessCount']
          @InnerWorkflowId = params['InnerWorkflowId']
          @InnerTaskId = params['InnerTaskId']
          unless params['InnerTaskRunBizEnumInfos'].nil?
            @InnerTaskRunBizEnumInfos = []
            params['InnerTaskRunBizEnumInfos'].each do |i|
              schedulebizenumbrief_tmp = ScheduleBizEnumBrief.new
              schedulebizenumbrief_tmp.deserialize(i)
              @InnerTaskRunBizEnumInfos << schedulebizenumbrief_tmp
            end
          end
        end
      end

      # 内嵌工作流单次迭代运行信息
      class InnerWorkflowTaskRunIteration < TencentCloud::Common::AbstractModel
        # @param WorkflowRunId: <p>内嵌工作流运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param IterationIndex: <p>迭代序号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IterationIndex: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunState: <p>运行状态（参考工作流运行状态枚举）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param WorkflowParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param InnerTaskRun: <p>内嵌工作流内部的任务运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTaskRun: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskRunIterationBrief`

        attr_accessor :WorkflowRunId, :IterationIndex, :RunStartTime, :RunEndTime, :RunState, :RunCostTime, :WorkflowParams, :ErrorCodeString, :InnerTaskRun

        def initialize(workflowrunid=nil, iterationindex=nil, runstarttime=nil, runendtime=nil, runstate=nil, runcosttime=nil, workflowparams=nil, errorcodestring=nil, innertaskrun=nil)
          @WorkflowRunId = workflowrunid
          @IterationIndex = iterationindex
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunState = runstate
          @RunCostTime = runcosttime
          @WorkflowParams = workflowparams
          @ErrorCodeString = errorcodestring
          @InnerTaskRun = innertaskrun
        end

        def deserialize(params)
          @WorkflowRunId = params['WorkflowRunId']
          @IterationIndex = params['IterationIndex']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunState = params['RunState']
          @RunCostTime = params['RunCostTime']
          @WorkflowParams = params['WorkflowParams']
          @ErrorCodeString = params['ErrorCodeString']
          unless params['InnerTaskRun'].nil?
            @InnerTaskRun = InnerWorkflowTaskRunIterationBrief.new
            @InnerTaskRun.deserialize(params['InnerTaskRun'])
          end
        end
      end

      # 内嵌工作流迭代中的任务运行简要信息
      class InnerWorkflowTaskRunIterationBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowTaskRunId: <p>任务运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTaskRunId: String
        # @param IterationIndex: <p>迭代序号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IterationIndex: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunState: <p>运行状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param TaskParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskParams: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String

        attr_accessor :WorkflowTaskRunId, :IterationIndex, :RunStartTime, :RunEndTime, :RunState, :RunCostTime, :TaskParams, :ErrorCodeString

        def initialize(workflowtaskrunid=nil, iterationindex=nil, runstarttime=nil, runendtime=nil, runstate=nil, runcosttime=nil, taskparams=nil, errorcodestring=nil)
          @WorkflowTaskRunId = workflowtaskrunid
          @IterationIndex = iterationindex
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunState = runstate
          @RunCostTime = runcosttime
          @TaskParams = taskparams
          @ErrorCodeString = errorcodestring
        end

        def deserialize(params)
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          @IterationIndex = params['IterationIndex']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunState = params['RunState']
          @RunCostTime = params['RunCostTime']
          @TaskParams = params['TaskParams']
          @ErrorCodeString = params['ErrorCodeString']
        end
      end

      # 内嵌工作流任务运行列表选项（仅限 FOR_EACH 任务使用）
      class InnerWorkflowTaskRunListOption < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param RunStates: <p>迭代运行状态，精确匹配。非必填，多选（多个值之间为 OR 关系）。</p><p>可填 SUCCESS / FAILED 等，具体参考本接口出参 InnerWorkflowTaskRunIteration.RunState 字段返回值。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStates: Array

        attr_accessor :PageNumber, :PageSize, :RunStates

        def initialize(pagenumber=nil, pagesize=nil, runstates=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @RunStates = runstates
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @RunStates = params['RunStates']
        end
      end

      # KillWorkflowRun请求参数结构体
      class KillWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param WorkflowRunIds: <p>待终止的工作流运行ID列表，可通过 ListWorkflowRuns 获取</p>
        # @type WorkflowRunIds: Array
        # @param KillAllRuns: <p>是否终止该工作流下所有未进入终态的运行。非必填，默认 false</p>
        # @type KillAllRuns: Boolean
        # @param OnlyKillPendingRuns: <p>是否只终止处于等待中（Pending）状态的运行。非必填，默认 false</p>
        # @type OnlyKillPendingRuns: Boolean

        attr_accessor :WorkspaceId, :WorkflowId, :WorkflowRunIds, :KillAllRuns, :OnlyKillPendingRuns

        def initialize(workspaceid=nil, workflowid=nil, workflowrunids=nil, killallruns=nil, onlykillpendingruns=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunIds = workflowrunids
          @KillAllRuns = killallruns
          @OnlyKillPendingRuns = onlykillpendingruns
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunIds = params['WorkflowRunIds']
          @KillAllRuns = params['KillAllRuns']
          @OnlyKillPendingRuns = params['OnlyKillPendingRuns']
        end
      end

      # KillWorkflowRun返回参数结构体
      class KillWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>终止工作流的运行响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncActionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncActionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签信息
      class LabelBrief < TencentCloud::Common::AbstractModel
        # @param LabelKey: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelKey: String
        # @param LabelValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelKeyId: 标签名称ID，可通过标签相关接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelKeyId: String
        # @param LabelValueId: 标签值ID，可通过标签相关接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValueId: String

        attr_accessor :LabelKey, :LabelValue, :LabelKeyId, :LabelValueId

        def initialize(labelkey=nil, labelvalue=nil, labelkeyid=nil, labelvalueid=nil)
          @LabelKey = labelkey
          @LabelValue = labelvalue
          @LabelKeyId = labelkeyid
          @LabelValueId = labelvalueid
        end

        def deserialize(params)
          @LabelKey = params['LabelKey']
          @LabelValue = params['LabelValue']
          @LabelKeyId = params['LabelKeyId']
          @LabelValueId = params['LabelValueId']
        end
      end

      # ListWorkflowRuns请求参数结构体
      class ListWorkflowRunsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # @type PageSize: Integer
        # @param WorkflowId: <p>工作流ID，精确匹配。非必填，单值</p>
        # @type WorkflowId: String
        # @param WorkflowNameKeyword: <p>工作流名称关键字，对 WorkflowName 做模糊匹配。非必填，单值</p>
        # @type WorkflowNameKeyword: String
        # @param CreateStartTime: <p>运行创建时间下界，范围匹配（CreateTime &gt;= 本值），单位：毫秒时间戳。<br>非必填，单值，对应出参 WorkflowRun.CreateTime</p>
        # @type CreateStartTime: String
        # @param CreateEndTime: <p>运行创建时间上界，范围匹配（CreateTime &lt;= 本值），单位：毫秒时间戳。<br>非必填，单值，对应出参 WorkflowRun.CreateTime</p>
        # @type CreateEndTime: String
        # @param RunStates: <p>运行状态，精确匹配。非必填，多选（多个值之间为 OR 关系）。</p><p>可填 SUCCESS / FAILED 等，具体参考本接口出参 WorkflowRun.RunState 字段返回值。</p>
        # @type RunStates: Array
        # @param ErrorCodeStrings: <p>错误码，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type ErrorCodeStrings: Array
        # @param RunUserUins: <p>运行人UIN，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type RunUserUins: Array
        # @param LabelKeyIds: <p>标签名称ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelKeyIds: Array
        # @param LabelValueIds: <p>标签值ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelValueIds: Array
        # @param OrderBys: <p>排序条件，多个之间按数组顺序表示优先级。非必填，默认按 CreateTime Desc。<br>可排序字段白名单：CreateTime、EndTime、RunCostTime</p>
        # @type OrderBys: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :WorkflowId, :WorkflowNameKeyword, :CreateStartTime, :CreateEndTime, :RunStates, :ErrorCodeStrings, :RunUserUins, :LabelKeyIds, :LabelValueIds, :OrderBys

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, workflowid=nil, workflownamekeyword=nil, createstarttime=nil, createendtime=nil, runstates=nil, errorcodestrings=nil, runuseruins=nil, labelkeyids=nil, labelvalueids=nil, orderbys=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkflowId = workflowid
          @WorkflowNameKeyword = workflownamekeyword
          @CreateStartTime = createstarttime
          @CreateEndTime = createendtime
          @RunStates = runstates
          @ErrorCodeStrings = errorcodestrings
          @RunUserUins = runuseruins
          @LabelKeyIds = labelkeyids
          @LabelValueIds = labelvalueids
          @OrderBys = orderbys
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkflowId = params['WorkflowId']
          @WorkflowNameKeyword = params['WorkflowNameKeyword']
          @CreateStartTime = params['CreateStartTime']
          @CreateEndTime = params['CreateEndTime']
          @RunStates = params['RunStates']
          @ErrorCodeStrings = params['ErrorCodeStrings']
          @RunUserUins = params['RunUserUins']
          @LabelKeyIds = params['LabelKeyIds']
          @LabelValueIds = params['LabelValueIds']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # ListWorkflowRuns返回参数结构体
      class ListWorkflowRunsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>工作流运行列表响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkflowRunsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkflowRunsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWorkflowRunsRsp
      class ListWorkflowRunsRsp < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 工作流运行列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param BizStateEnumInfos: 工作流运行状态数量统计。
        # 统计口径为当前筛选条件下的全量数据，不受 PageNumber / PageSize 影响
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizStateEnumInfos: Array
        # @param BizErrorCodeEnumInfos: 工作流运行错误码数量统计。
        # 统计口径为当前筛选条件下的全量数据，不受 PageNumber / PageSize 影响
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizErrorCodeEnumInfos: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items, :BizStateEnumInfos, :BizErrorCodeEnumInfos

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil, bizstateenuminfos=nil, bizerrorcodeenuminfos=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
          @BizStateEnumInfos = bizstateenuminfos
          @BizErrorCodeEnumInfos = bizerrorcodeenuminfos
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflowrun_tmp = WorkflowRun.new
              workflowrun_tmp.deserialize(i)
              @Items << workflowrun_tmp
            end
          end
          unless params['BizStateEnumInfos'].nil?
            @BizStateEnumInfos = []
            params['BizStateEnumInfos'].each do |i|
              schedulebizenumbrief_tmp = ScheduleBizEnumBrief.new
              schedulebizenumbrief_tmp.deserialize(i)
              @BizStateEnumInfos << schedulebizenumbrief_tmp
            end
          end
          unless params['BizErrorCodeEnumInfos'].nil?
            @BizErrorCodeEnumInfos = []
            params['BizErrorCodeEnumInfos'].each do |i|
              schedulebizenumbrief_tmp = ScheduleBizEnumBrief.new
              schedulebizenumbrief_tmp.deserialize(i)
              @BizErrorCodeEnumInfos << schedulebizenumbrief_tmp
            end
          end
        end
      end

      # ListWorkflowTaskRuns请求参数结构体
      class ListWorkflowTaskRunsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param TaskId: <p>任务ID，可通过 ListWorkflowTasks 获取。非必填，精确匹配。与 WorkflowRunId 至少传一个：仅传 TaskId 时查询该任务的全部运行历史。</p>
        # @type TaskId: String
        # @param WorkflowRunId: <p>工作流运行ID，可通过 ListWorkflowRuns 获取。非必填，精确匹配。与 TaskId 至少传一个：仅传 WorkflowRunId 时查询该次工作流运行下的全部任务运行。</p>
        # @type WorkflowRunId: String
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # @type PageSize: Integer

        attr_accessor :WorkspaceId, :TaskId, :WorkflowRunId, :PageNumber, :PageSize

        def initialize(workspaceid=nil, taskid=nil, workflowrunid=nil, pagenumber=nil, pagesize=nil)
          @WorkspaceId = workspaceid
          @TaskId = taskid
          @WorkflowRunId = workflowrunid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @TaskId = params['TaskId']
          @WorkflowRunId = params['WorkflowRunId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListWorkflowTaskRuns返回参数结构体
      class ListWorkflowTaskRunsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询工作流任务历史运行列表响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkflowTaskRunsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkflowTaskRunsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作流任务运行列表响应。
      class ListWorkflowTaskRunsRsp < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 任务运行历史列表
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
              workflowtaskrun_tmp = WorkflowTaskRun.new
              workflowtaskrun_tmp.deserialize(i)
              @Items << workflowtaskrun_tmp
            end
          end
        end
      end

      # ListWorkflows请求参数结构体
      class ListWorkflowsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # @type PageSize: Integer
        # @param WorkflowNameKeyword: <p>工作流名称关键字，对 WorkflowName 做模糊匹配。非必填，单值</p>
        # @type WorkflowNameKeyword: String
        # @param WorkflowNames: <p>工作流名称，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type WorkflowNames: Array
        # @param WorkflowIds: <p>工作流ID，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type WorkflowIds: Array
        # @param RunUserUins: <p>工作流运行人UIN，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type RunUserUins: Array
        # @param LabelKeyIds: <p>标签名称ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelKeyIds: Array
        # @param LabelValueIds: <p>标签值ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelValueIds: Array
        # @param QuickSelectionType: <p>快速筛选类型。非必填，单值</p><p>对齐老云 API（wedata/2025-10-10）文档示例值：</p><ul><li>MY_FAVORITE：我收藏的</li><li>MY_OWNER：我负责的</li><li>MY_AUTHORITY：我有权限</li><li>WorkflowId：支持多个工作流ID筛选</li></ul><p>后端实现现状：当前仅 MY_FAVORITE 生效（设置 favoriteUserUin 过滤当前用户收藏），MY_OWNER / MY_AUTHORITY 暂未在 Service 层实现，传入会被忽略（按全量返回）。</p>
        # @type QuickSelectionType: String
        # @param OrderBys: <p>排序条件，多个之间按数组顺序表示优先级。非必填。<br>可排序字段白名单：CreateTime</p>
        # @type OrderBys: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :WorkflowNameKeyword, :WorkflowNames, :WorkflowIds, :RunUserUins, :LabelKeyIds, :LabelValueIds, :QuickSelectionType, :OrderBys

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, workflownamekeyword=nil, workflownames=nil, workflowids=nil, runuseruins=nil, labelkeyids=nil, labelvalueids=nil, quickselectiontype=nil, orderbys=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkflowNameKeyword = workflownamekeyword
          @WorkflowNames = workflownames
          @WorkflowIds = workflowids
          @RunUserUins = runuseruins
          @LabelKeyIds = labelkeyids
          @LabelValueIds = labelvalueids
          @QuickSelectionType = quickselectiontype
          @OrderBys = orderbys
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkflowNameKeyword = params['WorkflowNameKeyword']
          @WorkflowNames = params['WorkflowNames']
          @WorkflowIds = params['WorkflowIds']
          @RunUserUins = params['RunUserUins']
          @LabelKeyIds = params['LabelKeyIds']
          @LabelValueIds = params['LabelValueIds']
          @QuickSelectionType = params['QuickSelectionType']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # ListWorkflows返回参数结构体
      class ListWorkflowsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询工作流列表响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkflowsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkflowsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWorkflowsRsp
      class ListWorkflowsRsp < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 工作流列表
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
              workflowbrief_tmp = WorkflowBrief.new
              workflowbrief_tmp.deserialize(i)
              @Items << workflowbrief_tmp
            end
          end
        end
      end

      # 监控指标配置
      class MonitorMetricBrief < TencentCloud::Common::AbstractModel
        # @param MonitorMetricId: 监控指标 ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetricId: String
        # @param AlarmMonitorType: 告警的监控对象类型，如工作流、任务等，当前支持 1. WORKFLOW 2. TASK
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmMonitorType: String
        # @param Metrics: 监控指标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array

        attr_accessor :MonitorMetricId, :AlarmMonitorType, :Metrics

        def initialize(monitormetricid=nil, alarmmonitortype=nil, metrics=nil)
          @MonitorMetricId = monitormetricid
          @AlarmMonitorType = alarmmonitortype
          @Metrics = metrics
        end

        def deserialize(params)
          @MonitorMetricId = params['MonitorMetricId']
          @AlarmMonitorType = params['AlarmMonitorType']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              monitormetricitem_tmp = MonitorMetricItem.new
              monitormetricitem_tmp.deserialize(i)
              @Metrics << monitormetricitem_tmp
            end
          end
        end
      end

      # 单个监控指标
      class MonitorMetricItem < TencentCloud::Common::AbstractModel
        # @param MetricType: 监控指标类型,有三种类型：1. RUN_DURATION（运行时长）2. WAIT_DURATION（等待时长）3. COMPLETION_TIME（完成时间）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricType: String
        # @param WarningThreshold: 警告阈值，单位为毫秒级别，对于COMPLETION_TIME:从当日时间点00:00起算
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarningThreshold: String
        # @param TimeoutThreshold: 超时阈值，单位为毫秒级别，对于COMPLETION_TIME:从当日时间点00:00起算
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutThreshold: String

        attr_accessor :MetricType, :WarningThreshold, :TimeoutThreshold

        def initialize(metrictype=nil, warningthreshold=nil, timeoutthreshold=nil)
          @MetricType = metrictype
          @WarningThreshold = warningthreshold
          @TimeoutThreshold = timeoutthreshold
        end

        def deserialize(params)
          @MetricType = params['MetricType']
          @WarningThreshold = params['WarningThreshold']
          @TimeoutThreshold = params['TimeoutThreshold']
        end
      end

      # 排序字段
      class OrderBy < TencentCloud::Common::AbstractModel
        # @param Direction: 排序方向，Asc（升序）或 Desc（降序），大小写不敏感
        # @type Direction: String
        # @param Name: 排序字段名
        # @type Name: String

        attr_accessor :Direction, :Name

        def initialize(direction=nil, name=nil)
          @Direction = direction
          @Name = name
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Name = params['Name']
        end
      end

      # 参数键值对
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param ParamId: 参数ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamId: String
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValue: String

        attr_accessor :ParamId, :ParamKey, :ParamValue

        def initialize(paramid=nil, paramkey=nil, paramvalue=nil)
          @ParamId = paramid
          @ParamKey = paramkey
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamId = params['ParamId']
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
        end
      end

      # RerunWorkflowRun请求参数结构体
      class RerunWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param WorkflowRunId: <p>工作流运行ID，可通过 ListWorkflowRuns 获取。必填</p>
        # @type WorkflowRunId: String
        # @param RunType: <p>运行类型。必填。取值：1 普通运行，2 高级运行</p>
        # @type RunType: Integer
        # @param AdvancedParams: <p>运行类型为高级运行时填写的自定义运行参数</p>
        # @type AdvancedParams: Array
        # @param TaskIds: <p>本次需要重跑指定的任务ID集合，可通过 ListWorkflowTasks 获取，不传默认重跑该工作流下所有任务</p>
        # @type TaskIds: Array

        attr_accessor :WorkspaceId, :WorkflowId, :WorkflowRunId, :RunType, :AdvancedParams, :TaskIds

        def initialize(workspaceid=nil, workflowid=nil, workflowrunid=nil, runtype=nil, advancedparams=nil, taskids=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @RunType = runtype
          @AdvancedParams = advancedparams
          @TaskIds = taskids
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @RunType = params['RunType']
          unless params['AdvancedParams'].nil?
            @AdvancedParams = []
            params['AdvancedParams'].each do |i|
              taskschedulingparameterbrief_tmp = TaskSchedulingParameterBrief.new
              taskschedulingparameterbrief_tmp.deserialize(i)
              @AdvancedParams << taskschedulingparameterbrief_tmp
            end
          end
          @TaskIds = params['TaskIds']
        end
      end

      # RerunWorkflowRun返回参数结构体
      class RerunWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>重跑工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncActionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncActionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 资源组信息
      class ResourceGroupInfo < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param ResourceGroupStatus: 资源组状态
        # COMPUTE_RESOURCE_STATUS_UNSPECIFIED 未指定
        # COMPUTE_RESOURCE_STATUS_PENDING_CREATE 待创建
        # COMPUTE_RESOURCE_STATUS_CREATING 创建中
        # COMPUTE_RESOURCE_STATUS_RUNNING 运行中
        # COMPUTE_RESOURCE_STATUS_STOPPED 已停止
        # COMPUTE_RESOURCE_STATUS_STOPPING 停止中
        # COMPUTE_RESOURCE_STATUS_STARTING 启动中
        # COMPUTE_RESOURCE_STATUS_UPDATING 更新中
        # COMPUTE_RESOURCE_STATUS_DELETING 删除中
        # COMPUTE_RESOURCE_STATUS_DELETED 已删除
        # COMPUTE_RESOURCE_STATUS_FAILED  失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupStatus: String

        attr_accessor :ResourceGroupId, :ResourceGroupName, :ResourceGroupStatus

        def initialize(resourcegroupid=nil, resourcegroupname=nil, resourcegroupstatus=nil)
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @ResourceGroupStatus = resourcegroupstatus
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          @ResourceGroupStatus = params['ResourceGroupStatus']
        end
      end

      # 单个操作项的执行结果。 由 RunWorkflow / RerunWorkflowRun / KillWorkflowRun 共用： RunWorkflow—— WorkflowId / WorkflowName 有值，WorkflowRunId 为空 RerunWorkflowRun —— WorkflowId / WorkflowName / WorkflowRunId 均有值 KillWorkflowRun  —— WorkflowId / WorkflowName / WorkflowRunId 均有值
      class RunActionBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param RunActionId: 操作动作ID，用于追踪具体的执行动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunActionId: String
        # @param ErrorMessage: 失败错误信息，操作失败时返回具体的错误描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param OpStatus: 操作状态，true 表示成功，false 表示失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpStatus: Boolean
        # @param WorkflowRunId: 工作流运行ID。重跑 / 终止场景返回被操作的运行ID；运行工作流场景为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String

        attr_accessor :WorkflowId, :WorkflowName, :RunActionId, :ErrorMessage, :OpStatus, :WorkflowRunId

        def initialize(workflowid=nil, workflowname=nil, runactionid=nil, errormessage=nil, opstatus=nil, workflowrunid=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @RunActionId = runactionid
          @ErrorMessage = errormessage
          @OpStatus = opstatus
          @WorkflowRunId = workflowrunid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @RunActionId = params['RunActionId']
          @ErrorMessage = params['ErrorMessage']
          @OpStatus = params['OpStatus']
          @WorkflowRunId = params['WorkflowRunId']
        end
      end

      # RunWorkflow请求参数结构体
      class RunWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param RunType: <p>运行类型。必填。取值：1 普通运行，2 高级运行</p>
        # @type RunType: Integer
        # @param AdvancedParams: <p>运行类型为高级运行时填写的自定义运行参数</p>
        # @type AdvancedParams: Array
        # @param TaskIds: <p>本次需要运行指定的任务ID集合，可通过 ListWorkflowTasks 获取，不传默认运行该工作流下所有任务</p>
        # @type TaskIds: Array
        # @param IdempotencyToken: <p>幂等令牌。非必填，相同令牌的重复请求只会触发一次运行</p>
        # @type IdempotencyToken: String

        attr_accessor :WorkspaceId, :WorkflowId, :RunType, :AdvancedParams, :TaskIds, :IdempotencyToken

        def initialize(workspaceid=nil, workflowid=nil, runtype=nil, advancedparams=nil, taskids=nil, idempotencytoken=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @RunType = runtype
          @AdvancedParams = advancedparams
          @TaskIds = taskids
          @IdempotencyToken = idempotencytoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @RunType = params['RunType']
          unless params['AdvancedParams'].nil?
            @AdvancedParams = []
            params['AdvancedParams'].each do |i|
              taskschedulingparameterbrief_tmp = TaskSchedulingParameterBrief.new
              taskschedulingparameterbrief_tmp.deserialize(i)
              @AdvancedParams << taskschedulingparameterbrief_tmp
            end
          end
          @TaskIds = params['TaskIds']
          @IdempotencyToken = params['IdempotencyToken']
        end
      end

      # RunWorkflow返回参数结构体
      class RunWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>运行工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncActionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncActionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 枚举项统计（如运行状态、错误码的数量分布）
      class ScheduleBizEnumBrief < TencentCloud::Common::AbstractModel
        # @param LabelKey: 枚举标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelKey: String
        # @param LabelValue: 枚举标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param Count: 枚举项统计数量
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

      # 任务重试策略
      class TaskRetryStrategy < TencentCloud::Common::AbstractModel
        # @param MaxRetryTimes: 最多重试次数，默认3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetryTimes: Integer
        # @param RetryBetweenWaitTime: 重试之间等待时间，默认5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryBetweenWaitTime: Integer
        # @param RetryBetweenWaitTimeUnit: 重试之间等待时间单位
        # 毫秒：MILLISECOND秒：SECOND分钟（默认）：MINUTE小时：HOUR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryBetweenWaitTimeUnit: String
        # @param TaskRunFailureRetrySwitch: 任务运行失败时重试开关，默认为true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRunFailureRetrySwitch: Boolean
        # @param TaskRunTimeoutRetrySwitch: 任务运行超时时重试开关，默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRunTimeoutRetrySwitch: Boolean

        attr_accessor :MaxRetryTimes, :RetryBetweenWaitTime, :RetryBetweenWaitTimeUnit, :TaskRunFailureRetrySwitch, :TaskRunTimeoutRetrySwitch

        def initialize(maxretrytimes=nil, retrybetweenwaittime=nil, retrybetweenwaittimeunit=nil, taskrunfailureretryswitch=nil, taskruntimeoutretryswitch=nil)
          @MaxRetryTimes = maxretrytimes
          @RetryBetweenWaitTime = retrybetweenwaittime
          @RetryBetweenWaitTimeUnit = retrybetweenwaittimeunit
          @TaskRunFailureRetrySwitch = taskrunfailureretryswitch
          @TaskRunTimeoutRetrySwitch = taskruntimeoutretryswitch
        end

        def deserialize(params)
          @MaxRetryTimes = params['MaxRetryTimes']
          @RetryBetweenWaitTime = params['RetryBetweenWaitTime']
          @RetryBetweenWaitTimeUnit = params['RetryBetweenWaitTimeUnit']
          @TaskRunFailureRetrySwitch = params['TaskRunFailureRetrySwitch']
          @TaskRunTimeoutRetrySwitch = params['TaskRunTimeoutRetrySwitch']
        end
      end

      # 任务运行条件规则
      class TaskRunConditionRule < TencentCloud::Common::AbstractModel
        # @param UpstreamTaskId: 上游任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamTaskId: String
        # @param UpstreamTaskName: 上游任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamTaskName: String
        # @param AllowedStates: 任务可运行条件
        # 支持的状态值： - SUCCESS: 成功 - FAILED: 失败 - UPSTREAM_FAILED: 上游失败 - EXCLUDED: 排除运行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowedStates: Array

        attr_accessor :UpstreamTaskId, :UpstreamTaskName, :AllowedStates

        def initialize(upstreamtaskid=nil, upstreamtaskname=nil, allowedstates=nil)
          @UpstreamTaskId = upstreamtaskid
          @UpstreamTaskName = upstreamtaskname
          @AllowedStates = allowedstates
        end

        def deserialize(params)
          @UpstreamTaskId = params['UpstreamTaskId']
          @UpstreamTaskName = params['UpstreamTaskName']
          @AllowedStates = params['AllowedStates']
        end
      end

      # 任务调度参数（运行/重跑工作流时的自定义参数）
      class TaskSchedulingParameterBrief < TencentCloud::Common::AbstractModel
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

      # ### `TaskTypePropertyList` 中 `TaskTypeProperty` 针对不同任务类型需要填写不同的 key 和 value；

      # ### 1. NOTEBOOK 任务类型

      # #### 属性配置

      # | 属性键       | 属性名称          | 描述                               | 是否必需                |
      # | ------------ | ----------------- | ---------------------------------- | ----------------------- |
      # | Source       | 来源              | 可填2或5,来源 2:GIT, 5:工作空间    | 是                      |
      # | NotebookPath | Notebook 相对路径 | Source为5时，需从（ListFiles）获取 | Source 为 2、5 时，必填 |

      # ### 2. DATA_INTEGRATION 任务类型

      # #### 属性配置

      # | 属性键                | 属性名称             | 描述                                    | 是否必需 |
      # | --------------------- | -------------------- | --------------------------------------- | -------- |
      # | Source                | 来源                 | 必填:4,表示来源为COS                    | 是       |
      # | TemplatePath          | 数据接入任务配置路径 | 需从（ListBatchIngestionTasks）接口获取 | 是       |
      # | DataIntegrationTaskId | 数据接入任务ID       | 需从（ListBatchIngestionTasks）接口获取 | 是       |

      # ### 3. RUN_WORKFLOW 任务类型

      # #### 属性配置

      # | 属性键     | 属性名称   | 描述                          | 是否必需 |
      # | ---------- | ---------- | ----------------------------- | -------- |
      # | WorkflowId | 选择工作流 | 需从（ListWorkflows）接口获取 | 是       |

      # ### 4. SQL 任务类型

      # #### 属性配置

      # | 属性键          | 属性名称    | 描述                                          | 是否必需             |
      # | --------------- | ----------- | --------------------------------------------- | -------------------- |
      # | Source          | 来源        | 可填2或5,来源 2:GIT, 5:工作空间               | 是                   |
      # | SqlPath         | SQL脚本路径 | SQL脚本路径                                   | Source 为 2 时，必填 |
      # | CodeFileName    | 文件名称    | Source为5时，需从（ListReleasedQueries）接口获取 | 否                |
      # | CodeFileId      | 文件ID      | Source为5时，需从（ListReleasedQueries）接口获取 | Source 为 5 时，必填 |
      # | CodeFileVersion | 文件版本    | Source为5时，需从（ListReleasedQueries）接口获取 | 否                |

      # ### 5. PYTHON 任务类型

      # #### 属性配置

      # | 属性键     | 属性名称       | 描述                                   | 是否必需 |
      # | ---------- | -------------- | -------------------------------------- | -------- |
      # | Source     | 来源           | 可填2或5,来源 2:GIT, 5:工作空间        | 是       |
      # | SourcePath | Python脚本路径 | Source为5时，需从（ListFiles）接口获取 | 是       |

      # ### 6. DATA_QUALITY（质量监控）任务类型

      # #### 属性配置

      # | 属性键         | 属性名称         | 描述                                          | 是否必需 |
      # | -------------- | ---------------- | --------------------------------------------- | -------- |
      # | Source         | 来源             | 必填:4,表示来源为COS                          | 是       |
      # | TemplatePath   | 质量监控配置路径 | 需从（ListDataQualityTaskSummaries）接口获取  | 是       |
      # | SourceUniqueId | 质量监控ID       | 需从（ListDataQualityTaskSummaries）接口获取  | 是       |
      # | ExecutionType  | 执行类型         | 必填:SQL                                      | 是       |
      # | AfterAspect    | 质量任务后置切面 | 需从（ListDataQualityTaskSummaries）接口获取  | 否       |
      # | BeforeAspect   | 质量任务前置切面 | 需从（ListDataQualityTaskSummaries）接口获取  | 否       |

      # ### 7. IF_ELSE 任务类型

      # #### 属性配置

      # | 属性键     | 属性名称 | 描述            | 是否必需 |
      # | ---------- | -------- | --------------- | -------- |
      # | Conditions | 条件列表 | IF-ELSE条件配置 | 是       |

      # ### 8. FOR_EACH 任务类型

      # #### 属性配置

      # | 属性键         | 属性名称     | 描述                               | 是否必需 |
      # | -------------- | ------------ | ---------------------------------- | -------- |
      # | MaxConcurrency | 最大并发数   | 最大并发数，默认为1                | 是       |
      # | MaxIterations  | 最大迭代次数 | 最大迭代次数，默认1000             | 是       |
      # | LoopDataArray  | 循环参数     | JSON格式的数组，或 {{}} 包裹的变量 | 是       |

      # ### 9. RAY_JOB（Ray作业）任务类型

      # #### 属性配置

      # | 属性键         | 属性名称             | 描述                               | 是否必需 |
      # | -------------- | -------------------- | ---------------------------------- | -------- |
      # | RunMode        | 运行方式             | 运行方式，取值：SERVERLESS（按需拉起集群）/ DEDICATED（提交到指定集群）。默认 DEDICATED | 是 |
      # | Entrypoint     | 入口指令             | 入口指令                           | 是       |
      # | JobConfig      | 任务配置             | 如存储配置 + 计算环境。传值请参考前端页面保存Ray作业任务时调用UpdateWorkflow。Image请调用DLC接口ListImages接口Url字段获取 | RunMode 为 SERVERLESS 时，必填 |
      # | ClusterId      | Ray 集群             | 需从所选计算资源下已配置的 Ray 集群（引擎）列表中选择，可通过计算资源相关接口获取 | RunMode 为 DEDICATED 时，必填 |
      # | Source         | 任务来源             | 任务来源，取值：1（本地文件）/ 5（工作空间） | 是 |
      # | JobPackage     | 任务来源文件地址     | 任务来源路径：Source 为 1 时存本地上传文件的 COS 地址（支持 .zip / .py 文件）；Source 为 5 时存所选工作空间文件/文件夹路径 | 是 |
      # | JobPackageName | 任务来源本地文件名   | 任务来源本地文件名                 | Source 为 1 时，必填 |
      # | CodeFileId     | 代码文件ID           | Source 为 5 时，需从工作空间文件选择组件获取所选文件/文件夹对应的ID | Source 为 5 时，必填 |
      # | WorkspaceEntryType | 工作空间入口类型 | Source 为 5 时，所选工作空间条目的类型：FILE（文件）/ FOLDER（文件夹），由前端选择器随选择目标自动写入 | Source 为 5 时，必填 |

      # ### RuntimePropertyList
      # <p>任务运行参数列表，用于配置任务运行时的计算资源，与 TaskTypePropertyList（任务扩展属性）区分：TaskTypePropertyList 承载任务自身的业务配置（如脚本来源、路径等），RuntimePropertyList 承载任务运行时的资源配置（如资源模式、CU规格、Executor数量等）。</p>
      # <p>主要适用于需要配置计算资源的任务类型（如 NOTEBOOK、PYTHON）。</p>
      # <p>具体可填写的属性键以任务类型属性配置为准，可通过 ListWorkflowTaskTypeProperties 接口获取（propertyType 为 RUNTIME 的属性项）。常见运行参数键说明：</p>

      # | 属性键 | 属性名称 | 描述 | 必填性（联动条件满足时） | 默认值 |
      # | ---------- | -------------- | ---------------------------------- | -------- | -------- |
      # | ResourceMode | 资源模式 | 1：分布式；2：单节点 | 是 | 1 |
      # | ConfigType | 配置类型 | DEFAULT：默认配置；CUSTOM：自定义配置 | 是 | DEFAULT |
      # | ExecutorAllocation | Executor分配模式 | DYNAMIC：动态分配；FIXED：固定分配 | 是（分布式且自定义配置时） | DYNAMIC |
      # | ExecutorMinNum | Executor最小个数 | 正整数 | 是（动态分配时） | 1 |
      # | ExecutorMaxNum | Executor最大个数 | 正整数 | 是（动态分配时） | 1 |
      # | ExecutorFixedNum | Executor固定个数 | 正整数 | 否（固定分配时） | - |
      # | ExecutorCU | Executor资源规格 | small / medium / large / xlarge / 4xlarge | 否（分布式且自定义配置时） | - |
      # | DriverCU | Driver资源规格 | small / medium / large / xlarge / 4xlarge | 否（分布式且自定义配置时 或者单节点时） | - |
      # | ExecutorGPU | Executor GPU数量 | 0表示不使用GPU | 否（分布式且自定义配置时） | - |
      # | DriverGPU | Driver GPU数量 | 0表示不使用GPU | 否（分布式且自定义配置时） | - |
      # | Style | 配置样式 | UI / JSON | 是（自定义配置时） | UI |

      # <p>补充说明：</p>
      # <p>1. "必填性"指属性配置中的必填标记，仅当属性联动条件（如 ResourceMode=1 且 ConfigType=CUSTOM）满足时才触发必填校验；</p>
      # <p>2. ConfigType 为 DEFAULT（默认配置）时，需调用 ListComputeResourceOptions 接口获取所选计算资源的默认规格值，并将其填充到运行参数（ExecutorCU、DriverCU、ExecutorMinNum、ExecutorMaxNum 等）后传入；ConfigType 为 CUSTOM（自定义配置）时，运行参数由调用方自行指定；</p>
      class TaskType < TencentCloud::Common::AbstractModel
        # @param TaskTypeName: <p>任务类型：SQL：用于执行SQL查询和数据处理操作；DATA_INTEGRATION：用于离线数据接入操作；NOTEBOOK：用于运行Notebook脚本；RUN_WORKFLOW：用于执行嵌套工作流；PYTHON：用于运行Python脚本；RAY_JOB：用于运行Ray作业；DATA_QUALITY：用于数据质量监控；IF_ELSE：用于条件分支判断；FOR_EACH：用于循环遍历执行；</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param Notebook: <p>Notebook 类型扩展信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notebook: :class:`Tencentcloud::Databuddy.v20260715.models.TaskTypeNotebookExt`
        # @param TaskTypePropertyList: <p>任务扩展属性列表，具体填写参考 ListWorkflowTaskTypeProperties 接口</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypePropertyList: Array
        # @param RuntimePropertyList: <p>运行时属性列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimePropertyList: Array

        attr_accessor :TaskTypeName, :Notebook, :TaskTypePropertyList, :RuntimePropertyList

        def initialize(tasktypename=nil, notebook=nil, tasktypepropertylist=nil, runtimepropertylist=nil)
          @TaskTypeName = tasktypename
          @Notebook = notebook
          @TaskTypePropertyList = tasktypepropertylist
          @RuntimePropertyList = runtimepropertylist
        end

        def deserialize(params)
          @TaskTypeName = params['TaskTypeName']
          unless params['Notebook'].nil?
            @Notebook = TaskTypeNotebookExt.new
            @Notebook.deserialize(params['Notebook'])
          end
          unless params['TaskTypePropertyList'].nil?
            @TaskTypePropertyList = []
            params['TaskTypePropertyList'].each do |i|
              tasktypeproperty_tmp = TaskTypeProperty.new
              tasktypeproperty_tmp.deserialize(i)
              @TaskTypePropertyList << tasktypeproperty_tmp
            end
          end
          unless params['RuntimePropertyList'].nil?
            @RuntimePropertyList = []
            params['RuntimePropertyList'].each do |i|
              tasktypeproperty_tmp = TaskTypeProperty.new
              tasktypeproperty_tmp.deserialize(i)
              @RuntimePropertyList << tasktypeproperty_tmp
            end
          end
        end
      end

      # Notebook 类型任务扩展
      class TaskTypeNotebookExt < TencentCloud::Common::AbstractModel
        # @param Source: 脚本来源。取值：SCRIPT_SOURCE_LOCAL（本地）/ SCRIPT_SOURCE_GIT（Git 仓库）/
        # SCRIPT_SOURCE_CFS（CFS 文件系统）/ SCRIPT_SOURCE_COS（COS 对象存储）/
        # SCRIPT_SOURCE_WORKSPACE（工作空间）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param DisplayPath: 前端显示使用，对执行平台无意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayPath: String
        # @param NotebookPath: Notebook 相对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookPath: String
        # @param NotebookAbsolutePath: Notebook 绝对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookAbsolutePath: String

        attr_accessor :Source, :DisplayPath, :NotebookPath, :NotebookAbsolutePath

        def initialize(source=nil, displaypath=nil, notebookpath=nil, notebookabsolutepath=nil)
          @Source = source
          @DisplayPath = displaypath
          @NotebookPath = notebookpath
          @NotebookAbsolutePath = notebookabsolutepath
        end

        def deserialize(params)
          @Source = params['Source']
          @DisplayPath = params['DisplayPath']
          @NotebookPath = params['NotebookPath']
          @NotebookAbsolutePath = params['NotebookAbsolutePath']
        end
      end

      # 任务类型属性键值对
      class TaskTypeProperty < TencentCloud::Common::AbstractModel
        # @param PropertyKey: 属性名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PropertyKey: String
        # @param PropertyValue: 属性值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PropertyValue: String

        attr_accessor :PropertyKey, :PropertyValue

        def initialize(propertykey=nil, propertyvalue=nil)
          @PropertyKey = propertykey
          @PropertyValue = propertyvalue
        end

        def deserialize(params)
          @PropertyKey = params['PropertyKey']
          @PropertyValue = params['PropertyValue']
        end
      end

      # UnbindWorkflowBundle请求参数结构体
      class UnbindWorkflowBundleRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String

        attr_accessor :WorkspaceId, :WorkflowId

        def initialize(workspaceid=nil, workflowid=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # UnbindWorkflowBundle返回参数结构体
      class UnbindWorkflowBundleResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>解绑工作流Bundle信息响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UnbindWorkflowBundleRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UnbindWorkflowBundleRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UnbindWorkflowBundleRsp
      class UnbindWorkflowBundleRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作状态，true 表示成功
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

      # UpdateFile请求参数结构体
      class UpdateFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID。来源：CreateFile / ListFiles / GetFile 接口返回的 FileId</p>
        # @type FileId: String
        # @param FileConfig: <p>文件运行配置。不传则不更新配置</p>
        # @type FileConfig: :class:`Tencentcloud::Databuddy.v20260715.models.FileConfig`
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String
        # @param BundleId: <p>绑定的 BundleId。来源：ListBundles 接口返回的 BundleId</p>
        # @type BundleId: String
        # @param BundleInfo: <p>绑定的 BundleInfo，JSON 字符串</p>
        # @type BundleInfo: String
        # @param Storage: <p>文件内容。不传则不更新内容</p>
        # @type Storage: :class:`Tencentcloud::Databuddy.v20260715.models.FileStorage`
        # @param FileName: <p>目标文件名，非空且与当前文件名不同时执行 rename 动作。长度不超过 SCRIPT_NAME_MAX_LENGTH，禁止以 . 或 .. 开头/结尾，禁止空格、双点、控制字符及 Linux 保留名（参考 docs/linux_filename_rules.md）。与 ExtensionType 一起校验后缀合法性</p>
        # @type FileName: String
        # @param ParentFolderPath: <p>目标父目录路径，非空时执行 move 动作。根目录传 /；与 FileName 可同时出现，语义为「移动+重命名」。与 CreateFile 的 ParentFolderPath 保持一致</p>
        # @type ParentFolderPath: String
        # @param TargetFileType: <p>目标父目录的 FileType。取值：FOLDER、GIT_FOLDER。仅当 ParentFolderPath 非空时使用；缺省时按解析出的父目录实际类型处理</p>
        # @type TargetFileType: String
        # @param UpdateAction: <p>动作类型（必填，未来版本会强制校验）。取值：1 = UPDATE_CONTENT（仅更新 FileConfig / Storage / Bundle*，禁止传 FileName / ParentFolderPath / TargetFileType）；2 = RENAME（仅重命名，必须传 FileName，禁止传 ParentFolderPath / FileConfig / Storage / Bundle*）；3 = MOVE（仅移动，必须传 ParentFolderPath，禁止传 FileName / FileConfig / Storage / Bundle*）。参数互斥校验失败会返回 ParamIllegal 错误</p>
        # @type UpdateAction: Integer

        attr_accessor :WorkspaceId, :FileId, :FileConfig, :FileType, :BundleId, :BundleInfo, :Storage, :FileName, :ParentFolderPath, :TargetFileType, :UpdateAction

        def initialize(workspaceid=nil, fileid=nil, fileconfig=nil, filetype=nil, bundleid=nil, bundleinfo=nil, storage=nil, filename=nil, parentfolderpath=nil, targetfiletype=nil, updateaction=nil)
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileConfig = fileconfig
          @FileType = filetype
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @Storage = storage
          @FileName = filename
          @ParentFolderPath = parentfolderpath
          @TargetFileType = targetfiletype
          @UpdateAction = updateaction
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          unless params['FileConfig'].nil?
            @FileConfig = FileConfig.new
            @FileConfig.deserialize(params['FileConfig'])
          end
          @FileType = params['FileType']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['Storage'].nil?
            @Storage = FileStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @FileName = params['FileName']
          @ParentFolderPath = params['ParentFolderPath']
          @TargetFileType = params['TargetFileType']
          @UpdateAction = params['UpdateAction']
        end
      end

      # UpdateFile返回参数结构体
      class UpdateFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.FileInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FileInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkflow请求参数结构体
      class UpdateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>待更新的工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param FieldToRemoveList: <p>需要清空的字段名列表，用于将指定字段重置为空</p>
        # @type FieldToRemoveList: Array
        # @param NewSetting: <p>更新后的工作流配置，仅传入需要变更的部分即可</p>
        # @type NewSetting: :class:`Tencentcloud::Databuddy.v20260715.models.Workflow`

        attr_accessor :WorkspaceId, :WorkflowId, :FieldToRemoveList, :NewSetting

        def initialize(workspaceid=nil, workflowid=nil, fieldtoremovelist=nil, newsetting=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @FieldToRemoveList = fieldtoremovelist
          @NewSetting = newsetting
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @FieldToRemoveList = params['FieldToRemoveList']
          unless params['NewSetting'].nil?
            @NewSetting = Workflow.new
            @NewSetting.deserialize(params['NewSetting'])
          end
        end
      end

      # UpdateWorkflow返回参数结构体
      class UpdateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>更新工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkflowRsp
      class UpdateWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param Status: 更新状态，true 表示成功
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

      # 工作流完整配置
      class Workflow < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param BaseInfo: <p>工作流基本信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseInfo: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowBaseInfo`
        # @param Trigger: <p>工作流调度配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trigger: Array
        # @param ParamList: <p>工作流参数列表 参数名必填且只能包含数字、大小写字母、空格、.$@#!%^&amp;*()-_+=&gt;<!--'，最长128个字符--></p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamList: Array
        # @param LabelList: <p>标签 标签名必填且只能包含数字、大小写字母、空格、.$@#!%^&amp;*()-_+=&gt;<!--'，最长128个字符--></p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param Alarm: <p>工作流告警配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: <p>监控指标配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param AdvanceConfig: <p>工作流高级设置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowAdvanceConfig`
        # @param TaskList: <p>工作流任务列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array
        # @param BundleId: <p>BundleId，可通过 Bundle 相关接口获取</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param GitConfigId: <p>GIT配置ID，对应GetWorkspaceConfig接口中的ConfigKey</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitBranch: String

        attr_accessor :WorkspaceId, :BaseInfo, :Trigger, :ParamList, :LabelList, :Alarm, :MonitorMetric, :AdvanceConfig, :TaskList, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workspaceid=nil, baseinfo=nil, trigger=nil, paramlist=nil, labellist=nil, alarm=nil, monitormetric=nil, advanceconfig=nil, tasklist=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkspaceId = workspaceid
          @BaseInfo = baseinfo
          @Trigger = trigger
          @ParamList = paramlist
          @LabelList = labellist
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @AdvanceConfig = advanceconfig
          @TaskList = tasklist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BaseInfo'].nil?
            @BaseInfo = WorkflowBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['AdvanceConfig'].nil?
            @AdvanceConfig = WorkflowAdvanceConfig.new
            @AdvanceConfig.deserialize(params['AdvanceConfig'])
          end
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtask_tmp = WorkflowTask.new
              workflowtask_tmp.deserialize(i)
              @TaskList << workflowtask_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # 工作流高级设置
      class WorkflowAdvanceConfig < TencentCloud::Common::AbstractModel
        # @param QueuingMode: 排队模式，ON（默认）, OFF
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueuingMode: String
        # @param MaxConcurrentNum: 默认值为1

        # QueuingMode为ON时，MaxConcurrentNum 设置才生效；只能输入大于0的整数，输入非法值自动转换为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConcurrentNum: Integer

        attr_accessor :QueuingMode, :MaxConcurrentNum

        def initialize(queuingmode=nil, maxconcurrentnum=nil)
          @QueuingMode = queuingmode
          @MaxConcurrentNum = maxconcurrentnum
        end

        def deserialize(params)
          @QueuingMode = params['QueuingMode']
          @MaxConcurrentNum = params['MaxConcurrentNum']
        end
      end

      # 工作流基本信息（入参用）
      class WorkflowBaseInfo < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称，长度不超过 1024
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: 工作流ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param RunUserUin: 工作流运行人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param OwnerUserName: 工作流负责人用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param CreateUserUin: 创建人UIN。系统生成字段，入参传值不生效（服务端忽略且不报错）
        # 【已废弃】服务端忽略传入值，不报错。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :WorkflowName, :WorkflowId, :RunUserUin, :Description, :OwnerUserName, :CreateUserUin

        def initialize(workflowname=nil, workflowid=nil, runuseruin=nil, description=nil, ownerusername=nil, createuseruin=nil)
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @RunUserUin = runuseruin
          @Description = description
          @OwnerUserName = ownerusername
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @RunUserUin = params['RunUserUin']
          @Description = params['Description']
          @OwnerUserName = params['OwnerUserName']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 工作流基本信息（出参用，含系统生成字段与负责人展示信息）
      class WorkflowBaseInfoDetail < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param CreateUserUin: 创建人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param RunUserUin: 工作流运行人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param OwnerUserName: 工作流负责人用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param OwnerUserUin: 工作流负责人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserUin: String
        # @param OwnerDisplayName: 工作流负责人展示名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerDisplayName: String
        # @param CreateTime: 创建时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :WorkflowName, :WorkflowId, :CreateUserUin, :RunUserUin, :Description, :OwnerUserName, :OwnerUserUin, :OwnerDisplayName, :CreateTime, :UpdateTime

        def initialize(workflowname=nil, workflowid=nil, createuseruin=nil, runuseruin=nil, description=nil, ownerusername=nil, owneruseruin=nil, ownerdisplayname=nil, createtime=nil, updatetime=nil)
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @CreateUserUin = createuseruin
          @RunUserUin = runuseruin
          @Description = description
          @OwnerUserName = ownerusername
          @OwnerUserUin = owneruseruin
          @OwnerDisplayName = ownerdisplayname
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @CreateUserUin = params['CreateUserUin']
          @RunUserUin = params['RunUserUin']
          @Description = params['Description']
          @OwnerUserName = params['OwnerUserName']
          @OwnerUserUin = params['OwnerUserUin']
          @OwnerDisplayName = params['OwnerDisplayName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 工作流列表项
      class WorkflowBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowName: <p>工作流名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: <p>工作流ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateUserUin: <p>创建人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param OwnerUserName: <p>工作流负责人用户名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param OwnerUserUin: <p>工作流负责人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserUin: String
        # @param OwnerDisplayName: <p>工作流负责人展示名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerDisplayName: String
        # @param CreateTime: <p>创建时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param LabelList: <p>标签列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param Trigger: <p>工作流调度配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trigger: Array
        # @param RunUserUin: <p>工作流运行人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: <p>工作流运行人用户名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param TaskList: <p>工作流任务节点列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array
        # @param WorkflowRunList: <p>工作流运行情况列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunList: Array
        # @param ResourceGroupInfoList: <p>资源组信息列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param Permission: <p>工作流权限信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permission: String
        # @param BundleId: <p>工作流绑定的 Bundle 唯一标识，未绑定时为空</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param GitConfigId: <p>Git配置ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitBranch: String

        attr_accessor :WorkflowName, :WorkflowId, :Description, :CreateUserUin, :OwnerUserName, :OwnerUserUin, :OwnerDisplayName, :CreateTime, :UpdateTime, :LabelList, :Trigger, :RunUserUin, :RunUserName, :TaskList, :WorkflowRunList, :ResourceGroupInfoList, :Permission, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workflowname=nil, workflowid=nil, description=nil, createuseruin=nil, ownerusername=nil, owneruseruin=nil, ownerdisplayname=nil, createtime=nil, updatetime=nil, labellist=nil, trigger=nil, runuseruin=nil, runusername=nil, tasklist=nil, workflowrunlist=nil, resourcegroupinfolist=nil, permission=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @Description = description
          @CreateUserUin = createuseruin
          @OwnerUserName = ownerusername
          @OwnerUserUin = owneruseruin
          @OwnerDisplayName = ownerdisplayname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LabelList = labellist
          @Trigger = trigger
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @TaskList = tasklist
          @WorkflowRunList = workflowrunlist
          @ResourceGroupInfoList = resourcegroupinfolist
          @Permission = permission
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @Description = params['Description']
          @CreateUserUin = params['CreateUserUin']
          @OwnerUserName = params['OwnerUserName']
          @OwnerUserUin = params['OwnerUserUin']
          @OwnerDisplayName = params['OwnerDisplayName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtasknodebrief_tmp = WorkflowTaskNodeBrief.new
              workflowtasknodebrief_tmp.deserialize(i)
              @TaskList << workflowtasknodebrief_tmp
            end
          end
          unless params['WorkflowRunList'].nil?
            @WorkflowRunList = []
            params['WorkflowRunList'].each do |i|
              workflowrunbrief_tmp = WorkflowRunBrief.new
              workflowrunbrief_tmp.deserialize(i)
              @WorkflowRunList << workflowrunbrief_tmp
            end
          end
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          @Permission = params['Permission']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # 工作流运行信息
      class WorkflowRun < TencentCloud::Common::AbstractModel
        # @param AppId: 主账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowRunId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param WorkspaceId: 工作空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param TriggerType: 触发方式，Scheduler、ManualTrigger、Event (参考SchedulerTriggerType)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param RunStartTime: 运行开始时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param PendingStartTime: pending 状态开始时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PendingStartTime: String
        # @param QueueStartTime: queue 状态开始时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueStartTime: String
        # @param RunEndTime: 运行结束时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param EndTime: 终态时间，运行进入终态时都有值，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param RunCostTime: 运行时长，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param QueueCostTime: 并发排队花费时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueCostTime: String
        # @param PendingCostTime: 等待资源花费时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PendingCostTime: String
        # @param RunState: 运行状态。取值参考工作流运行状态枚举，如 Pending / Running / Succeeded / Failed / Killed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param ResourceGroupIds: 计算资源（任务的资源组ID集合）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupIds: Array
        # @param RunUserUin: 运行用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: 运行用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param ErrorCodeString: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param WorkflowParams: 运行参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: String
        # @param WorkflowVersionId: 工作流版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowVersionId: String
        # @param SupportRerun: 当前工作流是否支持重跑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportRerun: Boolean
        # @param CreateTime: 工作流运行创建时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param RerunTimes: 重跑次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param SelectedTaskIds: 运行的任务范围，任务ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelectedTaskIds: Array
        # @param ResourceGroupInfoList: 资源组信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param LabelList: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param ParentWorkflowRunId: 父工作流运行ID 【由嵌套工作流触发独有】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWorkflowRunId: String
        # @param ParentWorkflowTaskRunId: 父工作流任务运行ID 【由嵌套工作流触发独有】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWorkflowTaskRunId: String
        # @param ParentWorkflowTaskRunName: 父工作流任务运行名称 【由嵌套工作流触发独有】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWorkflowTaskRunName: String
        # @param Permission: 权限信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permission: String
        # @param AdvancedParameters: 工作流高级运行时用户填入的参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedParameters: Array

        attr_accessor :AppId, :WorkflowName, :WorkflowId, :WorkflowRunId, :WorkspaceId, :TriggerType, :RunStartTime, :PendingStartTime, :QueueStartTime, :RunEndTime, :EndTime, :RunCostTime, :QueueCostTime, :PendingCostTime, :RunState, :ResourceGroupIds, :RunUserUin, :RunUserName, :ErrorCodeString, :WorkflowParams, :WorkflowVersionId, :SupportRerun, :CreateTime, :RerunTimes, :SelectedTaskIds, :ResourceGroupInfoList, :LabelList, :ParentWorkflowRunId, :ParentWorkflowTaskRunId, :ParentWorkflowTaskRunName, :Permission, :AdvancedParameters

        def initialize(appid=nil, workflowname=nil, workflowid=nil, workflowrunid=nil, workspaceid=nil, triggertype=nil, runstarttime=nil, pendingstarttime=nil, queuestarttime=nil, runendtime=nil, endtime=nil, runcosttime=nil, queuecosttime=nil, pendingcosttime=nil, runstate=nil, resourcegroupids=nil, runuseruin=nil, runusername=nil, errorcodestring=nil, workflowparams=nil, workflowversionid=nil, supportrerun=nil, createtime=nil, reruntimes=nil, selectedtaskids=nil, resourcegroupinfolist=nil, labellist=nil, parentworkflowrunid=nil, parentworkflowtaskrunid=nil, parentworkflowtaskrunname=nil, permission=nil, advancedparameters=nil)
          @AppId = appid
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @WorkspaceId = workspaceid
          @TriggerType = triggertype
          @RunStartTime = runstarttime
          @PendingStartTime = pendingstarttime
          @QueueStartTime = queuestarttime
          @RunEndTime = runendtime
          @EndTime = endtime
          @RunCostTime = runcosttime
          @QueueCostTime = queuecosttime
          @PendingCostTime = pendingcosttime
          @RunState = runstate
          @ResourceGroupIds = resourcegroupids
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @ErrorCodeString = errorcodestring
          @WorkflowParams = workflowparams
          @WorkflowVersionId = workflowversionid
          @SupportRerun = supportrerun
          @CreateTime = createtime
          @RerunTimes = reruntimes
          @SelectedTaskIds = selectedtaskids
          @ResourceGroupInfoList = resourcegroupinfolist
          @LabelList = labellist
          @ParentWorkflowRunId = parentworkflowrunid
          @ParentWorkflowTaskRunId = parentworkflowtaskrunid
          @ParentWorkflowTaskRunName = parentworkflowtaskrunname
          @Permission = permission
          @AdvancedParameters = advancedparameters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @WorkspaceId = params['WorkspaceId']
          @TriggerType = params['TriggerType']
          @RunStartTime = params['RunStartTime']
          @PendingStartTime = params['PendingStartTime']
          @QueueStartTime = params['QueueStartTime']
          @RunEndTime = params['RunEndTime']
          @EndTime = params['EndTime']
          @RunCostTime = params['RunCostTime']
          @QueueCostTime = params['QueueCostTime']
          @PendingCostTime = params['PendingCostTime']
          @RunState = params['RunState']
          @ResourceGroupIds = params['ResourceGroupIds']
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          @ErrorCodeString = params['ErrorCodeString']
          @WorkflowParams = params['WorkflowParams']
          @WorkflowVersionId = params['WorkflowVersionId']
          @SupportRerun = params['SupportRerun']
          @CreateTime = params['CreateTime']
          @RerunTimes = params['RerunTimes']
          @SelectedTaskIds = params['SelectedTaskIds']
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          @ParentWorkflowRunId = params['ParentWorkflowRunId']
          @ParentWorkflowTaskRunId = params['ParentWorkflowTaskRunId']
          @ParentWorkflowTaskRunName = params['ParentWorkflowTaskRunName']
          @Permission = params['Permission']
          unless params['AdvancedParameters'].nil?
            @AdvancedParameters = []
            params['AdvancedParameters'].each do |i|
              advancedparameter_tmp = AdvancedParameter.new
              advancedparameter_tmp.deserialize(i)
              @AdvancedParameters << advancedparameter_tmp
            end
          end
        end
      end

      # 工作流列表项的运行情况
      class WorkflowRunBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowRunId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param RunStartTime: 运行开始时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunState: 运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param ErrorCodeString: 运行错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String

        attr_accessor :WorkflowRunId, :RunStartTime, :RunState, :ErrorCodeString

        def initialize(workflowrunid=nil, runstarttime=nil, runstate=nil, errorcodestring=nil)
          @WorkflowRunId = workflowrunid
          @RunStartTime = runstarttime
          @RunState = runstate
          @ErrorCodeString = errorcodestring
        end

        def deserialize(params)
          @WorkflowRunId = params['WorkflowRunId']
          @RunStartTime = params['RunStartTime']
          @RunState = params['RunState']
          @ErrorCodeString = params['ErrorCodeString']
        end
      end

      # 工作流任务信息。 注意：本结构同时用于入参（CreateWorkflow / UpdateWorkflow）与出参（GetWorkflow）， 其中 CreateTime / UpdateTime / CreateUserUin 为系统生成字段，仅在出参中有值， 入参传值不生效（服务端忽略且不报错）。
      class WorkflowTask < TencentCloud::Common::AbstractModel
        # @param ParamList: 任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamList: Array
        # @param DependOnList: 任务依赖
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param TaskId: 任务ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: :class:`Tencentcloud::Databuddy.v20260715.models.TaskType`
        # @param ResourceGroupId: 资源组ID，可通过资源组相关接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param Description: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Alarm: 任务告警
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: 监控指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param TaskRetryStrategy: 任务重试策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRetryStrategy: :class:`Tencentcloud::Databuddy.v20260715.models.TaskRetryStrategy`
        # @param DependOnRunCondition: <p>任依赖运行条件</p><ul><li>ALL_SUCCESS: 全部成功：所有上游依赖任务均已执行并成功</li><li>ONE_SUCCESS: 至少一个成功：至少有一个上游依赖任务成功</li><li>NONE_FAILED: 目前没有失败：没有依赖任务失败，并且至少有一个依赖任务在运行中</li><li>ALL_DONE: 全部完成：所有上游依赖任务均已执行并完成（无论成功或失败</li><li>ONE_FAILED: 至少一个失败：至少有一个上游依赖任务失败</li><li>ALL_FAILED: 全部失败：所有上游依赖任务都失败</li><li>ALL_DONE_AT_LEAST_ONE_SUCCESS：上游全部完成至少一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个成功，则依赖判断成功，否则就是跳过运行</li><li>ALL_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行</li><li>ONE_DONE：至少一个完成：上游只要有一个完成了，就进行依赖判断，且依赖判断成功，否则还是等待上游</li><li>ALL_DONE_NONE_FAILED_AT_LEAST_ONE_SUCCESS：上游全部完成，没有失败，至少有一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，上游没有一个失败且至少有一个成功的情况下，依赖判断成功，否则就是跳过运行</li><li>NONE_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行</li><li>ALL_DONE_AT_LEAST_ONE_FAILED：上游全部完成至少一个失败: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个失败，则依赖判断成功，否则就是跳过运行</li><li>ADVANCED:运行条件为高级模式时配置</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnRunCondition: String
        # @param LeftCoordinate: 任务X坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: 任务Y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param AdvancedDependencyConfig: <p>任务高级运行参数，当DependOnRunCondition为ADVANCED时配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedDependencyConfig: :class:`Tencentcloud::Databuddy.v20260715.models.AdvancedDependencyConfig`
        # @param InnerTask: <p>内嵌任务（FOR_EACH任务的子任务）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTask: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowTask`
        # @param CreateTime: 创建时间，单位：毫秒时间戳。出参专用，系统生成，入参传值不生效
        # 【已废弃】服务端忽略传入值，不报错。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，单位：毫秒时间戳。出参专用，系统生成，入参传值不生效
        # 【已废弃】服务端忽略传入值，不报错。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param CreateUserUin: 创建人UIN。出参专用，系统生成，入参传值不生效
        # 【已废弃】服务端忽略传入值，不报错。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :ParamList, :DependOnList, :TaskId, :TaskName, :TaskType, :ResourceGroupId, :Description, :Alarm, :MonitorMetric, :TaskRetryStrategy, :DependOnRunCondition, :LeftCoordinate, :TopCoordinate, :AdvancedDependencyConfig, :InnerTask, :CreateTime, :UpdateTime, :CreateUserUin

        def initialize(paramlist=nil, dependonlist=nil, taskid=nil, taskname=nil, tasktype=nil, resourcegroupid=nil, description=nil, alarm=nil, monitormetric=nil, taskretrystrategy=nil, dependonruncondition=nil, leftcoordinate=nil, topcoordinate=nil, advanceddependencyconfig=nil, innertask=nil, createtime=nil, updatetime=nil, createuseruin=nil)
          @ParamList = paramlist
          @DependOnList = dependonlist
          @TaskId = taskid
          @TaskName = taskname
          @TaskType = tasktype
          @ResourceGroupId = resourcegroupid
          @Description = description
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @TaskRetryStrategy = taskretrystrategy
          @DependOnRunCondition = dependonruncondition
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @AdvancedDependencyConfig = advanceddependencyconfig
          @InnerTask = innertask
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['DependOnList'].nil?
            @DependOnList = []
            params['DependOnList'].each do |i|
              dependonbrief_tmp = DependOnBrief.new
              dependonbrief_tmp.deserialize(i)
              @DependOnList << dependonbrief_tmp
            end
          end
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          unless params['TaskType'].nil?
            @TaskType = TaskType.new
            @TaskType.deserialize(params['TaskType'])
          end
          @ResourceGroupId = params['ResourceGroupId']
          @Description = params['Description']
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['TaskRetryStrategy'].nil?
            @TaskRetryStrategy = TaskRetryStrategy.new
            @TaskRetryStrategy.deserialize(params['TaskRetryStrategy'])
          end
          @DependOnRunCondition = params['DependOnRunCondition']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          unless params['AdvancedDependencyConfig'].nil?
            @AdvancedDependencyConfig = AdvancedDependencyConfig.new
            @AdvancedDependencyConfig.deserialize(params['AdvancedDependencyConfig'])
          end
          unless params['InnerTask'].nil?
            @InnerTask = WorkflowTask.new
            @InnerTask.deserialize(params['InnerTask'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 工作流列表项中的工作流任务节点简要信息
      class WorkflowTaskNodeBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskTypeName: 任务类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param DependOnList: 任务依赖列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param ResourceGroupId: 任务资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 任务资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param LeftCoordinate: 任务X坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: 任务Y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param TaskRetryStrategy: 任务重试策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRetryStrategy: :class:`Tencentcloud::Databuddy.v20260715.models.TaskRetryStrategy`
        # @param DependOnRunCondition: 依赖运行条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnRunCondition: String
        # @param AdvancedDependencyConfig: 高级依赖配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedDependencyConfig: :class:`Tencentcloud::Databuddy.v20260715.models.AdvancedDependencyConfig`
        # @param InnerTask: 内嵌工作流任务节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTask: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowTaskNodeBrief`

        attr_accessor :WorkflowId, :TaskId, :TaskName, :TaskTypeName, :DependOnList, :ResourceGroupId, :ResourceGroupName, :LeftCoordinate, :TopCoordinate, :TaskRetryStrategy, :DependOnRunCondition, :AdvancedDependencyConfig, :InnerTask

        def initialize(workflowid=nil, taskid=nil, taskname=nil, tasktypename=nil, dependonlist=nil, resourcegroupid=nil, resourcegroupname=nil, leftcoordinate=nil, topcoordinate=nil, taskretrystrategy=nil, dependonruncondition=nil, advanceddependencyconfig=nil, innertask=nil)
          @WorkflowId = workflowid
          @TaskId = taskid
          @TaskName = taskname
          @TaskTypeName = tasktypename
          @DependOnList = dependonlist
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @TaskRetryStrategy = taskretrystrategy
          @DependOnRunCondition = dependonruncondition
          @AdvancedDependencyConfig = advanceddependencyconfig
          @InnerTask = innertask
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskTypeName = params['TaskTypeName']
          unless params['DependOnList'].nil?
            @DependOnList = []
            params['DependOnList'].each do |i|
              dependonbrief_tmp = DependOnBrief.new
              dependonbrief_tmp.deserialize(i)
              @DependOnList << dependonbrief_tmp
            end
          end
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          unless params['TaskRetryStrategy'].nil?
            @TaskRetryStrategy = TaskRetryStrategy.new
            @TaskRetryStrategy.deserialize(params['TaskRetryStrategy'])
          end
          @DependOnRunCondition = params['DependOnRunCondition']
          unless params['AdvancedDependencyConfig'].nil?
            @AdvancedDependencyConfig = AdvancedDependencyConfig.new
            @AdvancedDependencyConfig.deserialize(params['AdvancedDependencyConfig'])
          end
          unless params['InnerTask'].nil?
            @InnerTask = WorkflowTaskNodeBrief.new
            @InnerTask.deserialize(params['InnerTask'])
          end
        end
      end

      # 工作流任务运行信息
      class WorkflowTaskRun < TencentCloud::Common::AbstractModel
        # @param TaskName: <p>任务名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowTaskRunId: <p>任务运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTaskRunId: String
        # @param RunState: <p>运行状态。取值参考工作流任务运行状态枚举，如 Pending / Running / Succeeded / Failed / Killed</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param WorkspaceId: <p>工作空间ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowRunId: <p>工作流运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param TaskId: <p>任务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskTypeName: <p>任务类型名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param TaskVersionId: <p>任务版本ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskVersionId: String
        # @param TriggerType: <p>触发类型 (参考SchedulerTriggerType枚举)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param ResourceGroupId: <p>所属资源组ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param RunUserUin: <p>运行用户UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: <p>运行用户名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param CreateUserUin: <p>创建人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param JobId: <p>执行平台执行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CreateTime: <p>创建时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DependenceFinishedTime: <p>依赖任务完成时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependenceFinishedTime: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param WaitTime: <p>等待时长（依赖就绪到开始运行的等待耗时），单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitTime: String
        # @param IssueTime: <p>下发执行平台时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssueTime: String
        # @param TimeZone: <p>时区</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeZone: String
        # @param DependOnList: <p>依赖上游任务ID列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param RunParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunParams: String
        # @param TaskTypeExtensions: <p>任务扩展信息，包含脚本路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeExtensions: String
        # @param LeftCoordinate: <p>任务X坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: <p>任务Y坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param RetryTimes: <p>重试次数，为 0 则表示首次运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryTimes: Integer
        # @param WorkflowName: <p>工作流名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param RerunTimes: <p>重跑次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param IsLatestRun: <p>是否最新一次运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLatestRun: Boolean
        # @param ResourceGroupInfoList: <p>资源组信息列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param RunResult: <p>运行结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunResult: String
        # @param DependOnRunCondition: <p>依赖运行条件</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnRunCondition: String
        # @param AdvancedDependencyConfig: <p>高级依赖配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedDependencyConfig: :class:`Tencentcloud::Databuddy.v20260715.models.AdvancedDependencyConfig`
        # @param InnerTask: <p>内嵌工作流任务信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTask: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskBrief`

        attr_accessor :TaskName, :WorkflowTaskRunId, :RunState, :WorkspaceId, :WorkflowId, :WorkflowRunId, :TaskId, :TaskTypeName, :TaskVersionId, :TriggerType, :ResourceGroupId, :ErrorCodeString, :RunUserUin, :RunUserName, :CreateUserUin, :JobId, :CreateTime, :UpdateTime, :DependenceFinishedTime, :RunStartTime, :RunEndTime, :RunCostTime, :WaitTime, :IssueTime, :TimeZone, :DependOnList, :RunParams, :TaskTypeExtensions, :LeftCoordinate, :TopCoordinate, :RetryTimes, :WorkflowName, :RerunTimes, :IsLatestRun, :ResourceGroupInfoList, :RunResult, :DependOnRunCondition, :AdvancedDependencyConfig, :InnerTask

        def initialize(taskname=nil, workflowtaskrunid=nil, runstate=nil, workspaceid=nil, workflowid=nil, workflowrunid=nil, taskid=nil, tasktypename=nil, taskversionid=nil, triggertype=nil, resourcegroupid=nil, errorcodestring=nil, runuseruin=nil, runusername=nil, createuseruin=nil, jobid=nil, createtime=nil, updatetime=nil, dependencefinishedtime=nil, runstarttime=nil, runendtime=nil, runcosttime=nil, waittime=nil, issuetime=nil, timezone=nil, dependonlist=nil, runparams=nil, tasktypeextensions=nil, leftcoordinate=nil, topcoordinate=nil, retrytimes=nil, workflowname=nil, reruntimes=nil, islatestrun=nil, resourcegroupinfolist=nil, runresult=nil, dependonruncondition=nil, advanceddependencyconfig=nil, innertask=nil)
          @TaskName = taskname
          @WorkflowTaskRunId = workflowtaskrunid
          @RunState = runstate
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @TaskId = taskid
          @TaskTypeName = tasktypename
          @TaskVersionId = taskversionid
          @TriggerType = triggertype
          @ResourceGroupId = resourcegroupid
          @ErrorCodeString = errorcodestring
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @CreateUserUin = createuseruin
          @JobId = jobid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DependenceFinishedTime = dependencefinishedtime
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunCostTime = runcosttime
          @WaitTime = waittime
          @IssueTime = issuetime
          @TimeZone = timezone
          @DependOnList = dependonlist
          @RunParams = runparams
          @TaskTypeExtensions = tasktypeextensions
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @RetryTimes = retrytimes
          @WorkflowName = workflowname
          @RerunTimes = reruntimes
          @IsLatestRun = islatestrun
          @ResourceGroupInfoList = resourcegroupinfolist
          @RunResult = runresult
          @DependOnRunCondition = dependonruncondition
          @AdvancedDependencyConfig = advanceddependencyconfig
          @InnerTask = innertask
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          @RunState = params['RunState']
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @TaskId = params['TaskId']
          @TaskTypeName = params['TaskTypeName']
          @TaskVersionId = params['TaskVersionId']
          @TriggerType = params['TriggerType']
          @ResourceGroupId = params['ResourceGroupId']
          @ErrorCodeString = params['ErrorCodeString']
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          @CreateUserUin = params['CreateUserUin']
          @JobId = params['JobId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DependenceFinishedTime = params['DependenceFinishedTime']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunCostTime = params['RunCostTime']
          @WaitTime = params['WaitTime']
          @IssueTime = params['IssueTime']
          @TimeZone = params['TimeZone']
          @DependOnList = params['DependOnList']
          @RunParams = params['RunParams']
          @TaskTypeExtensions = params['TaskTypeExtensions']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          @RetryTimes = params['RetryTimes']
          @WorkflowName = params['WorkflowName']
          @RerunTimes = params['RerunTimes']
          @IsLatestRun = params['IsLatestRun']
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          @RunResult = params['RunResult']
          @DependOnRunCondition = params['DependOnRunCondition']
          unless params['AdvancedDependencyConfig'].nil?
            @AdvancedDependencyConfig = AdvancedDependencyConfig.new
            @AdvancedDependencyConfig.deserialize(params['AdvancedDependencyConfig'])
          end
          unless params['InnerTask'].nil?
            @InnerTask = InnerWorkflowTaskBrief.new
            @InnerTask.deserialize(params['InnerTask'])
          end
        end
      end

      # 工作流调度高级配置。
      class WorkflowTriggerAdvancedConfiguration < TencentCloud::Common::AbstractModel
        # @param TaskRetryMode: 任务重试模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRetryMode: String

        attr_accessor :TaskRetryMode

        def initialize(taskretrymode=nil)
          @TaskRetryMode = taskretrymode
        end

        def deserialize(params)
          @TaskRetryMode = params['TaskRetryMode']
        end
      end

      # 工作流调度配置。
      class WorkflowTriggerConfiguration < TencentCloud::Common::AbstractModel
        # @param TriggerId: 调度配置ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerId: String
        # @param SchedulerStatus: 调度状态 启动：START，暂停：PAUSE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerStatus: String
        # @param TriggerMode: 触发方式，
        # - 定时触发：TIME_TRIGGER
        # - 持续运行：CONTINUE_RUN

        # 注意：
        # - TIME_TRIGGER 模式下，SchedulerStatus、SchedulerTimeZone、StartTime、EndTime、ConfigMode、CycleType、CrontabExpression 必填；
        # - CONTINUE_RUN 模式下，AdvancedConfig必填；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerMode: String
        # @param SchedulerTimeZone: 调度时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerTimeZone: String
        # @param StartTime: 调度生效时间，单位：毫秒时间戳。必须小于 EndTime
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 调度结束时间，单位：毫秒时间戳。必须大于 StartTime
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ConfigMode: 配置方式，常规：COMMON，CRON表达式：CRON_EXPRESSION
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigMode: String
        # @param CycleType: 周期类型：支持的类型为 ONEOFF_CYCLE: 一次性 YEAR_CYCLE: 年 MONTH_CYCLE: 月 WEEK_CYCLE: 周 DAY_CYCLE: 天
        # HOUR_CYCLE: 小时 MINUTE_CYCLE: 分钟 CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param CrontabExpression: cron表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param ExtraInfo: Json格式，对账使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param AdvancedConfig: 高级配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowTriggerAdvancedConfiguration`

        attr_accessor :TriggerId, :SchedulerStatus, :TriggerMode, :SchedulerTimeZone, :StartTime, :EndTime, :ConfigMode, :CycleType, :CrontabExpression, :ExtraInfo, :AdvancedConfig

        def initialize(triggerid=nil, schedulerstatus=nil, triggermode=nil, schedulertimezone=nil, starttime=nil, endtime=nil, configmode=nil, cycletype=nil, crontabexpression=nil, extrainfo=nil, advancedconfig=nil)
          @TriggerId = triggerid
          @SchedulerStatus = schedulerstatus
          @TriggerMode = triggermode
          @SchedulerTimeZone = schedulertimezone
          @StartTime = starttime
          @EndTime = endtime
          @ConfigMode = configmode
          @CycleType = cycletype
          @CrontabExpression = crontabexpression
          @ExtraInfo = extrainfo
          @AdvancedConfig = advancedconfig
        end

        def deserialize(params)
          @TriggerId = params['TriggerId']
          @SchedulerStatus = params['SchedulerStatus']
          @TriggerMode = params['TriggerMode']
          @SchedulerTimeZone = params['SchedulerTimeZone']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ConfigMode = params['ConfigMode']
          @CycleType = params['CycleType']
          @CrontabExpression = params['CrontabExpression']
          @ExtraInfo = params['ExtraInfo']
          unless params['AdvancedConfig'].nil?
            @AdvancedConfig = WorkflowTriggerAdvancedConfiguration.new
            @AdvancedConfig.deserialize(params['AdvancedConfig'])
          end
        end
      end

    end
  end
end

