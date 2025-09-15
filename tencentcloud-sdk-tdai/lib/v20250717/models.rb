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
  module Tdai
    module V20250717
      # 智能体
      class Agent < TencentCloud::Common::AbstractModel
        # @param AgentId: 智能体Id
        # @type AgentId: String
        # @param AgentName: 智能体名称
        # @type AgentName: String
        # @param AgentInternalName: 智能体类型
        # @type AgentInternalName: String
        # @param AgentStatus: 智能体状态
        # @type AgentStatus: String
        # @param DefaultVersion: 默认版本
        # @type DefaultVersion: String
        # @param AgentType: 智能体模式
        # @type AgentType: String
        # @param Description: 描述
        # @type Description: String
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Updater: 更新者
        # @type Updater: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :AgentId, :AgentName, :AgentInternalName, :AgentStatus, :DefaultVersion, :AgentType, :Description, :Creator, :CreateTime, :Updater, :UpdateTime

        def initialize(agentid=nil, agentname=nil, agentinternalname=nil, agentstatus=nil, defaultversion=nil, agenttype=nil, description=nil, creator=nil, createtime=nil, updater=nil, updatetime=nil)
          @AgentId = agentid
          @AgentName = agentname
          @AgentInternalName = agentinternalname
          @AgentStatus = agentstatus
          @DefaultVersion = defaultversion
          @AgentType = agenttype
          @Description = description
          @Creator = creator
          @CreateTime = createtime
          @Updater = updater
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @AgentInternalName = params['AgentInternalName']
          @AgentStatus = params['AgentStatus']
          @DefaultVersion = params['DefaultVersion']
          @AgentType = params['AgentType']
          @Description = params['Description']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          @Updater = params['Updater']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 智能体实例
      class AgentInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 智能体实例ID
        # @type InstanceId: String
        # @param InstanceName: 智能体实例名称
        # @type InstanceName: String
        # @param AgentId: 智能体ID
        # @type AgentId: String
        # @param AgentName: 智能体名称
        # @type AgentName: String
        # @param AgentInternalName: 智能体类型
        # @type AgentInternalName: String
        # @param AgentType: 智能体服务模式
        # @type AgentType: String
        # @param AgentVersion: 智能体版本
        # @type AgentVersion: String
        # @param Status: 智能体实例状态
        # @type Status: String
        # @param Parameters: 智能体实例参数列表
        # @type Parameters: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param Tags: 资源绑定Tag列表
        # @type Tags: Array

        attr_accessor :InstanceId, :InstanceName, :AgentId, :AgentName, :AgentInternalName, :AgentType, :AgentVersion, :Status, :Parameters, :CreateTime, :UpdateTime, :Tags

        def initialize(instanceid=nil, instancename=nil, agentid=nil, agentname=nil, agentinternalname=nil, agenttype=nil, agentversion=nil, status=nil, parameters=nil, createtime=nil, updatetime=nil, tags=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @AgentId = agentid
          @AgentName = agentname
          @AgentInternalName = agentinternalname
          @AgentType = agenttype
          @AgentVersion = agentversion
          @Status = status
          @Parameters = parameters
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @AgentInternalName = params['AgentInternalName']
          @AgentType = params['AgentType']
          @AgentVersion = params['AgentVersion']
          @Status = params['Status']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @Parameters << parameter_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
        end
      end

      # 会话信息
      class ChatBrief < TencentCloud::Common::AbstractModel
        # @param AppId: 主账号Id
        # @type AppId: Integer
        # @param Uin: 主账号uin
        # @type Uin: String
        # @param OwnerUin: 子账号uin
        # @type OwnerUin: String
        # @param InstanceId: 智能体实例ID
        # @type InstanceId: String
        # @param ChatId: 会话ID
        # @type ChatId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param Title: 会话标题
        # @type Title: String
        # @param Status: 会话状态
        # @type Status: String
        # @param LastStreamingId: 最后一条流式ID
        # @type LastStreamingId: String
        # @param LastStreamingTokenId: 最后一条流式TokenID
        # @type LastStreamingTokenId: Integer

        attr_accessor :AppId, :Uin, :OwnerUin, :InstanceId, :ChatId, :CreateTime, :Title, :Status, :LastStreamingId, :LastStreamingTokenId

        def initialize(appid=nil, uin=nil, owneruin=nil, instanceid=nil, chatid=nil, createtime=nil, title=nil, status=nil, laststreamingid=nil, laststreamingtokenid=nil)
          @AppId = appid
          @Uin = uin
          @OwnerUin = owneruin
          @InstanceId = instanceid
          @ChatId = chatid
          @CreateTime = createtime
          @Title = title
          @Status = status
          @LastStreamingId = laststreamingid
          @LastStreamingTokenId = laststreamingtokenid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @OwnerUin = params['OwnerUin']
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
          @CreateTime = params['CreateTime']
          @Title = params['Title']
          @Status = params['Status']
          @LastStreamingId = params['LastStreamingId']
          @LastStreamingTokenId = params['LastStreamingTokenId']
        end
      end

      # 会话详情
      class ChatDetail < TencentCloud::Common::AbstractModel
        # @param Role: 角色
        # @type Role: String
        # @param UserMessage: 用户消息
        # @type UserMessage: String
        # @param AssistantMessage: 助手消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantMessage: Array

        attr_accessor :Role, :UserMessage, :AssistantMessage

        def initialize(role=nil, usermessage=nil, assistantmessage=nil)
          @Role = role
          @UserMessage = usermessage
          @AssistantMessage = assistantmessage
        end

        def deserialize(params)
          @Role = params['Role']
          @UserMessage = params['UserMessage']
          unless params['AssistantMessage'].nil?
            @AssistantMessage = []
            params['AssistantMessage'].each do |i|
              createchatcompletionres_tmp = CreateChatCompletionRes.new
              createchatcompletionres_tmp.deserialize(i)
              @AssistantMessage << createchatcompletionres_tmp
            end
          end
        end
      end

      # 仓库信息
      class CodeRepo < TencentCloud::Common::AbstractModel
        # @param RepoUrl: 代码仓库地址
        # @type RepoUrl: String
        # @param Branch: 分支名
        # @type Branch: String
        # @param GitCommitPipelines: Commit信息
        # @type GitCommitPipelines: Array
        # @param GitORMType: 数据库ORM类型
        # @type GitORMType: String
        # @param GitCodeLanguage: 代码编写语言
        # @type GitCodeLanguage: String

        attr_accessor :RepoUrl, :Branch, :GitCommitPipelines, :GitORMType, :GitCodeLanguage

        def initialize(repourl=nil, branch=nil, gitcommitpipelines=nil, gitormtype=nil, gitcodelanguage=nil)
          @RepoUrl = repourl
          @Branch = branch
          @GitCommitPipelines = gitcommitpipelines
          @GitORMType = gitormtype
          @GitCodeLanguage = gitcodelanguage
        end

        def deserialize(params)
          @RepoUrl = params['RepoUrl']
          @Branch = params['Branch']
          @GitCommitPipelines = params['GitCommitPipelines']
          @GitORMType = params['GitORMType']
          @GitCodeLanguage = params['GitCodeLanguage']
        end
      end

      # ContinueAgentWork请求参数结构体
      class ContinueAgentWorkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，为空时查询所有，如果填写则会根据InstanceId筛选
        # @type InstanceId: String
        # @param AgentTaskType: Agent任务类型
        # @type AgentTaskType: String

        attr_accessor :InstanceId, :AgentTaskType

        def initialize(instanceid=nil, agenttasktype=nil)
          @InstanceId = instanceid
          @AgentTaskType = agenttasktype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentTaskType = params['AgentTaskType']
        end
      end

      # ContinueAgentWork返回参数结构体
      class ContinueAgentWorkResponse < TencentCloud::Common::AbstractModel
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

      # CreateAgentInstance请求参数结构体
      class CreateAgentInstanceRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: 智能体ID
        # @type AgentId: String
        # @param AgentVersion: 智能体版本
        # @type AgentVersion: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param Parameters: 智能体实例的参数列表
        # @type Parameters: Array
        # @param Tags: 资源的标签信息
        # @type Tags: Array

        attr_accessor :AgentId, :AgentVersion, :InstanceName, :Parameters, :Tags

        def initialize(agentid=nil, agentversion=nil, instancename=nil, parameters=nil, tags=nil)
          @AgentId = agentid
          @AgentVersion = agentversion
          @InstanceName = instancename
          @Parameters = parameters
          @Tags = tags
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentVersion = params['AgentVersion']
          @InstanceName = params['InstanceName']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @Parameters << parameter_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
        end
      end

      # CreateAgentInstance返回参数结构体
      class CreateAgentInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 智能体实例ID
        # @type InstanceId: String
        # @param InstanceName: 智能体实例名称
        # @type InstanceName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :InstanceName, :RequestId

        def initialize(instanceid=nil, instancename=nil, requestid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @RequestId = params['RequestId']
        end
      end

      # CreateChatCompletion请求参数结构体
      class CreateChatCompletionRequest < TencentCloud::Common::AbstractModel
        # @param IsHidden: 是否隐藏
        # @type IsHidden: Boolean

        attr_accessor :IsHidden

        def initialize(ishidden=nil)
          @IsHidden = ishidden
        end

        def deserialize(params)
          @IsHidden = params['IsHidden']
        end
      end

      # 对话接口出参
      class CreateChatCompletionRes < TencentCloud::Common::AbstractModel
        # @param Object: 枚举值，返回的数据类型
        # @type Object: String
        # @param Created: 消息时间戳
        # @type Created: Integer
        # @param Model: 输出模型
        # @type Model: String
        # @param AppId: 用户标识
        # @type AppId: Integer
        # @param OwnerUin: 主账户标识
        # @type OwnerUin: String
        # @param Uin: 当前账户标识
        # @type Uin: String
        # @param RequestId: Request ID
        # @type RequestId: String
        # @param ChatId: 当前会话ID
        # @type ChatId: String
        # @param StreamingId: 当前流ID
        # @type StreamingId: String
        # @param TaskId: 当前任务ID
        # @type TaskId: String
        # @param Choices: 消息的数据详情
        # @type Choices: Array

        attr_accessor :Object, :Created, :Model, :AppId, :OwnerUin, :Uin, :RequestId, :ChatId, :StreamingId, :TaskId, :Choices

        def initialize(object=nil, created=nil, model=nil, appid=nil, owneruin=nil, uin=nil, requestid=nil, chatid=nil, streamingid=nil, taskid=nil, choices=nil)
          @Object = object
          @Created = created
          @Model = model
          @AppId = appid
          @OwnerUin = owneruin
          @Uin = uin
          @RequestId = requestid
          @ChatId = chatid
          @StreamingId = streamingid
          @TaskId = taskid
          @Choices = choices
        end

        def deserialize(params)
          @Object = params['Object']
          @Created = params['Created']
          @Model = params['Model']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @Uin = params['Uin']
          @RequestId = params['RequestId']
          @ChatId = params['ChatId']
          @StreamingId = params['StreamingId']
          @TaskId = params['TaskId']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              uploadchoice_tmp = UploadChoice.new
              uploadchoice_tmp.deserialize(i)
              @Choices << uploadchoice_tmp
            end
          end
        end
      end

      # CreateChatCompletion返回参数结构体
      class CreateChatCompletionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentDutyTaskDetail请求参数结构体
      class DescribeAgentDutyTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param Parameters: 业务参数列表
        # @type Parameters: Array

        attr_accessor :Parameters

        def initialize(parameters=nil)
          @Parameters = parameters
        end

        def deserialize(params)
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @Parameters << parameter_tmp
            end
          end
        end
      end

      # DescribeAgentDutyTaskDetail返回参数结构体
      class DescribeAgentDutyTaskDetailResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAgentDutyTasks请求参数结构体
      class DescribeAgentDutyTasksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询开始位置
        # @type Offset: Integer
        # @param Limit: 列表查询数量
        # @type Limit: Integer

        attr_accessor :Offset, :Limit

        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAgentDutyTasks返回参数结构体
      class DescribeAgentDutyTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentInstance请求参数结构体
      class DescribeAgentInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，为空时查询所有，如果填写则会根据InstanceId筛选
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAgentInstance返回参数结构体
      class DescribeAgentInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AgentInstance: 智能体实例详情
        # @type AgentInstance: :class:`Tencentcloud::Tdai.v20250717.models.AgentInstance`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentInstance, :RequestId

        def initialize(agentinstance=nil, requestid=nil)
          @AgentInstance = agentinstance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentInstance'].nil?
            @AgentInstance = AgentInstance.new
            @AgentInstance.deserialize(params['AgentInstance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentInstances请求参数结构体
      class DescribeAgentInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询开始位置
        # @type Offset: Integer
        # @param Limit: 列表查询数量
        # @type Limit: Integer
        # @param InstanceId: 实例ID，为空时查询所有，如果填写则会根据InstanceId筛选
        # @type InstanceId: String
        # @param InstanceName: 实例名，为空时查询所有，如果填写则会根据InstanceName筛选
        # @type InstanceName: String
        # @param AgentId: 智能体ID，为空时查询所有，如果填写则会根据AgentId筛选
        # @type AgentId: String
        # @param AgentName: 智能体名称，为空时查询所有，如果填写则会根据AgentName筛选
        # @type AgentName: String
        # @param AgentInternalName: 智能体类型，为空时查询所有，如果填写则会根据AgentName筛选
        # @type AgentInternalName: String
        # @param Status: 智能体实例状态，为空时查询所有，如果填写则会根据Status筛选
        # @type Status: String
        # @param TagFilter: 标签过滤信息
        # @type TagFilter: Array

        attr_accessor :Offset, :Limit, :InstanceId, :InstanceName, :AgentId, :AgentName, :AgentInternalName, :Status, :TagFilter

        def initialize(offset=nil, limit=nil, instanceid=nil, instancename=nil, agentid=nil, agentname=nil, agentinternalname=nil, status=nil, tagfilter=nil)
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @InstanceName = instancename
          @AgentId = agentid
          @AgentName = agentname
          @AgentInternalName = agentinternalname
          @Status = status
          @TagFilter = tagfilter
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @AgentInternalName = params['AgentInternalName']
          @Status = params['Status']
          unless params['TagFilter'].nil?
            @TagFilter = []
            params['TagFilter'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilter << tagfilter_tmp
            end
          end
        end
      end

      # DescribeAgentInstances返回参数结构体
      class DescribeAgentInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果总数量
        # @type TotalCount: Integer
        # @param Items: 智能体实例列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              agentinstance_tmp = AgentInstance.new
              agentinstance_tmp.deserialize(i)
              @Items << agentinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgents请求参数结构体
      class DescribeAgentsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询开始位置
        # @type Offset: Integer
        # @param Limit: 列表查询数量
        # @type Limit: Integer
        # @param AgentId: 智能体ID，为空时查询所有，如果填写则会根据AgentId筛选
        # @type AgentId: String
        # @param AgentName: 智能体名称，为空时查询所有，如果填写则会根据AgentName筛选
        # @type AgentName: String
        # @param AgentInternalName: 智能体类型，为空时查询所有，如果填写则会根据AgentName筛选
        # @type AgentInternalName: String
        # @param AgentStatus: 智能体状态，为空时查询所有，如果填写则会根据AgentStatus筛选
        # @type AgentStatus: String

        attr_accessor :Offset, :Limit, :AgentId, :AgentName, :AgentInternalName, :AgentStatus

        def initialize(offset=nil, limit=nil, agentid=nil, agentname=nil, agentinternalname=nil, agentstatus=nil)
          @Offset = offset
          @Limit = limit
          @AgentId = agentid
          @AgentName = agentname
          @AgentInternalName = agentinternalname
          @AgentStatus = agentstatus
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @AgentInternalName = params['AgentInternalName']
          @AgentStatus = params['AgentStatus']
        end
      end

      # DescribeAgents返回参数结构体
      class DescribeAgentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果总数量
        # @type TotalCount: Integer
        # @param Items: 智能体列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              agent_tmp = Agent.new
              agent_tmp.deserialize(i)
              @Items << agent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChatDetail请求参数结构体
      class DescribeChatDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 智能体ID
        # @type InstanceId: String
        # @param ChatId: 会话Id
        # @type ChatId: String
        # @param LastStreamingTokenId: 最后一条流式TokenID
        # @type LastStreamingTokenId: Integer

        attr_accessor :InstanceId, :ChatId, :LastStreamingTokenId

        def initialize(instanceid=nil, chatid=nil, laststreamingtokenid=nil)
          @InstanceId = instanceid
          @ChatId = chatid
          @LastStreamingTokenId = laststreamingtokenid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
          @LastStreamingTokenId = params['LastStreamingTokenId']
        end
      end

      # DescribeChatDetail返回参数结构体
      class DescribeChatDetailResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 主账号ID
        # @type AppId: Integer
        # @param Uin: 主账号Uin
        # @type Uin: String
        # @param OwnerUin: 子账号Uin
        # @type OwnerUin: String
        # @param InstanceId: 智能体实例ID
        # @type InstanceId: String
        # @param ChatId: 会话ID
        # @type ChatId: String
        # @param LastStreamingTokenId: 最后一条流式TokenID
        # @type LastStreamingTokenId: Integer
        # @param StreamingCount: Streaming数量
        # @type StreamingCount: Integer
        # @param Streamings: 对话流列表
        # @type Streamings: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :Uin, :OwnerUin, :InstanceId, :ChatId, :LastStreamingTokenId, :StreamingCount, :Streamings, :RequestId

        def initialize(appid=nil, uin=nil, owneruin=nil, instanceid=nil, chatid=nil, laststreamingtokenid=nil, streamingcount=nil, streamings=nil, requestid=nil)
          @AppId = appid
          @Uin = uin
          @OwnerUin = owneruin
          @InstanceId = instanceid
          @ChatId = chatid
          @LastStreamingTokenId = laststreamingtokenid
          @StreamingCount = streamingcount
          @Streamings = streamings
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @OwnerUin = params['OwnerUin']
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
          @LastStreamingTokenId = params['LastStreamingTokenId']
          @StreamingCount = params['StreamingCount']
          unless params['Streamings'].nil?
            @Streamings = []
            params['Streamings'].each do |i|
              chatdetail_tmp = ChatDetail.new
              chatdetail_tmp.deserialize(i)
              @Streamings << chatdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChats请求参数结构体
      class DescribeChatsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 智能体ID
        # @type InstanceId: String
        # @param Offset: 查询开始位置
        # @type Offset: Integer
        # @param Limit: 列表查询数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeChats返回参数结构体
      class DescribeChatsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果总数量
        # @type TotalCount: Integer
        # @param Chats: 对话流列表
        # @type Chats: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Chats, :RequestId

        def initialize(totalcount=nil, chats=nil, requestid=nil)
          @TotalCount = totalcount
          @Chats = chats
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Chats'].nil?
            @Chats = []
            params['Chats'].each do |i|
              chatbrief_tmp = ChatBrief.new
              chatbrief_tmp.deserialize(i)
              @Chats << chatbrief_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReportUrl请求参数结构体
      class DescribeReportUrlRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeReportUrl返回参数结构体
      class DescribeReportUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # 实例信息
      class InstanceInfos < TencentCloud::Common::AbstractModel
        # @param Region: 数据库地域
        # @type Region: String
        # @param InstanceId: 数据库实例id
        # @type InstanceId: String
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param TableName: 表名称
        # @type TableName: String

        attr_accessor :Region, :InstanceId, :DatabaseName, :TableName

        def initialize(region=nil, instanceid=nil, databasename=nil, tablename=nil)
          @Region = region
          @InstanceId = instanceid
          @DatabaseName = databasename
          @TableName = tablename
        end

        def deserialize(params)
          @Region = params['Region']
          @InstanceId = params['InstanceId']
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
        end
      end

      # IsolateAgentInstance请求参数结构体
      class IsolateAgentInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，为空时查询所有，如果填写则会根据InstanceId筛选
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # IsolateAgentInstance返回参数结构体
      class IsolateAgentInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAgentInstanceParameters请求参数结构体
      class ModifyAgentInstanceParametersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TaskType: 任务类型, 可选，默认default
        # @type TaskType: String
        # @param Parameters: 更新的参数列表
        # @type Parameters: :class:`Tencentcloud::Tdai.v20250717.models.Parameter`
        # @param SqlAgentParameter: 风险SQL智能体参数列表
        # @type SqlAgentParameter: :class:`Tencentcloud::Tdai.v20250717.models.SqlAgentParameter`

        attr_accessor :InstanceId, :TaskType, :Parameters, :SqlAgentParameter

        def initialize(instanceid=nil, tasktype=nil, parameters=nil, sqlagentparameter=nil)
          @InstanceId = instanceid
          @TaskType = tasktype
          @Parameters = parameters
          @SqlAgentParameter = sqlagentparameter
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TaskType = params['TaskType']
          unless params['Parameters'].nil?
            @Parameters = Parameter.new
            @Parameters.deserialize(params['Parameters'])
          end
          unless params['SqlAgentParameter'].nil?
            @SqlAgentParameter = SqlAgentParameter.new
            @SqlAgentParameter.deserialize(params['SqlAgentParameter'])
          end
        end
      end

      # ModifyAgentInstanceParameters返回参数结构体
      class ModifyAgentInstanceParametersResponse < TencentCloud::Common::AbstractModel
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

      # ModifyChatTitle请求参数结构体
      class ModifyChatTitleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 智能体ID
        # @type InstanceId: String
        # @param ChatId: 会话Id
        # @type ChatId: String
        # @param Title: 标题
        # @type Title: String

        attr_accessor :InstanceId, :ChatId, :Title

        def initialize(instanceid=nil, chatid=nil, title=nil)
          @InstanceId = instanceid
          @ChatId = chatid
          @Title = title
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
          @Title = params['Title']
        end
      end

      # ModifyChatTitle返回参数结构体
      class ModifyChatTitleResponse < TencentCloud::Common::AbstractModel
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

      # 智能体实例的参数值
      class Parameter < TencentCloud::Common::AbstractModel
        # @param Key: 参数键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param ValueType: 枚举值，可取值包括：string(字符串), int(整型), float(浮点型), bool(布尔型), struct(结构体), array(数组),
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueType: String

        attr_accessor :Key, :Value, :ValueType

        def initialize(key=nil, value=nil, valuetype=nil)
          @Key = key
          @Value = value
          @ValueType = valuetype
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @ValueType = params['ValueType']
        end
      end

      # PauseAgentWork请求参数结构体
      class PauseAgentWorkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，为空时查询所有，如果填写则会根据InstanceId筛选
        # @type InstanceId: String
        # @param AgentTaskType: Agent任务类型
        # @type AgentTaskType: String

        attr_accessor :InstanceId, :AgentTaskType

        def initialize(instanceid=nil, agenttasktype=nil)
          @InstanceId = instanceid
          @AgentTaskType = agenttasktype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentTaskType = params['AgentTaskType']
        end
      end

      # PauseAgentWork返回参数结构体
      class PauseAgentWorkResponse < TencentCloud::Common::AbstractModel
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

      # RecoverAgentInstance请求参数结构体
      class RecoverAgentInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，为空时查询所有，如果填写则会根据InstanceId筛选
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # RecoverAgentInstance返回参数结构体
      class RecoverAgentInstanceResponse < TencentCloud::Common::AbstractModel
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

      # RemoveChat请求参数结构体
      class RemoveChatRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 智能体ID
        # @type InstanceId: String
        # @param ChatId: 会话Id
        # @type ChatId: String

        attr_accessor :InstanceId, :ChatId

        def initialize(instanceid=nil, chatid=nil)
          @InstanceId = instanceid
          @ChatId = chatid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
        end
      end

      # RemoveChat返回参数结构体
      class RemoveChatResponse < TencentCloud::Common::AbstractModel
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

      # 风险SQL智能体参数
      class SqlAgentParameter < TencentCloud::Common::AbstractModel
        # @param InstanceInfos: 数据库实例信息列表
        # @type InstanceInfos: Array
        # @param CodeRepo: 代码仓库信息
        # @type CodeRepo: :class:`Tencentcloud::Tdai.v20250717.models.CodeRepo`

        attr_accessor :InstanceInfos, :CodeRepo

        def initialize(instanceinfos=nil, coderepo=nil)
          @InstanceInfos = instanceinfos
          @CodeRepo = coderepo
        end

        def deserialize(params)
          unless params['InstanceInfos'].nil?
            @InstanceInfos = []
            params['InstanceInfos'].each do |i|
              instanceinfos_tmp = InstanceInfos.new
              instanceinfos_tmp.deserialize(i)
              @InstanceInfos << instanceinfos_tmp
            end
          end
          unless params['CodeRepo'].nil?
            @CodeRepo = CodeRepo.new
            @CodeRepo.deserialize(params['CodeRepo'])
          end
        end
      end

      # 通过标签对资源进行过滤
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

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

      # 资源标签
      class TagItem < TencentCloud::Common::AbstractModel
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

      # TerminateAgentInstance请求参数结构体
      class TerminateAgentInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，为空时查询所有，如果填写则会根据InstanceId筛选
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TerminateAgentInstance返回参数结构体
      class TerminateAgentInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 流式输出消息数据体
      class UploadChoice < TencentCloud::Common::AbstractModel
        # @param Index: 消息索引
        # @type Index: Integer
        # @param StepNo: 当前消息步骤
        # @type StepNo: Integer
        # @param CurrentStep: 当前步骤
        # @type CurrentStep: String
        # @param Delta: 增量信息
        # @type Delta: :class:`Tencentcloud::Tdai.v20250717.models.UploadDelta`
        # @param FinishReason: 结束原因
        # @type FinishReason: String
        # @param ErrorMessage: 错误信息，FinishReason为error时有效
        # @type ErrorMessage: String

        attr_accessor :Index, :StepNo, :CurrentStep, :Delta, :FinishReason, :ErrorMessage

        def initialize(index=nil, stepno=nil, currentstep=nil, delta=nil, finishreason=nil, errormessage=nil)
          @Index = index
          @StepNo = stepno
          @CurrentStep = currentstep
          @Delta = delta
          @FinishReason = finishreason
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @Index = params['Index']
          @StepNo = params['StepNo']
          @CurrentStep = params['CurrentStep']
          unless params['Delta'].nil?
            @Delta = UploadDelta.new
            @Delta.deserialize(params['Delta'])
          end
          @FinishReason = params['FinishReason']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # 流式接口当前消息数据详细内容
      class UploadDelta < TencentCloud::Common::AbstractModel
        # @param StepBrief: 步骤摘要
        # @type StepBrief: String
        # @param Content: 步骤详情
        # @type Content: String

        attr_accessor :StepBrief, :Content

        def initialize(stepbrief=nil, content=nil)
          @StepBrief = stepbrief
          @Content = content
        end

        def deserialize(params)
          @StepBrief = params['StepBrief']
          @Content = params['Content']
        end
      end

    end
  end
end

