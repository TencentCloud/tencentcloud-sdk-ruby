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
  module Cfg
    module V20210820
      # CreateTaskFromTemplate请求参数结构体
      class CreateTaskFromTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 从经验库中查询到的经验模版ID
        # @type TemplateId: Integer
        # @param TaskConfig: 演练的配置参数
        # @type TaskConfig: :class:`Tencentcloud::Cfg.v20210820.models.TaskConfig`

        attr_accessor :TemplateId, :TaskConfig
        
        def initialize(templateid=nil, taskconfig=nil)
          @TemplateId = templateid
          @TaskConfig = taskconfig
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['TaskConfig'].nil?
            @TaskConfig = TaskConfig.new
            @TaskConfig.deserialize(params['TaskConfig'])
          end
        end
      end

      # CreateTaskFromTemplate返回参数结构体
      class CreateTaskFromTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 创建成功的演练ID
        # @type TaskId: Integer
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

      # DeleteTask请求参数结构体
      class DeleteTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteTask返回参数结构体
      class DeleteTaskResponse < TencentCloud::Common::AbstractModel
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

      # 查询-保护策略
      class DescribePolicy < TencentCloud::Common::AbstractModel
        # @param TaskPolicyIdList: 保护策略ID列表
        # @type TaskPolicyIdList: Array
        # @param TaskPolicyStatus: 保护策略状态
        # @type TaskPolicyStatus: String
        # @param TaskPolicyRule: 策略规则
        # @type TaskPolicyRule: String
        # @param TaskPolicyDealType: 护栏策略生效处理策略 1:顺序执行，2:暂停
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskPolicyDealType: Integer

        attr_accessor :TaskPolicyIdList, :TaskPolicyStatus, :TaskPolicyRule, :TaskPolicyDealType
        
        def initialize(taskpolicyidlist=nil, taskpolicystatus=nil, taskpolicyrule=nil, taskpolicydealtype=nil)
          @TaskPolicyIdList = taskpolicyidlist
          @TaskPolicyStatus = taskpolicystatus
          @TaskPolicyRule = taskpolicyrule
          @TaskPolicyDealType = taskpolicydealtype
        end

        def deserialize(params)
          @TaskPolicyIdList = params['TaskPolicyIdList']
          @TaskPolicyStatus = params['TaskPolicyStatus']
          @TaskPolicyRule = params['TaskPolicyRule']
          @TaskPolicyDealType = params['TaskPolicyDealType']
        end
      end

      # DescribeTaskExecuteLogs请求参数结构体
      class DescribeTaskExecuteLogsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Limit: 返回的内容行数
        # @type Limit: Integer
        # @param Offset: 日志起始的行数。
        # @type Offset: Integer

        attr_accessor :TaskId, :Limit, :Offset
        
        def initialize(taskid=nil, limit=nil, offset=nil)
          @TaskId = taskid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTaskExecuteLogs返回参数结构体
      class DescribeTaskExecuteLogsResponse < TencentCloud::Common::AbstractModel
        # @param LogMessage: 日志数据
        # @type LogMessage: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogMessage, :RequestId
        
        def initialize(logmessage=nil, requestid=nil)
          @LogMessage = logmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @LogMessage = params['LogMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskList请求参数结构体
      class DescribeTaskListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param TaskTitle: 演练名称
        # @type TaskTitle: String
        # @param TaskTag: 标签键
        # @type TaskTag: Array
        # @param TaskStatus: 状态
        # @type TaskStatus: Integer
        # @param TaskStartTime: 开始时间，固定格式%Y-%m-%d %H:%M:%S
        # @type TaskStartTime: String
        # @param TaskEndTime: 结束时间，固定格式%Y-%m-%d %H:%M:%S
        # @type TaskEndTime: String
        # @param Tags: 标签对
        # @type Tags: Array

        attr_accessor :Limit, :Offset, :TaskTitle, :TaskTag, :TaskStatus, :TaskStartTime, :TaskEndTime, :Tags
        
        def initialize(limit=nil, offset=nil, tasktitle=nil, tasktag=nil, taskstatus=nil, taskstarttime=nil, taskendtime=nil, tags=nil)
          @Limit = limit
          @Offset = offset
          @TaskTitle = tasktitle
          @TaskTag = tasktag
          @TaskStatus = taskstatus
          @TaskStartTime = taskstarttime
          @TaskEndTime = taskendtime
          @Tags = tags
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @TaskTitle = params['TaskTitle']
          @TaskTag = params['TaskTag']
          @TaskStatus = params['TaskStatus']
          @TaskStartTime = params['TaskStartTime']
          @TaskEndTime = params['TaskEndTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithdescribe_tmp = TagWithDescribe.new
              tagwithdescribe_tmp.deserialize(i)
              @Tags << tagwithdescribe_tmp
            end
          end
        end
      end

      # DescribeTaskList返回参数结构体
      class DescribeTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TaskList: 无
        # @type TaskList: Array
        # @param Total: 列表数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskList, :Total, :RequestId
        
        def initialize(tasklist=nil, total=nil, requestid=nil)
          @TaskList = tasklist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              tasklistitem_tmp = TaskListItem.new
              tasklistitem_tmp.deserialize(i)
              @TaskList << tasklistitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTask请求参数结构体
      class DescribeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTask返回参数结构体
      class DescribeTaskResponse < TencentCloud::Common::AbstractModel
        # @param Task: 任务信息
        # @type Task: :class:`Tencentcloud::Cfg.v20210820.models.Task`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId
        
        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplateList请求参数结构体
      class DescribeTemplateListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页Limit, 最大值100
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Title: 演练名称
        # @type Title: String
        # @param Tag: 标签键
        # @type Tag: Array
        # @param IsUsed: 状态，1---使用中， 2---停用
        # @type IsUsed: Integer
        # @param Tags: 标签对
        # @type Tags: Array

        attr_accessor :Limit, :Offset, :Title, :Tag, :IsUsed, :Tags
        
        def initialize(limit=nil, offset=nil, title=nil, tag=nil, isused=nil, tags=nil)
          @Limit = limit
          @Offset = offset
          @Title = title
          @Tag = tag
          @IsUsed = isused
          @Tags = tags
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Title = params['Title']
          @Tag = params['Tag']
          @IsUsed = params['IsUsed']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithdescribe_tmp = TagWithDescribe.new
              tagwithdescribe_tmp.deserialize(i)
              @Tags << tagwithdescribe_tmp
            end
          end
        end
      end

      # DescribeTemplateList返回参数结构体
      class DescribeTemplateListResponse < TencentCloud::Common::AbstractModel
        # @param TemplateList: 经验库列表
        # @type TemplateList: Array
        # @param Total: 列表数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateList, :Total, :RequestId
        
        def initialize(templatelist=nil, total=nil, requestid=nil)
          @TemplateList = templatelist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TemplateList'].nil?
            @TemplateList = []
            params['TemplateList'].each do |i|
              templatelistitem_tmp = TemplateListItem.new
              templatelistitem_tmp.deserialize(i)
              @TemplateList << templatelistitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplate请求参数结构体
      class DescribeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 经验库ID
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeTemplate返回参数结构体
      class DescribeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Template: 经验库详情
        # @type Template: :class:`Tencentcloud::Cfg.v20210820.models.Template`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId
        
        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ExecuteTaskInstance请求参数结构体
      class ExecuteTaskInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskActionId: 任务动作ID
        # @type TaskActionId: Integer
        # @param TaskInstanceIds: 任务动作实例ID
        # @type TaskInstanceIds: Array
        # @param IsOperateAll: 是否操作整个任务
        # @type IsOperateAll: Boolean
        # @param ActionType: 操作类型：（1--启动   2--执行  3--跳过   5--重试）
        # @type ActionType: Integer
        # @param TaskGroupId: 动作组ID
        # @type TaskGroupId: Integer

        attr_accessor :TaskId, :TaskActionId, :TaskInstanceIds, :IsOperateAll, :ActionType, :TaskGroupId
        
        def initialize(taskid=nil, taskactionid=nil, taskinstanceids=nil, isoperateall=nil, actiontype=nil, taskgroupid=nil)
          @TaskId = taskid
          @TaskActionId = taskactionid
          @TaskInstanceIds = taskinstanceids
          @IsOperateAll = isoperateall
          @ActionType = actiontype
          @TaskGroupId = taskgroupid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskActionId = params['TaskActionId']
          @TaskInstanceIds = params['TaskInstanceIds']
          @IsOperateAll = params['IsOperateAll']
          @ActionType = params['ActionType']
          @TaskGroupId = params['TaskGroupId']
        end
      end

      # ExecuteTaskInstance返回参数结构体
      class ExecuteTaskInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ExecuteTask请求参数结构体
      class ExecuteTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 需要执行的任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # ExecuteTask返回参数结构体
      class ExecuteTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTaskRunStatus请求参数结构体
      class ModifyTaskRunStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Status: 任务状态, 1001--未开始 1002--进行中（执行）1003--进行中（暂停）1004--执行结束
        # @type Status: Integer
        # @param IsExpect: 执行结果是否符合预期（当前扭转状态为执行结束时，需要必传此字段）
        # @type IsExpect: Boolean
        # @param Summary: 演习结论（当演习状态转变为执行结束时，需要填写此字段）
        # @type Summary: String

        attr_accessor :TaskId, :Status, :IsExpect, :Summary
        
        def initialize(taskid=nil, status=nil, isexpect=nil, summary=nil)
          @TaskId = taskid
          @Status = status
          @IsExpect = isexpect
          @Summary = summary
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @IsExpect = params['IsExpect']
          @Summary = params['Summary']
        end
      end

      # ModifyTaskRunStatus返回参数结构体
      class ModifyTaskRunStatusResponse < TencentCloud::Common::AbstractModel
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

      # 用于传入创建、编辑标签
      class TagWithCreate < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 展示标签列表
      class TagWithDescribe < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 任务
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskTitle: 任务标题
        # @type TaskTitle: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String
        # @param TaskTag: 自定义标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTag: String
        # @param TaskStatus: 任务状态，1001--未开始  1002--进行中（执行）1003--进行中（暂停）1004--执行结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: Integer
        # @param TaskStatusType: 任务结束状态，表明任务以何种状态结束: 0 -- 尚未结束，1 -- 成功，2-- 失败，3--终止
        # @type TaskStatusType: Integer
        # @param TaskProtectStrategy: 保护策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskProtectStrategy: String
        # @param TaskCreateTime: 任务创建时间
        # @type TaskCreateTime: String
        # @param TaskUpdateTime: 任务更新时间
        # @type TaskUpdateTime: String
        # @param TaskGroups: 任务动作组
        # @type TaskGroups: Array
        # @param TaskStartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStartTime: String
        # @param TaskEndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskEndTime: String
        # @param TaskExpect: 是否符合预期。1：符合预期，2：不符合预期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskExpect: Integer
        # @param TaskSummary: 演习记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSummary: String
        # @param TaskMode: 任务模式。1:手工执行，2:自动执行
        # @type TaskMode: Integer
        # @param TaskPauseDuration: 自动暂停时长。单位分钟
        # @type TaskPauseDuration: Integer
        # @param TaskOwnerUin: 演练创建者Uin
        # @type TaskOwnerUin: String
        # @param TaskRegionId: 地域ID
        # @type TaskRegionId: Integer
        # @param TaskMonitors: 监控指标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskMonitors: Array
        # @param TaskPolicy: 保护策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskPolicy: :class:`Tencentcloud::Cfg.v20210820.models.DescribePolicy`
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :TaskId, :TaskTitle, :TaskDescription, :TaskTag, :TaskStatus, :TaskStatusType, :TaskProtectStrategy, :TaskCreateTime, :TaskUpdateTime, :TaskGroups, :TaskStartTime, :TaskEndTime, :TaskExpect, :TaskSummary, :TaskMode, :TaskPauseDuration, :TaskOwnerUin, :TaskRegionId, :TaskMonitors, :TaskPolicy, :Tags
        
        def initialize(taskid=nil, tasktitle=nil, taskdescription=nil, tasktag=nil, taskstatus=nil, taskstatustype=nil, taskprotectstrategy=nil, taskcreatetime=nil, taskupdatetime=nil, taskgroups=nil, taskstarttime=nil, taskendtime=nil, taskexpect=nil, tasksummary=nil, taskmode=nil, taskpauseduration=nil, taskowneruin=nil, taskregionid=nil, taskmonitors=nil, taskpolicy=nil, tags=nil)
          @TaskId = taskid
          @TaskTitle = tasktitle
          @TaskDescription = taskdescription
          @TaskTag = tasktag
          @TaskStatus = taskstatus
          @TaskStatusType = taskstatustype
          @TaskProtectStrategy = taskprotectstrategy
          @TaskCreateTime = taskcreatetime
          @TaskUpdateTime = taskupdatetime
          @TaskGroups = taskgroups
          @TaskStartTime = taskstarttime
          @TaskEndTime = taskendtime
          @TaskExpect = taskexpect
          @TaskSummary = tasksummary
          @TaskMode = taskmode
          @TaskPauseDuration = taskpauseduration
          @TaskOwnerUin = taskowneruin
          @TaskRegionId = taskregionid
          @TaskMonitors = taskmonitors
          @TaskPolicy = taskpolicy
          @Tags = tags
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskTitle = params['TaskTitle']
          @TaskDescription = params['TaskDescription']
          @TaskTag = params['TaskTag']
          @TaskStatus = params['TaskStatus']
          @TaskStatusType = params['TaskStatusType']
          @TaskProtectStrategy = params['TaskProtectStrategy']
          @TaskCreateTime = params['TaskCreateTime']
          @TaskUpdateTime = params['TaskUpdateTime']
          unless params['TaskGroups'].nil?
            @TaskGroups = []
            params['TaskGroups'].each do |i|
              taskgroup_tmp = TaskGroup.new
              taskgroup_tmp.deserialize(i)
              @TaskGroups << taskgroup_tmp
            end
          end
          @TaskStartTime = params['TaskStartTime']
          @TaskEndTime = params['TaskEndTime']
          @TaskExpect = params['TaskExpect']
          @TaskSummary = params['TaskSummary']
          @TaskMode = params['TaskMode']
          @TaskPauseDuration = params['TaskPauseDuration']
          @TaskOwnerUin = params['TaskOwnerUin']
          @TaskRegionId = params['TaskRegionId']
          unless params['TaskMonitors'].nil?
            @TaskMonitors = []
            params['TaskMonitors'].each do |i|
              taskmonitor_tmp = TaskMonitor.new
              taskmonitor_tmp.deserialize(i)
              @TaskMonitors << taskmonitor_tmp
            end
          end
          unless params['TaskPolicy'].nil?
            @TaskPolicy = DescribePolicy.new
            @TaskPolicy.deserialize(params['TaskPolicy'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithdescribe_tmp = TagWithDescribe.new
              tagwithdescribe_tmp.deserialize(i)
              @Tags << tagwithdescribe_tmp
            end
          end
        end
      end

      # 从经验模板创建演练时需要配置的任务参数
      class TaskConfig < TencentCloud::Common::AbstractModel
        # @param TaskGroupsConfig: 动作组配置，需要保证配置个数和经验中的动作组个数一致
        # @type TaskGroupsConfig: Array
        # @param TaskTitle: 更改后的演练名称，不填则默认取经验名称
        # @type TaskTitle: String
        # @param TaskDescription: 更改后的演练描述，不填则默认取经验描述
        # @type TaskDescription: String
        # @param TaskMode: 演练执行模式：1----手工执行/ 2 ---自动执行，不填则默认取经验执行模式
        # @type TaskMode: Integer
        # @param TaskPauseDuration: 演练自动暂停时间，单位分钟, 不填则默认取经验自动暂停时间
        # @type TaskPauseDuration: Integer
        # @param Tags: 演练标签信息，不填则默认取经验标签
        # @type Tags: Array

        attr_accessor :TaskGroupsConfig, :TaskTitle, :TaskDescription, :TaskMode, :TaskPauseDuration, :Tags
        
        def initialize(taskgroupsconfig=nil, tasktitle=nil, taskdescription=nil, taskmode=nil, taskpauseduration=nil, tags=nil)
          @TaskGroupsConfig = taskgroupsconfig
          @TaskTitle = tasktitle
          @TaskDescription = taskdescription
          @TaskMode = taskmode
          @TaskPauseDuration = taskpauseduration
          @Tags = tags
        end

        def deserialize(params)
          unless params['TaskGroupsConfig'].nil?
            @TaskGroupsConfig = []
            params['TaskGroupsConfig'].each do |i|
              taskgroupconfig_tmp = TaskGroupConfig.new
              taskgroupconfig_tmp.deserialize(i)
              @TaskGroupsConfig << taskgroupconfig_tmp
            end
          end
          @TaskTitle = params['TaskTitle']
          @TaskDescription = params['TaskDescription']
          @TaskMode = params['TaskMode']
          @TaskPauseDuration = params['TaskPauseDuration']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithcreate_tmp = TagWithCreate.new
              tagwithcreate_tmp.deserialize(i)
              @Tags << tagwithcreate_tmp
            end
          end
        end
      end

      # 任务分组
      class TaskGroup < TencentCloud::Common::AbstractModel
        # @param TaskGroupId: 任务动作ID
        # @type TaskGroupId: Integer
        # @param TaskGroupTitle: 分组标题
        # @type TaskGroupTitle: String
        # @param TaskGroupDescription: 分组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupDescription: String
        # @param TaskGroupOrder: 任务分组顺序
        # @type TaskGroupOrder: Integer
        # @param ObjectTypeId: 对象类型ID
        # @type ObjectTypeId: Integer
        # @param TaskGroupCreateTime: 任务分组创建时间
        # @type TaskGroupCreateTime: String
        # @param TaskGroupUpdateTime: 任务分组更新时间
        # @type TaskGroupUpdateTime: String
        # @param TaskGroupActions: 动作分组动作列表
        # @type TaskGroupActions: Array
        # @param TaskGroupInstanceList: 实例列表
        # @type TaskGroupInstanceList: Array
        # @param TaskGroupMode: 执行模式。1 --- 顺序执行，2 --- 阶段执行
        # @type TaskGroupMode: Integer

        attr_accessor :TaskGroupId, :TaskGroupTitle, :TaskGroupDescription, :TaskGroupOrder, :ObjectTypeId, :TaskGroupCreateTime, :TaskGroupUpdateTime, :TaskGroupActions, :TaskGroupInstanceList, :TaskGroupMode
        
        def initialize(taskgroupid=nil, taskgrouptitle=nil, taskgroupdescription=nil, taskgrouporder=nil, objecttypeid=nil, taskgroupcreatetime=nil, taskgroupupdatetime=nil, taskgroupactions=nil, taskgroupinstancelist=nil, taskgroupmode=nil)
          @TaskGroupId = taskgroupid
          @TaskGroupTitle = taskgrouptitle
          @TaskGroupDescription = taskgroupdescription
          @TaskGroupOrder = taskgrouporder
          @ObjectTypeId = objecttypeid
          @TaskGroupCreateTime = taskgroupcreatetime
          @TaskGroupUpdateTime = taskgroupupdatetime
          @TaskGroupActions = taskgroupactions
          @TaskGroupInstanceList = taskgroupinstancelist
          @TaskGroupMode = taskgroupmode
        end

        def deserialize(params)
          @TaskGroupId = params['TaskGroupId']
          @TaskGroupTitle = params['TaskGroupTitle']
          @TaskGroupDescription = params['TaskGroupDescription']
          @TaskGroupOrder = params['TaskGroupOrder']
          @ObjectTypeId = params['ObjectTypeId']
          @TaskGroupCreateTime = params['TaskGroupCreateTime']
          @TaskGroupUpdateTime = params['TaskGroupUpdateTime']
          unless params['TaskGroupActions'].nil?
            @TaskGroupActions = []
            params['TaskGroupActions'].each do |i|
              taskgroupaction_tmp = TaskGroupAction.new
              taskgroupaction_tmp.deserialize(i)
              @TaskGroupActions << taskgroupaction_tmp
            end
          end
          @TaskGroupInstanceList = params['TaskGroupInstanceList']
          @TaskGroupMode = params['TaskGroupMode']
        end
      end

      # 任务分组动作
      class TaskGroupAction < TencentCloud::Common::AbstractModel
        # @param TaskGroupActionId: 任务分组动作ID
        # @type TaskGroupActionId: Integer
        # @param TaskGroupInstances: 任务分组动作实例列表
        # @type TaskGroupInstances: Array
        # @param ActionId: 动作ID
        # @type ActionId: Integer
        # @param TaskGroupActionOrder: 分组动作顺序
        # @type TaskGroupActionOrder: Integer
        # @param TaskGroupActionGeneralConfiguration: 分组动作通用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupActionGeneralConfiguration: String
        # @param TaskGroupActionCustomConfiguration: 分组动作自定义配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupActionCustomConfiguration: String
        # @param TaskGroupActionStatus: 分组动作状态
        # @type TaskGroupActionStatus: Integer
        # @param TaskGroupActionCreateTime: 动作分组创建时间
        # @type TaskGroupActionCreateTime: String
        # @param TaskGroupActionUpdateTime: 动作分组更新时间
        # @type TaskGroupActionUpdateTime: String
        # @param ActionTitle: 动作名称
        # @type ActionTitle: String
        # @param TaskGroupActionStatusType: 状态类型: 0 -- 无状态，1 -- 成功，2-- 失败，3--终止，4--跳过
        # @type TaskGroupActionStatusType: Integer
        # @param TaskGroupActionRandomId: RandomId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupActionRandomId: Integer
        # @param TaskGroupActionRecoverId: RecoverId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupActionRecoverId: Integer
        # @param TaskGroupActionExecuteId: ExecuteId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupActionExecuteId: Integer
        # @param ActionApiType: 调用api类型，0:tat, 1:云api
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionApiType: Integer
        # @param ActionAttribute: 1:故障，2:恢复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionAttribute: Integer
        # @param ActionType: 动作类型：平台、自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param IsExecuteRedo: 是否可重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExecuteRedo: Boolean
        # @param ActionRisk: 动作风险级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionRisk: String
        # @param TaskGroupActionExecuteTime: 动作运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupActionExecuteTime: Integer

        attr_accessor :TaskGroupActionId, :TaskGroupInstances, :ActionId, :TaskGroupActionOrder, :TaskGroupActionGeneralConfiguration, :TaskGroupActionCustomConfiguration, :TaskGroupActionStatus, :TaskGroupActionCreateTime, :TaskGroupActionUpdateTime, :ActionTitle, :TaskGroupActionStatusType, :TaskGroupActionRandomId, :TaskGroupActionRecoverId, :TaskGroupActionExecuteId, :ActionApiType, :ActionAttribute, :ActionType, :IsExecuteRedo, :ActionRisk, :TaskGroupActionExecuteTime
        
        def initialize(taskgroupactionid=nil, taskgroupinstances=nil, actionid=nil, taskgroupactionorder=nil, taskgroupactiongeneralconfiguration=nil, taskgroupactioncustomconfiguration=nil, taskgroupactionstatus=nil, taskgroupactioncreatetime=nil, taskgroupactionupdatetime=nil, actiontitle=nil, taskgroupactionstatustype=nil, taskgroupactionrandomid=nil, taskgroupactionrecoverid=nil, taskgroupactionexecuteid=nil, actionapitype=nil, actionattribute=nil, actiontype=nil, isexecuteredo=nil, actionrisk=nil, taskgroupactionexecutetime=nil)
          @TaskGroupActionId = taskgroupactionid
          @TaskGroupInstances = taskgroupinstances
          @ActionId = actionid
          @TaskGroupActionOrder = taskgroupactionorder
          @TaskGroupActionGeneralConfiguration = taskgroupactiongeneralconfiguration
          @TaskGroupActionCustomConfiguration = taskgroupactioncustomconfiguration
          @TaskGroupActionStatus = taskgroupactionstatus
          @TaskGroupActionCreateTime = taskgroupactioncreatetime
          @TaskGroupActionUpdateTime = taskgroupactionupdatetime
          @ActionTitle = actiontitle
          @TaskGroupActionStatusType = taskgroupactionstatustype
          @TaskGroupActionRandomId = taskgroupactionrandomid
          @TaskGroupActionRecoverId = taskgroupactionrecoverid
          @TaskGroupActionExecuteId = taskgroupactionexecuteid
          @ActionApiType = actionapitype
          @ActionAttribute = actionattribute
          @ActionType = actiontype
          @IsExecuteRedo = isexecuteredo
          @ActionRisk = actionrisk
          @TaskGroupActionExecuteTime = taskgroupactionexecutetime
        end

        def deserialize(params)
          @TaskGroupActionId = params['TaskGroupActionId']
          unless params['TaskGroupInstances'].nil?
            @TaskGroupInstances = []
            params['TaskGroupInstances'].each do |i|
              taskgroupinstance_tmp = TaskGroupInstance.new
              taskgroupinstance_tmp.deserialize(i)
              @TaskGroupInstances << taskgroupinstance_tmp
            end
          end
          @ActionId = params['ActionId']
          @TaskGroupActionOrder = params['TaskGroupActionOrder']
          @TaskGroupActionGeneralConfiguration = params['TaskGroupActionGeneralConfiguration']
          @TaskGroupActionCustomConfiguration = params['TaskGroupActionCustomConfiguration']
          @TaskGroupActionStatus = params['TaskGroupActionStatus']
          @TaskGroupActionCreateTime = params['TaskGroupActionCreateTime']
          @TaskGroupActionUpdateTime = params['TaskGroupActionUpdateTime']
          @ActionTitle = params['ActionTitle']
          @TaskGroupActionStatusType = params['TaskGroupActionStatusType']
          @TaskGroupActionRandomId = params['TaskGroupActionRandomId']
          @TaskGroupActionRecoverId = params['TaskGroupActionRecoverId']
          @TaskGroupActionExecuteId = params['TaskGroupActionExecuteId']
          @ActionApiType = params['ActionApiType']
          @ActionAttribute = params['ActionAttribute']
          @ActionType = params['ActionType']
          @IsExecuteRedo = params['IsExecuteRedo']
          @ActionRisk = params['ActionRisk']
          @TaskGroupActionExecuteTime = params['TaskGroupActionExecuteTime']
        end
      end

      # 动作组中的动作参数
      class TaskGroupActionConfig < TencentCloud::Common::AbstractModel
        # @param TaskGroupActionOrder: 该动作在动作组中的顺序，从1开始，不填或填错将匹配不到经验中要修改参数的动作
        # @type TaskGroupActionOrder: Integer
        # @param TaskGroupActionGeneralConfiguration: 动作通用参数，需要json序列化传入，可以从查询经验详情接口获取，不填默认使用经验中动作参数
        # @type TaskGroupActionGeneralConfiguration: String
        # @param TaskGroupActionCustomConfiguration: 动作自定义参数，需要json序列化传入，可以从查询经验详情接口获取，不填默认使用经验中动作参数
        # @type TaskGroupActionCustomConfiguration: String

        attr_accessor :TaskGroupActionOrder, :TaskGroupActionGeneralConfiguration, :TaskGroupActionCustomConfiguration
        
        def initialize(taskgroupactionorder=nil, taskgroupactiongeneralconfiguration=nil, taskgroupactioncustomconfiguration=nil)
          @TaskGroupActionOrder = taskgroupactionorder
          @TaskGroupActionGeneralConfiguration = taskgroupactiongeneralconfiguration
          @TaskGroupActionCustomConfiguration = taskgroupactioncustomconfiguration
        end

        def deserialize(params)
          @TaskGroupActionOrder = params['TaskGroupActionOrder']
          @TaskGroupActionGeneralConfiguration = params['TaskGroupActionGeneralConfiguration']
          @TaskGroupActionCustomConfiguration = params['TaskGroupActionCustomConfiguration']
        end
      end

      # 动作组的配置项
      class TaskGroupConfig < TencentCloud::Common::AbstractModel
        # @param TaskGroupInstances: 动作组所关联的实例对象
        # @type TaskGroupInstances: Array
        # @param TaskGroupTitle: 动作组标题，不填默认取经验中的动作组名称
        # @type TaskGroupTitle: String
        # @param TaskGroupDescription: 动作组描述，不填默认取经验中的动作组描述
        # @type TaskGroupDescription: String
        # @param TaskGroupMode: 动作执行模式。1 --- 顺序执行，2 --- 阶段执行, 不填默认取经验中的动作组执行模式
        # @type TaskGroupMode: Integer
        # @param TaskGroupActionsConfig: 动作组中的动作参数，不填默认使用经验中的动作参数，配置时可以只指定想要修改参数的动作
        # @type TaskGroupActionsConfig: Array

        attr_accessor :TaskGroupInstances, :TaskGroupTitle, :TaskGroupDescription, :TaskGroupMode, :TaskGroupActionsConfig
        
        def initialize(taskgroupinstances=nil, taskgrouptitle=nil, taskgroupdescription=nil, taskgroupmode=nil, taskgroupactionsconfig=nil)
          @TaskGroupInstances = taskgroupinstances
          @TaskGroupTitle = taskgrouptitle
          @TaskGroupDescription = taskgroupdescription
          @TaskGroupMode = taskgroupmode
          @TaskGroupActionsConfig = taskgroupactionsconfig
        end

        def deserialize(params)
          @TaskGroupInstances = params['TaskGroupInstances']
          @TaskGroupTitle = params['TaskGroupTitle']
          @TaskGroupDescription = params['TaskGroupDescription']
          @TaskGroupMode = params['TaskGroupMode']
          unless params['TaskGroupActionsConfig'].nil?
            @TaskGroupActionsConfig = []
            params['TaskGroupActionsConfig'].each do |i|
              taskgroupactionconfig_tmp = TaskGroupActionConfig.new
              taskgroupactionconfig_tmp.deserialize(i)
              @TaskGroupActionsConfig << taskgroupactionconfig_tmp
            end
          end
        end
      end

      # 任务分组动作实例
      class TaskGroupInstance < TencentCloud::Common::AbstractModel
        # @param TaskGroupInstanceId: 实例ID
        # @type TaskGroupInstanceId: Integer
        # @param TaskGroupInstanceObjectId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceObjectId: String
        # @param TaskGroupInstanceStatus: 实例动作执行状态
        # @type TaskGroupInstanceStatus: Integer
        # @param TaskGroupInstanceExecuteLog: 实例动作执行日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceExecuteLog: String
        # @param TaskGroupInstanceCreateTime: 实例创建时间
        # @type TaskGroupInstanceCreateTime: String
        # @param TaskGroupInstanceUpdateTime: 实例更新时间
        # @type TaskGroupInstanceUpdateTime: String
        # @param TaskGroupInstanceStatusType: 状态类型: 0 -- 无状态，1 -- 成功，2-- 失败，3--终止，4--跳过
        # @type TaskGroupInstanceStatusType: Integer
        # @param TaskGroupInstanceStartTime: 执行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceStartTime: String
        # @param TaskGroupInstanceEndTime: 执行结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceEndTime: String
        # @param TaskGroupInstanceIsRedo: 实例是否可重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceIsRedo: Boolean
        # @param TaskGroupInstanceExecuteTime: 动作实例执行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceExecuteTime: Integer

        attr_accessor :TaskGroupInstanceId, :TaskGroupInstanceObjectId, :TaskGroupInstanceStatus, :TaskGroupInstanceExecuteLog, :TaskGroupInstanceCreateTime, :TaskGroupInstanceUpdateTime, :TaskGroupInstanceStatusType, :TaskGroupInstanceStartTime, :TaskGroupInstanceEndTime, :TaskGroupInstanceIsRedo, :TaskGroupInstanceExecuteTime
        
        def initialize(taskgroupinstanceid=nil, taskgroupinstanceobjectid=nil, taskgroupinstancestatus=nil, taskgroupinstanceexecutelog=nil, taskgroupinstancecreatetime=nil, taskgroupinstanceupdatetime=nil, taskgroupinstancestatustype=nil, taskgroupinstancestarttime=nil, taskgroupinstanceendtime=nil, taskgroupinstanceisredo=nil, taskgroupinstanceexecutetime=nil)
          @TaskGroupInstanceId = taskgroupinstanceid
          @TaskGroupInstanceObjectId = taskgroupinstanceobjectid
          @TaskGroupInstanceStatus = taskgroupinstancestatus
          @TaskGroupInstanceExecuteLog = taskgroupinstanceexecutelog
          @TaskGroupInstanceCreateTime = taskgroupinstancecreatetime
          @TaskGroupInstanceUpdateTime = taskgroupinstanceupdatetime
          @TaskGroupInstanceStatusType = taskgroupinstancestatustype
          @TaskGroupInstanceStartTime = taskgroupinstancestarttime
          @TaskGroupInstanceEndTime = taskgroupinstanceendtime
          @TaskGroupInstanceIsRedo = taskgroupinstanceisredo
          @TaskGroupInstanceExecuteTime = taskgroupinstanceexecutetime
        end

        def deserialize(params)
          @TaskGroupInstanceId = params['TaskGroupInstanceId']
          @TaskGroupInstanceObjectId = params['TaskGroupInstanceObjectId']
          @TaskGroupInstanceStatus = params['TaskGroupInstanceStatus']
          @TaskGroupInstanceExecuteLog = params['TaskGroupInstanceExecuteLog']
          @TaskGroupInstanceCreateTime = params['TaskGroupInstanceCreateTime']
          @TaskGroupInstanceUpdateTime = params['TaskGroupInstanceUpdateTime']
          @TaskGroupInstanceStatusType = params['TaskGroupInstanceStatusType']
          @TaskGroupInstanceStartTime = params['TaskGroupInstanceStartTime']
          @TaskGroupInstanceEndTime = params['TaskGroupInstanceEndTime']
          @TaskGroupInstanceIsRedo = params['TaskGroupInstanceIsRedo']
          @TaskGroupInstanceExecuteTime = params['TaskGroupInstanceExecuteTime']
        end
      end

      # 任务列表信息
      class TaskListItem < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskTitle: 任务标题
        # @type TaskTitle: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String
        # @param TaskTag: 任务标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTag: String
        # @param TaskStatus: 任务状态(1001 -- 未开始   1002 -- 进行中  1003 -- 暂停中   1004 -- 任务结束)
        # @type TaskStatus: Integer
        # @param TaskCreateTime: 任务创建时间
        # @type TaskCreateTime: String
        # @param TaskUpdateTime: 任务更新时间
        # @type TaskUpdateTime: String
        # @param TaskPreCheckStatus: 0--未开始，1--进行中，2--已完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskPreCheckStatus: Integer
        # @param TaskPreCheckSuccess: 环境检查是否通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskPreCheckSuccess: Boolean

        attr_accessor :TaskId, :TaskTitle, :TaskDescription, :TaskTag, :TaskStatus, :TaskCreateTime, :TaskUpdateTime, :TaskPreCheckStatus, :TaskPreCheckSuccess
        
        def initialize(taskid=nil, tasktitle=nil, taskdescription=nil, tasktag=nil, taskstatus=nil, taskcreatetime=nil, taskupdatetime=nil, taskprecheckstatus=nil, taskprechecksuccess=nil)
          @TaskId = taskid
          @TaskTitle = tasktitle
          @TaskDescription = taskdescription
          @TaskTag = tasktag
          @TaskStatus = taskstatus
          @TaskCreateTime = taskcreatetime
          @TaskUpdateTime = taskupdatetime
          @TaskPreCheckStatus = taskprecheckstatus
          @TaskPreCheckSuccess = taskprechecksuccess
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskTitle = params['TaskTitle']
          @TaskDescription = params['TaskDescription']
          @TaskTag = params['TaskTag']
          @TaskStatus = params['TaskStatus']
          @TaskCreateTime = params['TaskCreateTime']
          @TaskUpdateTime = params['TaskUpdateTime']
          @TaskPreCheckStatus = params['TaskPreCheckStatus']
          @TaskPreCheckSuccess = params['TaskPreCheckSuccess']
        end
      end

      # 监控指标
      class TaskMonitor < TencentCloud::Common::AbstractModel
        # @param TaskMonitorId: 监控指标ID
        # @type TaskMonitorId: Integer
        # @param TaskMonitorObjectTypeId: 监控指标对象类型ID
        # @type TaskMonitorObjectTypeId: Integer
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param InstancesIds: 实例ID列表
        # @type InstancesIds: Array
        # @param MetricChineseName: 中文指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricChineseName: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String

        attr_accessor :TaskMonitorId, :TaskMonitorObjectTypeId, :MetricName, :InstancesIds, :MetricChineseName, :Unit
        
        def initialize(taskmonitorid=nil, taskmonitorobjecttypeid=nil, metricname=nil, instancesids=nil, metricchinesename=nil, unit=nil)
          @TaskMonitorId = taskmonitorid
          @TaskMonitorObjectTypeId = taskmonitorobjecttypeid
          @MetricName = metricname
          @InstancesIds = instancesids
          @MetricChineseName = metricchinesename
          @Unit = unit
        end

        def deserialize(params)
          @TaskMonitorId = params['TaskMonitorId']
          @TaskMonitorObjectTypeId = params['TaskMonitorObjectTypeId']
          @MetricName = params['MetricName']
          @InstancesIds = params['InstancesIds']
          @MetricChineseName = params['MetricChineseName']
          @Unit = params['Unit']
        end
      end

      # 经验库
      class Template < TencentCloud::Common::AbstractModel
        # @param TemplateId: 经验库ID
        # @type TemplateId: Integer
        # @param TemplateTitle: 经验库标题
        # @type TemplateTitle: String
        # @param TemplateDescription: 经验库描述
        # @type TemplateDescription: String
        # @param TemplateTag: 自定义标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateTag: String
        # @param TemplateIsUsed: 使用状态。1 ---- 使用中，2 --- 停用
        # @type TemplateIsUsed: Integer
        # @param TemplateCreateTime: 经验库创建时间
        # @type TemplateCreateTime: String
        # @param TemplateUpdateTime: 经验库更新时间
        # @type TemplateUpdateTime: String
        # @param TemplateMode: 经验库模式。1:手工执行，2:自动执行
        # @type TemplateMode: Integer
        # @param TemplatePauseDuration: 自动暂停时长。单位分钟
        # @type TemplatePauseDuration: Integer
        # @param TemplateOwnerUin: 演练创建者Uin
        # @type TemplateOwnerUin: String
        # @param TemplateRegionId: 地域ID
        # @type TemplateRegionId: Integer
        # @param TemplateGroups: 动作组
        # @type TemplateGroups: Array
        # @param TemplateMonitors: 监控指标
        # @type TemplateMonitors: Array
        # @param TemplatePolicy: 护栏监控
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplatePolicy: :class:`Tencentcloud::Cfg.v20210820.models.TemplatePolicy`
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :TemplateId, :TemplateTitle, :TemplateDescription, :TemplateTag, :TemplateIsUsed, :TemplateCreateTime, :TemplateUpdateTime, :TemplateMode, :TemplatePauseDuration, :TemplateOwnerUin, :TemplateRegionId, :TemplateGroups, :TemplateMonitors, :TemplatePolicy, :Tags
        
        def initialize(templateid=nil, templatetitle=nil, templatedescription=nil, templatetag=nil, templateisused=nil, templatecreatetime=nil, templateupdatetime=nil, templatemode=nil, templatepauseduration=nil, templateowneruin=nil, templateregionid=nil, templategroups=nil, templatemonitors=nil, templatepolicy=nil, tags=nil)
          @TemplateId = templateid
          @TemplateTitle = templatetitle
          @TemplateDescription = templatedescription
          @TemplateTag = templatetag
          @TemplateIsUsed = templateisused
          @TemplateCreateTime = templatecreatetime
          @TemplateUpdateTime = templateupdatetime
          @TemplateMode = templatemode
          @TemplatePauseDuration = templatepauseduration
          @TemplateOwnerUin = templateowneruin
          @TemplateRegionId = templateregionid
          @TemplateGroups = templategroups
          @TemplateMonitors = templatemonitors
          @TemplatePolicy = templatepolicy
          @Tags = tags
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateTitle = params['TemplateTitle']
          @TemplateDescription = params['TemplateDescription']
          @TemplateTag = params['TemplateTag']
          @TemplateIsUsed = params['TemplateIsUsed']
          @TemplateCreateTime = params['TemplateCreateTime']
          @TemplateUpdateTime = params['TemplateUpdateTime']
          @TemplateMode = params['TemplateMode']
          @TemplatePauseDuration = params['TemplatePauseDuration']
          @TemplateOwnerUin = params['TemplateOwnerUin']
          @TemplateRegionId = params['TemplateRegionId']
          unless params['TemplateGroups'].nil?
            @TemplateGroups = []
            params['TemplateGroups'].each do |i|
              templategroup_tmp = TemplateGroup.new
              templategroup_tmp.deserialize(i)
              @TemplateGroups << templategroup_tmp
            end
          end
          unless params['TemplateMonitors'].nil?
            @TemplateMonitors = []
            params['TemplateMonitors'].each do |i|
              templatemonitor_tmp = TemplateMonitor.new
              templatemonitor_tmp.deserialize(i)
              @TemplateMonitors << templatemonitor_tmp
            end
          end
          unless params['TemplatePolicy'].nil?
            @TemplatePolicy = TemplatePolicy.new
            @TemplatePolicy.deserialize(params['TemplatePolicy'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithdescribe_tmp = TagWithDescribe.new
              tagwithdescribe_tmp.deserialize(i)
              @Tags << tagwithdescribe_tmp
            end
          end
        end
      end

      # 任务分组
      class TemplateGroup < TencentCloud::Common::AbstractModel
        # @param TemplateGroupId: 经验库动作ID
        # @type TemplateGroupId: Integer
        # @param TemplateGroupActions: 经验库动作分组动作列表
        # @type TemplateGroupActions: Array
        # @param Title: 分组标题
        # @type Title: String
        # @param Description: 分组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Order: 分组顺序
        # @type Order: Integer
        # @param Mode: 执行模式。1 --- 顺序执行，2 --- 阶段执行
        # @type Mode: Integer
        # @param ObjectTypeId: 对象类型ID
        # @type ObjectTypeId: Integer
        # @param CreateTime: 分组创建时间
        # @type CreateTime: String
        # @param UpdateTime: 分组更新时间
        # @type UpdateTime: String

        attr_accessor :TemplateGroupId, :TemplateGroupActions, :Title, :Description, :Order, :Mode, :ObjectTypeId, :CreateTime, :UpdateTime
        
        def initialize(templategroupid=nil, templategroupactions=nil, title=nil, description=nil, order=nil, mode=nil, objecttypeid=nil, createtime=nil, updatetime=nil)
          @TemplateGroupId = templategroupid
          @TemplateGroupActions = templategroupactions
          @Title = title
          @Description = description
          @Order = order
          @Mode = mode
          @ObjectTypeId = objecttypeid
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TemplateGroupId = params['TemplateGroupId']
          unless params['TemplateGroupActions'].nil?
            @TemplateGroupActions = []
            params['TemplateGroupActions'].each do |i|
              templategroupaction_tmp = TemplateGroupAction.new
              templategroupaction_tmp.deserialize(i)
              @TemplateGroupActions << templategroupaction_tmp
            end
          end
          @Title = params['Title']
          @Description = params['Description']
          @Order = params['Order']
          @Mode = params['Mode']
          @ObjectTypeId = params['ObjectTypeId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 任务分组动作
      class TemplateGroupAction < TencentCloud::Common::AbstractModel
        # @param TemplateGroupActionId: 经验库分组动作ID
        # @type TemplateGroupActionId: Integer
        # @param ActionId: 动作ID
        # @type ActionId: Integer
        # @param Order: 分组动作顺序
        # @type Order: Integer
        # @param GeneralConfiguration: 分组动作通用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeneralConfiguration: String
        # @param CustomConfiguration: 分组动作自定义配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomConfiguration: String
        # @param CreateTime: 动作分组创建时间
        # @type CreateTime: String
        # @param UpdateTime: 动作分组更新时间
        # @type UpdateTime: String
        # @param ActionTitle: 动作名称
        # @type ActionTitle: String
        # @param RandomId: 自身随机id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RandomId: Integer
        # @param RecoverId: 恢复动作id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecoverId: Integer
        # @param ExecuteId: 执行动作id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteId: Integer
        # @param ActionApiType: 调用api类型，0:tat, 1:云api
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionApiType: Integer
        # @param ActionAttribute: 1:故障，2:恢复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionAttribute: Integer
        # @param ActionType: 动作类型：平台和自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String

        attr_accessor :TemplateGroupActionId, :ActionId, :Order, :GeneralConfiguration, :CustomConfiguration, :CreateTime, :UpdateTime, :ActionTitle, :RandomId, :RecoverId, :ExecuteId, :ActionApiType, :ActionAttribute, :ActionType
        
        def initialize(templategroupactionid=nil, actionid=nil, order=nil, generalconfiguration=nil, customconfiguration=nil, createtime=nil, updatetime=nil, actiontitle=nil, randomid=nil, recoverid=nil, executeid=nil, actionapitype=nil, actionattribute=nil, actiontype=nil)
          @TemplateGroupActionId = templategroupactionid
          @ActionId = actionid
          @Order = order
          @GeneralConfiguration = generalconfiguration
          @CustomConfiguration = customconfiguration
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ActionTitle = actiontitle
          @RandomId = randomid
          @RecoverId = recoverid
          @ExecuteId = executeid
          @ActionApiType = actionapitype
          @ActionAttribute = actionattribute
          @ActionType = actiontype
        end

        def deserialize(params)
          @TemplateGroupActionId = params['TemplateGroupActionId']
          @ActionId = params['ActionId']
          @Order = params['Order']
          @GeneralConfiguration = params['GeneralConfiguration']
          @CustomConfiguration = params['CustomConfiguration']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ActionTitle = params['ActionTitle']
          @RandomId = params['RandomId']
          @RecoverId = params['RecoverId']
          @ExecuteId = params['ExecuteId']
          @ActionApiType = params['ActionApiType']
          @ActionAttribute = params['ActionAttribute']
          @ActionType = params['ActionType']
        end
      end

      # 经验库列表信息
      class TemplateListItem < TencentCloud::Common::AbstractModel
        # @param TemplateId: 经验库ID
        # @type TemplateId: Integer
        # @param TemplateTitle: 经验库标题
        # @type TemplateTitle: String
        # @param TemplateDescription: 经验库描述
        # @type TemplateDescription: String
        # @param TemplateTag: 经验库标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateTag: String
        # @param TemplateIsUsed: 经验库状态。1 -- 使用中，2 -- 停用
        # @type TemplateIsUsed: Integer
        # @param TemplateCreateTime: 经验库创建时间
        # @type TemplateCreateTime: String
        # @param TemplateUpdateTime: 经验库更新时间
        # @type TemplateUpdateTime: String
        # @param TemplateUsedNum: 经验库关联的任务数量
        # @type TemplateUsedNum: Integer

        attr_accessor :TemplateId, :TemplateTitle, :TemplateDescription, :TemplateTag, :TemplateIsUsed, :TemplateCreateTime, :TemplateUpdateTime, :TemplateUsedNum
        
        def initialize(templateid=nil, templatetitle=nil, templatedescription=nil, templatetag=nil, templateisused=nil, templatecreatetime=nil, templateupdatetime=nil, templateusednum=nil)
          @TemplateId = templateid
          @TemplateTitle = templatetitle
          @TemplateDescription = templatedescription
          @TemplateTag = templatetag
          @TemplateIsUsed = templateisused
          @TemplateCreateTime = templatecreatetime
          @TemplateUpdateTime = templateupdatetime
          @TemplateUsedNum = templateusednum
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateTitle = params['TemplateTitle']
          @TemplateDescription = params['TemplateDescription']
          @TemplateTag = params['TemplateTag']
          @TemplateIsUsed = params['TemplateIsUsed']
          @TemplateCreateTime = params['TemplateCreateTime']
          @TemplateUpdateTime = params['TemplateUpdateTime']
          @TemplateUsedNum = params['TemplateUsedNum']
        end
      end

      # 监控指标
      class TemplateMonitor < TencentCloud::Common::AbstractModel
        # @param MonitorId: 监控指标ID
        # @type MonitorId: Integer
        # @param ObjectTypeId: 监控指标对象类型ID
        # @type ObjectTypeId: Integer
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param MetricChineseName: 中文指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricChineseName: String

        attr_accessor :MonitorId, :ObjectTypeId, :MetricName, :MetricChineseName
        
        def initialize(monitorid=nil, objecttypeid=nil, metricname=nil, metricchinesename=nil)
          @MonitorId = monitorid
          @ObjectTypeId = objecttypeid
          @MetricName = metricname
          @MetricChineseName = metricchinesename
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
          @ObjectTypeId = params['ObjectTypeId']
          @MetricName = params['MetricName']
          @MetricChineseName = params['MetricChineseName']
        end
      end

      # 保护策略
      class TemplatePolicy < TencentCloud::Common::AbstractModel
        # @param TemplatePolicyIdList: 保护策略ID列表
        # @type TemplatePolicyIdList: Array
        # @param TemplatePolicyRule: 策略规则
        # @type TemplatePolicyRule: String
        # @param TemplatePolicyDealType: 护栏策略生效处理策略 1:顺序执行，2:暂停
        # @type TemplatePolicyDealType: Integer

        attr_accessor :TemplatePolicyIdList, :TemplatePolicyRule, :TemplatePolicyDealType
        
        def initialize(templatepolicyidlist=nil, templatepolicyrule=nil, templatepolicydealtype=nil)
          @TemplatePolicyIdList = templatepolicyidlist
          @TemplatePolicyRule = templatepolicyrule
          @TemplatePolicyDealType = templatepolicydealtype
        end

        def deserialize(params)
          @TemplatePolicyIdList = params['TemplatePolicyIdList']
          @TemplatePolicyRule = params['TemplatePolicyRule']
          @TemplatePolicyDealType = params['TemplatePolicyDealType']
        end
      end

    end
  end
end

