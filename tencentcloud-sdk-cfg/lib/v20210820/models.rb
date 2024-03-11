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
      # 动作库筛选栏位
      class ActionFilter < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键字
        # @type Keyword: String
        # @param Values: 搜索内容值
        # @type Values: Array

        attr_accessor :Keyword, :Values

        def initialize(keyword=nil, values=nil)
          @Keyword = keyword
          @Values = values
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @Values = params['Values']
        end
      end

      # 应用性能监控产品中应用信息
      class ApmServiceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ServiceNameList: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNameList: Array
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer

        attr_accessor :InstanceId, :ServiceNameList, :RegionId

        def initialize(instanceid=nil, servicenamelist=nil, regionid=nil)
          @InstanceId = instanceid
          @ServiceNameList = servicenamelist
          @RegionId = regionid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceNameList = params['ServiceNameList']
          @RegionId = params['RegionId']
        end
      end

      # CreateTaskFromTemplate请求参数结构体
      class CreateTaskFromTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 从经验库中查询到的经验模板ID
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TaskStatus: 任务状态(1001 -- 未开始 1002 -- 进行中 1003 -- 暂停中 1004 -- 任务结束)
        # @type TaskStatus: Integer
        # @param TaskStartTime: 开始时间，固定格式%Y-%m-%d %H:%M:%S
        # @type TaskStartTime: String
        # @param TaskEndTime: 结束时间，固定格式%Y-%m-%d %H:%M:%S
        # @type TaskEndTime: String
        # @param TaskUpdateTime: 更新时间，固定格式%Y-%m-%d %H:%M:%S
        # @type TaskUpdateTime: String
        # @param Tags: 标签对
        # @type Tags: Array
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param TaskId: 演练ID
        # @type TaskId: Array
        # @param ApplicationId: 关联应用ID筛选
        # @type ApplicationId: Array
        # @param ApplicationName: 关联应用筛选
        # @type ApplicationName: Array
        # @param TaskStatusList: 任务状态筛选--支持多选 任务状态(1001 -- 未开始 1002 -- 进行中 1003 -- 暂停中 1004 -- 任务结束)
        # @type TaskStatusList: Array

        attr_accessor :Limit, :Offset, :TaskTitle, :TaskTag, :TaskStatus, :TaskStartTime, :TaskEndTime, :TaskUpdateTime, :Tags, :Filters, :TaskId, :ApplicationId, :ApplicationName, :TaskStatusList

        def initialize(limit=nil, offset=nil, tasktitle=nil, tasktag=nil, taskstatus=nil, taskstarttime=nil, taskendtime=nil, taskupdatetime=nil, tags=nil, filters=nil, taskid=nil, applicationid=nil, applicationname=nil, taskstatuslist=nil)
          @Limit = limit
          @Offset = offset
          @TaskTitle = tasktitle
          @TaskTag = tasktag
          @TaskStatus = taskstatus
          @TaskStartTime = taskstarttime
          @TaskEndTime = taskendtime
          @TaskUpdateTime = taskupdatetime
          @Tags = tags
          @Filters = filters
          @TaskId = taskid
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @TaskStatusList = taskstatuslist
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @TaskTitle = params['TaskTitle']
          @TaskTag = params['TaskTag']
          @TaskStatus = params['TaskStatus']
          @TaskStartTime = params['TaskStartTime']
          @TaskEndTime = params['TaskEndTime']
          @TaskUpdateTime = params['TaskUpdateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithdescribe_tmp = TagWithDescribe.new
              tagwithdescribe_tmp.deserialize(i)
              @Tags << tagwithdescribe_tmp
            end
          end
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              actionfilter_tmp = ActionFilter.new
              actionfilter_tmp.deserialize(i)
              @Filters << actionfilter_tmp
            end
          end
          @TaskId = params['TaskId']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @TaskStatusList = params['TaskStatusList']
        end
      end

      # DescribeTaskList返回参数结构体
      class DescribeTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TaskList: 无
        # @type TaskList: Array
        # @param Total: 列表数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTaskPolicyTriggerLog请求参数结构体
      class DescribeTaskPolicyTriggerLogRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 演练ID
        # @type TaskId: Integer
        # @param Page: 页码
        # @type Page: Integer
        # @param PageSize: 页数量
        # @type PageSize: Integer

        attr_accessor :TaskId, :Page, :PageSize

        def initialize(taskid=nil, page=nil, pagesize=nil)
          @TaskId = taskid
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTaskPolicyTriggerLog返回参数结构体
      class DescribeTaskPolicyTriggerLogResponse < TencentCloud::Common::AbstractModel
        # @param TriggerLogs: 触发日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerLogs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TriggerLogs, :RequestId

        def initialize(triggerlogs=nil, requestid=nil)
          @TriggerLogs = triggerlogs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TriggerLogs'].nil?
            @TriggerLogs = []
            params['TriggerLogs'].each do |i|
              policytriggerlog_tmp = PolicyTriggerLog.new
              policytriggerlog_tmp.deserialize(i)
              @TriggerLogs << policytriggerlog_tmp
            end
          end
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
        # @param ReportInfo: 任务对应的演练报告信息，null表示未导出报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportInfo: :class:`Tencentcloud::Cfg.v20210820.models.TaskReportInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :ReportInfo, :RequestId

        def initialize(task=nil, reportinfo=nil, requestid=nil)
          @Task = task
          @ReportInfo = reportinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          unless params['ReportInfo'].nil?
            @ReportInfo = TaskReportInfo.new
            @ReportInfo.deserialize(params['ReportInfo'])
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
        # @param TemplateSource: 经验来源 0-自建 1-专家推荐
        # @type TemplateSource: Integer
        # @param TemplateIdList: 经验ID
        # @type TemplateIdList: Array
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Title, :Tag, :IsUsed, :Tags, :TemplateSource, :TemplateIdList, :Filters

        def initialize(limit=nil, offset=nil, title=nil, tag=nil, isused=nil, tags=nil, templatesource=nil, templateidlist=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Title = title
          @Tag = tag
          @IsUsed = isused
          @Tags = tags
          @TemplateSource = templatesource
          @TemplateIdList = templateidlist
          @Filters = filters
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
          @TemplateSource = params['TemplateSource']
          @TemplateIdList = params['TemplateIdList']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              actionfilter_tmp = ActionFilter.new
              actionfilter_tmp.deserialize(i)
              @Filters << actionfilter_tmp
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 护栏策略触发日志
      class PolicyTriggerLog < TencentCloud::Common::AbstractModel
        # @param TaskId: 演练ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TriggerType: 类型，0--触发，1--恢复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: Integer
        # @param Content: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param CreatTime: 触发时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatTime: String

        attr_accessor :TaskId, :Name, :TriggerType, :Content, :CreatTime

        def initialize(taskid=nil, name=nil, triggertype=nil, content=nil, creattime=nil)
          @TaskId = taskid
          @Name = name
          @TriggerType = triggertype
          @Content = content
          @CreatTime = creattime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @TriggerType = params['TriggerType']
          @Content = params['Content']
          @CreatTime = params['CreatTime']
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
        # @param TaskPlanId: 关联的演练计划ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskPlanId: Integer
        # @param TaskPlanTitle: 关联的演练计划名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskPlanTitle: String
        # @param ApplicationId: 关联的应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 关联的应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param AlarmPolicy: 关联的告警指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmPolicy: Array
        # @param ApmServiceList: 关联的APM服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmServiceList: Array
        # @param VerifyId: 关联的隐患验证项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyId: Integer
        # @param PolicyDealType: 护栏处理方式，1--顺序回滚，2--演练暂停
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDealType: Integer

        attr_accessor :TaskId, :TaskTitle, :TaskDescription, :TaskTag, :TaskStatus, :TaskStatusType, :TaskProtectStrategy, :TaskCreateTime, :TaskUpdateTime, :TaskGroups, :TaskStartTime, :TaskEndTime, :TaskExpect, :TaskSummary, :TaskMode, :TaskPauseDuration, :TaskOwnerUin, :TaskRegionId, :TaskMonitors, :TaskPolicy, :Tags, :TaskPlanId, :TaskPlanTitle, :ApplicationId, :ApplicationName, :AlarmPolicy, :ApmServiceList, :VerifyId, :PolicyDealType

        def initialize(taskid=nil, tasktitle=nil, taskdescription=nil, tasktag=nil, taskstatus=nil, taskstatustype=nil, taskprotectstrategy=nil, taskcreatetime=nil, taskupdatetime=nil, taskgroups=nil, taskstarttime=nil, taskendtime=nil, taskexpect=nil, tasksummary=nil, taskmode=nil, taskpauseduration=nil, taskowneruin=nil, taskregionid=nil, taskmonitors=nil, taskpolicy=nil, tags=nil, taskplanid=nil, taskplantitle=nil, applicationid=nil, applicationname=nil, alarmpolicy=nil, apmservicelist=nil, verifyid=nil, policydealtype=nil)
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
          @TaskPlanId = taskplanid
          @TaskPlanTitle = taskplantitle
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @AlarmPolicy = alarmpolicy
          @ApmServiceList = apmservicelist
          @VerifyId = verifyid
          @PolicyDealType = policydealtype
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
          @TaskPlanId = params['TaskPlanId']
          @TaskPlanTitle = params['TaskPlanTitle']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @AlarmPolicy = params['AlarmPolicy']
          unless params['ApmServiceList'].nil?
            @ApmServiceList = []
            params['ApmServiceList'].each do |i|
              apmserviceinfo_tmp = ApmServiceInfo.new
              apmserviceinfo_tmp.deserialize(i)
              @ApmServiceList << apmserviceinfo_tmp
            end
          end
          @VerifyId = params['VerifyId']
          @PolicyDealType = params['PolicyDealType']
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
        # @param PolicyDealType: 护栏处理方式，1--顺序回滚，2--演练暂停
        # @type PolicyDealType: Integer

        attr_accessor :TaskGroupsConfig, :TaskTitle, :TaskDescription, :TaskMode, :TaskPauseDuration, :Tags, :PolicyDealType

        def initialize(taskgroupsconfig=nil, tasktitle=nil, taskdescription=nil, taskmode=nil, taskpauseduration=nil, tags=nil, policydealtype=nil)
          @TaskGroupsConfig = taskgroupsconfig
          @TaskTitle = tasktitle
          @TaskDescription = taskdescription
          @TaskMode = taskmode
          @TaskPauseDuration = taskpauseduration
          @Tags = tags
          @PolicyDealType = policydealtype
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
          @PolicyDealType = params['PolicyDealType']
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
        # @param TaskGroupDiscardInstanceList: 不参演的实例列表
        # @type TaskGroupDiscardInstanceList: Array
        # @param TaskGroupSelectedInstanceList: 参演实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupSelectedInstanceList: Array
        # @param TaskGroupInstancesExecuteRule: 机器选取规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstancesExecuteRule: Array

        attr_accessor :TaskGroupId, :TaskGroupTitle, :TaskGroupDescription, :TaskGroupOrder, :ObjectTypeId, :TaskGroupCreateTime, :TaskGroupUpdateTime, :TaskGroupActions, :TaskGroupInstanceList, :TaskGroupMode, :TaskGroupDiscardInstanceList, :TaskGroupSelectedInstanceList, :TaskGroupInstancesExecuteRule

        def initialize(taskgroupid=nil, taskgrouptitle=nil, taskgroupdescription=nil, taskgrouporder=nil, objecttypeid=nil, taskgroupcreatetime=nil, taskgroupupdatetime=nil, taskgroupactions=nil, taskgroupinstancelist=nil, taskgroupmode=nil, taskgroupdiscardinstancelist=nil, taskgroupselectedinstancelist=nil, taskgroupinstancesexecuterule=nil)
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
          @TaskGroupDiscardInstanceList = taskgroupdiscardinstancelist
          @TaskGroupSelectedInstanceList = taskgroupselectedinstancelist
          @TaskGroupInstancesExecuteRule = taskgroupinstancesexecuterule
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
          @TaskGroupDiscardInstanceList = params['TaskGroupDiscardInstanceList']
          @TaskGroupSelectedInstanceList = params['TaskGroupSelectedInstanceList']
          unless params['TaskGroupInstancesExecuteRule'].nil?
            @TaskGroupInstancesExecuteRule = []
            params['TaskGroupInstancesExecuteRule'].each do |i|
              taskgroupinstancesexecuterules_tmp = TaskGroupInstancesExecuteRules.new
              taskgroupinstancesexecuterules_tmp.deserialize(i)
              @TaskGroupInstancesExecuteRule << taskgroupinstancesexecuterules_tmp
            end
          end
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
        # @param TaskGroupInstanceExecuteLog: 实例动作执行日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceExecuteLog: String
        # @param TaskGroupInstanceIsRedo: 实例是否可重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceIsRedo: Boolean
        # @param TaskGroupInstanceExecuteTime: 动作实例执行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstanceExecuteTime: Integer

        attr_accessor :TaskGroupInstanceId, :TaskGroupInstanceObjectId, :TaskGroupInstanceStatus, :TaskGroupInstanceCreateTime, :TaskGroupInstanceUpdateTime, :TaskGroupInstanceStatusType, :TaskGroupInstanceStartTime, :TaskGroupInstanceEndTime, :TaskGroupInstanceExecuteLog, :TaskGroupInstanceIsRedo, :TaskGroupInstanceExecuteTime
        extend Gem::Deprecate
        deprecate :TaskGroupInstanceExecuteLog, :none, 2024, 3
        deprecate :TaskGroupInstanceExecuteLog=, :none, 2024, 3

        def initialize(taskgroupinstanceid=nil, taskgroupinstanceobjectid=nil, taskgroupinstancestatus=nil, taskgroupinstancecreatetime=nil, taskgroupinstanceupdatetime=nil, taskgroupinstancestatustype=nil, taskgroupinstancestarttime=nil, taskgroupinstanceendtime=nil, taskgroupinstanceexecutelog=nil, taskgroupinstanceisredo=nil, taskgroupinstanceexecutetime=nil)
          @TaskGroupInstanceId = taskgroupinstanceid
          @TaskGroupInstanceObjectId = taskgroupinstanceobjectid
          @TaskGroupInstanceStatus = taskgroupinstancestatus
          @TaskGroupInstanceCreateTime = taskgroupinstancecreatetime
          @TaskGroupInstanceUpdateTime = taskgroupinstanceupdatetime
          @TaskGroupInstanceStatusType = taskgroupinstancestatustype
          @TaskGroupInstanceStartTime = taskgroupinstancestarttime
          @TaskGroupInstanceEndTime = taskgroupinstanceendtime
          @TaskGroupInstanceExecuteLog = taskgroupinstanceexecutelog
          @TaskGroupInstanceIsRedo = taskgroupinstanceisredo
          @TaskGroupInstanceExecuteTime = taskgroupinstanceexecutetime
        end

        def deserialize(params)
          @TaskGroupInstanceId = params['TaskGroupInstanceId']
          @TaskGroupInstanceObjectId = params['TaskGroupInstanceObjectId']
          @TaskGroupInstanceStatus = params['TaskGroupInstanceStatus']
          @TaskGroupInstanceCreateTime = params['TaskGroupInstanceCreateTime']
          @TaskGroupInstanceUpdateTime = params['TaskGroupInstanceUpdateTime']
          @TaskGroupInstanceStatusType = params['TaskGroupInstanceStatusType']
          @TaskGroupInstanceStartTime = params['TaskGroupInstanceStartTime']
          @TaskGroupInstanceEndTime = params['TaskGroupInstanceEndTime']
          @TaskGroupInstanceExecuteLog = params['TaskGroupInstanceExecuteLog']
          @TaskGroupInstanceIsRedo = params['TaskGroupInstanceIsRedo']
          @TaskGroupInstanceExecuteTime = params['TaskGroupInstanceExecuteTime']
        end
      end

      # 机器选取规则
      class TaskGroupInstancesExecuteRules < TencentCloud::Common::AbstractModel
        # @param TaskGroupInstancesExecuteMode: 实例选取模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstancesExecuteMode: Integer
        # @param TaskGroupInstancesExecutePercent: 按比例选取模式下选取比例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstancesExecutePercent: Integer
        # @param TaskGroupInstancesExecuteNum: 按数量选取模式下选取数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupInstancesExecuteNum: Integer

        attr_accessor :TaskGroupInstancesExecuteMode, :TaskGroupInstancesExecutePercent, :TaskGroupInstancesExecuteNum

        def initialize(taskgroupinstancesexecutemode=nil, taskgroupinstancesexecutepercent=nil, taskgroupinstancesexecutenum=nil)
          @TaskGroupInstancesExecuteMode = taskgroupinstancesexecutemode
          @TaskGroupInstancesExecutePercent = taskgroupinstancesexecutepercent
          @TaskGroupInstancesExecuteNum = taskgroupinstancesexecutenum
        end

        def deserialize(params)
          @TaskGroupInstancesExecuteMode = params['TaskGroupInstancesExecuteMode']
          @TaskGroupInstancesExecutePercent = params['TaskGroupInstancesExecutePercent']
          @TaskGroupInstancesExecuteNum = params['TaskGroupInstancesExecuteNum']
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
        # @param TaskExpect: 演练是否符合预期 1-符合预期 2-不符合预期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskExpect: Integer
        # @param ApplicationId: 关联应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 关联应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param VerifyId: 验证项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyId: Integer
        # @param TaskStatusType: 状态类型: 0 -- 无状态，1 -- 成功，2-- 失败，3--终止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatusType: Integer

        attr_accessor :TaskId, :TaskTitle, :TaskDescription, :TaskTag, :TaskStatus, :TaskCreateTime, :TaskUpdateTime, :TaskPreCheckStatus, :TaskPreCheckSuccess, :TaskExpect, :ApplicationId, :ApplicationName, :VerifyId, :TaskStatusType

        def initialize(taskid=nil, tasktitle=nil, taskdescription=nil, tasktag=nil, taskstatus=nil, taskcreatetime=nil, taskupdatetime=nil, taskprecheckstatus=nil, taskprechecksuccess=nil, taskexpect=nil, applicationid=nil, applicationname=nil, verifyid=nil, taskstatustype=nil)
          @TaskId = taskid
          @TaskTitle = tasktitle
          @TaskDescription = taskdescription
          @TaskTag = tasktag
          @TaskStatus = taskstatus
          @TaskCreateTime = taskcreatetime
          @TaskUpdateTime = taskupdatetime
          @TaskPreCheckStatus = taskprecheckstatus
          @TaskPreCheckSuccess = taskprechecksuccess
          @TaskExpect = taskexpect
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @VerifyId = verifyid
          @TaskStatusType = taskstatustype
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
          @TaskExpect = params['TaskExpect']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @VerifyId = params['VerifyId']
          @TaskStatusType = params['TaskStatusType']
        end
      end

      # 监控指标
      class TaskMonitor < TencentCloud::Common::AbstractModel
        # @param TaskMonitorId: 演练监控指标ID
        # @type TaskMonitorId: Integer
        # @param MetricId: 监控指标ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricId: Integer
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

        attr_accessor :TaskMonitorId, :MetricId, :TaskMonitorObjectTypeId, :MetricName, :InstancesIds, :MetricChineseName, :Unit

        def initialize(taskmonitorid=nil, metricid=nil, taskmonitorobjecttypeid=nil, metricname=nil, instancesids=nil, metricchinesename=nil, unit=nil)
          @TaskMonitorId = taskmonitorid
          @MetricId = metricid
          @TaskMonitorObjectTypeId = taskmonitorobjecttypeid
          @MetricName = metricname
          @InstancesIds = instancesids
          @MetricChineseName = metricchinesename
          @Unit = unit
        end

        def deserialize(params)
          @TaskMonitorId = params['TaskMonitorId']
          @MetricId = params['MetricId']
          @TaskMonitorObjectTypeId = params['TaskMonitorObjectTypeId']
          @MetricName = params['MetricName']
          @InstancesIds = params['InstancesIds']
          @MetricChineseName = params['MetricChineseName']
          @Unit = params['Unit']
        end
      end

      # 演练报告状态信息
      class TaskReportInfo < TencentCloud::Common::AbstractModel
        # @param Stage: 0--未开始，1--正在导出，2--导出成功，3--导出失败
        # @type Stage: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpirationTime: 有效期截止时间
        # @type ExpirationTime: String
        # @param Expired: 是否有效
        # @type Expired: Boolean
        # @param CosUrl: 演练报告cos文件地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosUrl: String
        # @param Log: 演练报告导出日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: String

        attr_accessor :Stage, :CreateTime, :ExpirationTime, :Expired, :CosUrl, :Log

        def initialize(stage=nil, createtime=nil, expirationtime=nil, expired=nil, cosurl=nil, log=nil)
          @Stage = stage
          @CreateTime = createtime
          @ExpirationTime = expirationtime
          @Expired = expired
          @CosUrl = cosurl
          @Log = log
        end

        def deserialize(params)
          @Stage = params['Stage']
          @CreateTime = params['CreateTime']
          @ExpirationTime = params['ExpirationTime']
          @Expired = params['Expired']
          @CosUrl = params['CosUrl']
          @Log = params['Log']
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
        # @param TemplateSource: 经验来源 0-自建 1-专家推荐
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateSource: Integer
        # @param ApmServiceList: apm应用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmServiceList: Array
        # @param AlarmPolicy: 告警指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmPolicy: Array
        # @param PolicyDealType: 护栏处理方式，1--顺序回滚，2--演练暂停
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDealType: Integer

        attr_accessor :TemplateId, :TemplateTitle, :TemplateDescription, :TemplateTag, :TemplateIsUsed, :TemplateCreateTime, :TemplateUpdateTime, :TemplateMode, :TemplatePauseDuration, :TemplateOwnerUin, :TemplateRegionId, :TemplateGroups, :TemplateMonitors, :TemplatePolicy, :Tags, :TemplateSource, :ApmServiceList, :AlarmPolicy, :PolicyDealType

        def initialize(templateid=nil, templatetitle=nil, templatedescription=nil, templatetag=nil, templateisused=nil, templatecreatetime=nil, templateupdatetime=nil, templatemode=nil, templatepauseduration=nil, templateowneruin=nil, templateregionid=nil, templategroups=nil, templatemonitors=nil, templatepolicy=nil, tags=nil, templatesource=nil, apmservicelist=nil, alarmpolicy=nil, policydealtype=nil)
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
          @TemplateSource = templatesource
          @ApmServiceList = apmservicelist
          @AlarmPolicy = alarmpolicy
          @PolicyDealType = policydealtype
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
          @TemplateSource = params['TemplateSource']
          unless params['ApmServiceList'].nil?
            @ApmServiceList = []
            params['ApmServiceList'].each do |i|
              apmserviceinfo_tmp = ApmServiceInfo.new
              apmserviceinfo_tmp.deserialize(i)
              @ApmServiceList << apmserviceinfo_tmp
            end
          end
          @AlarmPolicy = params['AlarmPolicy']
          @PolicyDealType = params['PolicyDealType']
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
        # @param TemplateSource: 经验库来源 0-自建经验 1-专家推荐
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateSource: Integer

        attr_accessor :TemplateId, :TemplateTitle, :TemplateDescription, :TemplateTag, :TemplateIsUsed, :TemplateCreateTime, :TemplateUpdateTime, :TemplateUsedNum, :TemplateSource

        def initialize(templateid=nil, templatetitle=nil, templatedescription=nil, templatetag=nil, templateisused=nil, templatecreatetime=nil, templateupdatetime=nil, templateusednum=nil, templatesource=nil)
          @TemplateId = templateid
          @TemplateTitle = templatetitle
          @TemplateDescription = templatedescription
          @TemplateTag = templatetag
          @TemplateIsUsed = templateisused
          @TemplateCreateTime = templatecreatetime
          @TemplateUpdateTime = templateupdatetime
          @TemplateUsedNum = templateusednum
          @TemplateSource = templatesource
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
          @TemplateSource = params['TemplateSource']
        end
      end

      # 监控指标
      class TemplateMonitor < TencentCloud::Common::AbstractModel
        # @param MonitorId: pk
        # @type MonitorId: Integer
        # @param MetricId: 监控指标ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricId: Integer
        # @param ObjectTypeId: 监控指标对象类型ID
        # @type ObjectTypeId: Integer
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param MetricChineseName: 中文指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricChineseName: String

        attr_accessor :MonitorId, :MetricId, :ObjectTypeId, :MetricName, :MetricChineseName

        def initialize(monitorid=nil, metricid=nil, objecttypeid=nil, metricname=nil, metricchinesename=nil)
          @MonitorId = monitorid
          @MetricId = metricid
          @ObjectTypeId = objecttypeid
          @MetricName = metricname
          @MetricChineseName = metricchinesename
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
          @MetricId = params['MetricId']
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

      # TriggerPolicy请求参数结构体
      class TriggerPolicyRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 混沌演练ID
        # @type TaskId: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Content: 触发内容
        # @type Content: String
        # @param TriggerType: 触发类型，0--触发；1--恢复
        # @type TriggerType: Integer

        attr_accessor :TaskId, :Name, :Content, :TriggerType

        def initialize(taskid=nil, name=nil, content=nil, triggertype=nil)
          @TaskId = taskid
          @Name = name
          @Content = content
          @TriggerType = triggertype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @Content = params['Content']
          @TriggerType = params['TriggerType']
        end
      end

      # TriggerPolicy返回参数结构体
      class TriggerPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 演练ID
        # @type TaskId: Integer
        # @param Success: 是否触发成功
        # @type Success: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Success, :RequestId

        def initialize(taskid=nil, success=nil, requestid=nil)
          @TaskId = taskid
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Success = params['Success']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

