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
        # @param DeployPlace: 架构：共享版-intranet，企业版-userVpc
        # @type DeployPlace: String
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

        attr_accessor :AgentId, :AgentName, :AgentInternalName, :DeployPlace, :AgentStatus, :DefaultVersion, :AgentType, :Description, :Creator, :CreateTime, :Updater, :UpdateTime

        def initialize(agentid=nil, agentname=nil, agentinternalname=nil, deployplace=nil, agentstatus=nil, defaultversion=nil, agenttype=nil, description=nil, creator=nil, createtime=nil, updater=nil, updatetime=nil)
          @AgentId = agentid
          @AgentName = agentname
          @AgentInternalName = agentinternalname
          @DeployPlace = deployplace
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
          @DeployPlace = params['DeployPlace']
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

      # 智能体值守任务信息
      class AgentDutyTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param StartTime: 任务开始运行时间
        # @type StartTime: String
        # @param FinishTime: 任务结束时间
        # @type FinishTime: String
        # @param Status: 任务状态
        # @type Status: String
        # @param ResultExtraKey: 对外展示的Extra信息
        # @type ResultExtraKey: Array
        # @param Extra: 业务的额外敏感信息
        # @type Extra: Array

        attr_accessor :TaskId, :CreateTime, :StartTime, :FinishTime, :Status, :ResultExtraKey, :Extra

        def initialize(taskid=nil, createtime=nil, starttime=nil, finishtime=nil, status=nil, resultextrakey=nil, extra=nil)
          @TaskId = taskid
          @CreateTime = createtime
          @StartTime = starttime
          @FinishTime = finishtime
          @Status = status
          @ResultExtraKey = resultextrakey
          @Extra = extra
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @Status = params['Status']
          @ResultExtraKey = params['ResultExtraKey']
          unless params['Extra'].nil?
            @Extra = []
            params['Extra'].each do |i|
              extrainfo_tmp = ExtraInfo.new
              extrainfo_tmp.deserialize(i)
              @Extra << extrainfo_tmp
            end
          end
        end
      end

      # 智能体实例
      class AgentInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>智能体实例ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>智能体实例名称</p>
        # @type InstanceName: String
        # @param AgentId: <p>智能体ID</p>
        # @type AgentId: String
        # @param AgentName: <p>智能体名称</p>
        # @type AgentName: String
        # @param AgentInternalName: <p>智能体类型</p>
        # @type AgentInternalName: String
        # @param AgentType: <p>智能体服务模式</p>
        # @type AgentType: String
        # @param AgentVersion: <p>智能体版本</p>
        # @type AgentVersion: String
        # @param Status: <p>智能体实例状态</p>
        # @type Status: String
        # @param Parameters: <p>智能体实例参数列表</p>
        # @type Parameters: Array
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>修改时间</p>
        # @type UpdateTime: String
        # @param Tags: <p>资源绑定Tag列表</p>
        # @type Tags: Array
        # @param DeployPlace: <p>部署位置,intranet-共享版，userVpc-专享版</p>
        # @type DeployPlace: String
        # @param PolicyIds: <p>关联的告警策略ID。</p>
        # @type PolicyIds: Array
        # @param ClawConfig: <p>无</p>
        # @type ClawConfig: :class:`Tencentcloud::Tdai.v20250717.models.ClawConfigInfo`
        # @param InstanceType: <p>无</p>
        # @type InstanceType: String
        # @param AllowedActions: <p>无</p>
        # @type AllowedActions: Array
        # @param LastActiveTime: <p>无</p>
        # @type LastActiveTime: String
        # @param Description: <p>无</p>
        # @type Description: String
        # @param CreatingProgress: <p>发货进度详情</p>
        # @type CreatingProgress: :class:`Tencentcloud::Tdai.v20250717.models.CreatingProgress`

        attr_accessor :InstanceId, :InstanceName, :AgentId, :AgentName, :AgentInternalName, :AgentType, :AgentVersion, :Status, :Parameters, :CreateTime, :UpdateTime, :Tags, :DeployPlace, :PolicyIds, :ClawConfig, :InstanceType, :AllowedActions, :LastActiveTime, :Description, :CreatingProgress

        def initialize(instanceid=nil, instancename=nil, agentid=nil, agentname=nil, agentinternalname=nil, agenttype=nil, agentversion=nil, status=nil, parameters=nil, createtime=nil, updatetime=nil, tags=nil, deployplace=nil, policyids=nil, clawconfig=nil, instancetype=nil, allowedactions=nil, lastactivetime=nil, description=nil, creatingprogress=nil)
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
          @DeployPlace = deployplace
          @PolicyIds = policyids
          @ClawConfig = clawconfig
          @InstanceType = instancetype
          @AllowedActions = allowedactions
          @LastActiveTime = lastactivetime
          @Description = description
          @CreatingProgress = creatingprogress
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
          @DeployPlace = params['DeployPlace']
          @PolicyIds = params['PolicyIds']
          unless params['ClawConfig'].nil?
            @ClawConfig = ClawConfigInfo.new
            @ClawConfig.deserialize(params['ClawConfig'])
          end
          @InstanceType = params['InstanceType']
          @AllowedActions = params['AllowedActions']
          @LastActiveTime = params['LastActiveTime']
          @Description = params['Description']
          unless params['CreatingProgress'].nil?
            @CreatingProgress = CreatingProgress.new
            @CreatingProgress.deserialize(params['CreatingProgress'])
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

      # databaseClaw实例配置信息
      class ClawConfigInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: <p>无</p>
        # @type TemplateId: Integer
        # @param DbTypes: <p>无</p>
        # @type DbTypes: Array
        # @param Deploy: <p>无</p>
        # @type Deploy: :class:`Tencentcloud::Tdai.v20250717.models.ClawDeployInfo`

        attr_accessor :TemplateId, :DbTypes, :Deploy

        def initialize(templateid=nil, dbtypes=nil, deploy=nil)
          @TemplateId = templateid
          @DbTypes = dbtypes
          @Deploy = deploy
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @DbTypes = params['DbTypes']
          unless params['Deploy'].nil?
            @Deploy = ClawDeployInfo.new
            @Deploy.deserialize(params['Deploy'])
          end
        end
      end

      # databaseClaw实例部署详情
      class ClawDeployInfo < TencentCloud::Common::AbstractModel
        # @param UserVpcId: <p>无</p>
        # @type UserVpcId: String
        # @param UserSubnetId: <p>无</p>
        # @type UserSubnetId: String
        # @param UserVpcRegion: <p>无</p>
        # @type UserVpcRegion: String

        attr_accessor :UserVpcId, :UserSubnetId, :UserVpcRegion

        def initialize(uservpcid=nil, usersubnetid=nil, uservpcregion=nil)
          @UserVpcId = uservpcid
          @UserSubnetId = usersubnetid
          @UserVpcRegion = uservpcregion
        end

        def deserialize(params)
          @UserVpcId = params['UserVpcId']
          @UserSubnetId = params['UserSubnetId']
          @UserVpcRegion = params['UserVpcRegion']
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
        # @param AgentId: <p>智能体ID</p>
        # @type AgentId: String
        # @param AgentVersion: <p>智能体版本</p>
        # @type AgentVersion: String
        # @param InstanceName: <p>实例名</p>
        # @type InstanceName: String
        # @param Parameters: <p>智能体实例的参数列表</p>
        # @type Parameters: Array
        # @param Tags: <p>资源的标签信息</p>
        # @type Tags: Array
        # @param InstanceType: <p>无</p>
        # @type InstanceType: String
        # @param TemplateId: <p>无</p>
        # @type TemplateId: Integer
        # @param Skills: <p>无</p>
        # @type Skills: Array
        # @param SoulId: <p>无</p>
        # @type SoulId: Integer
        # @param Description: <p>无</p>
        # @type Description: String

        attr_accessor :AgentId, :AgentVersion, :InstanceName, :Parameters, :Tags, :InstanceType, :TemplateId, :Skills, :SoulId, :Description

        def initialize(agentid=nil, agentversion=nil, instancename=nil, parameters=nil, tags=nil, instancetype=nil, templateid=nil, skills=nil, soulid=nil, description=nil)
          @AgentId = agentid
          @AgentVersion = agentversion
          @InstanceName = instancename
          @Parameters = parameters
          @Tags = tags
          @InstanceType = instancetype
          @TemplateId = templateid
          @Skills = skills
          @SoulId = soulid
          @Description = description
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
          @InstanceType = params['InstanceType']
          @TemplateId = params['TemplateId']
          @Skills = params['Skills']
          @SoulId = params['SoulId']
          @Description = params['Description']
        end
      end

      # CreateAgentInstance返回参数结构体
      class CreateAgentInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>智能体实例ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>智能体实例名称</p>
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
        # @param InputContent: <p>输入内容</p>
        # @type InputContent: String
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param ChatId: <p>对话窗口ID，空值表示新的会话</p>
        # @type ChatId: String
        # @param IsHidden: <p>是否隐藏</p>
        # @type IsHidden: Boolean
        # @param IsChatHidden: <p>是否隐藏会话</p>
        # @type IsChatHidden: Boolean

        attr_accessor :InputContent, :InstanceId, :ChatId, :IsHidden, :IsChatHidden

        def initialize(inputcontent=nil, instanceid=nil, chatid=nil, ishidden=nil, ischathidden=nil)
          @InputContent = inputcontent
          @InstanceId = instanceid
          @ChatId = chatid
          @IsHidden = ishidden
          @IsChatHidden = ischathidden
        end

        def deserialize(params)
          @InputContent = params['InputContent']
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
          @IsHidden = params['IsHidden']
          @IsChatHidden = params['IsChatHidden']
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

      # CreateMemoryPlusSpace请求参数结构体
      class CreateMemoryPlusSpaceRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>Memory 实例的自定义名称，用于唯一标识和管理实例。支持 60 个字符内的中英文、数字、中划线（-）及下划线（_）。</p>
        # @type Name: String
        # @param Description: <p>emory 实例的简要描述，包括使用场景、用途或背景信息，便于日常运维识别。长度限制为 0-200 个字符。</p>
        # @type Description: String
        # @param ResourceTags: <p>以键值对（Key-Value）形式为 Memory 实例绑定的标签，用于项目管理、成本分摊、环境隔离等场景。</p>
        # @type ResourceTags: Array
        # @param GoodsNum: <p>单次批量创建 Memory 实例的数量。取值范围为 1-50。</p>
        # @type GoodsNum: Integer

        attr_accessor :Name, :Description, :ResourceTags, :GoodsNum

        def initialize(name=nil, description=nil, resourcetags=nil, goodsnum=nil)
          @Name = name
          @Description = description
          @ResourceTags = resourcetags
          @GoodsNum = goodsnum
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @GoodsNum = params['GoodsNum']
        end
      end

      # CreateMemoryPlusSpace返回参数结构体
      class CreateMemoryPlusSpaceResponse < TencentCloud::Common::AbstractModel
        # @param SpaceIds: <p>实例 ID 列表。</p>
        # @type SpaceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpaceIds, :RequestId

        def initialize(spaceids=nil, requestid=nil)
          @SpaceIds = spaceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SpaceIds = params['SpaceIds']
          @RequestId = params['RequestId']
        end
      end

      # 发货步骤描述
      class CreatingProgress < TencentCloud::Common::AbstractModel
        # @param TotalSteps: <p>总步骤数</p>
        # @type TotalSteps: Integer
        # @param CurrentStep: <p>当前步骤</p>
        # @type CurrentStep: Integer
        # @param Steps: <p>步骤详情</p>
        # @type Steps: Array

        attr_accessor :TotalSteps, :CurrentStep, :Steps

        def initialize(totalsteps=nil, currentstep=nil, steps=nil)
          @TotalSteps = totalsteps
          @CurrentStep = currentstep
          @Steps = steps
        end

        def deserialize(params)
          @TotalSteps = params['TotalSteps']
          @CurrentStep = params['CurrentStep']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              creatingstepinfo_tmp = CreatingStepInfo.new
              creatingstepinfo_tmp.deserialize(i)
              @Steps << creatingstepinfo_tmp
            end
          end
        end
      end

      # 发货步骤详情
      class CreatingStepInfo < TencentCloud::Common::AbstractModel
        # @param StepName: <p>步骤名称</p>
        # @type StepName: String
        # @param StepDesc: <p>步骤描述</p>
        # @type StepDesc: String
        # @param Status: <p>步骤状态</p>
        # @type Status: String
        # @param FinishTime: <p>完成时间</p>
        # @type FinishTime: String
        # @param ErrMsg: <p>错误信息描述</p>
        # @type ErrMsg: String

        attr_accessor :StepName, :StepDesc, :Status, :FinishTime, :ErrMsg

        def initialize(stepname=nil, stepdesc=nil, status=nil, finishtime=nil, errmsg=nil)
          @StepName = stepname
          @StepDesc = stepdesc
          @Status = status
          @FinishTime = finishtime
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @StepName = params['StepName']
          @StepDesc = params['StepDesc']
          @Status = params['Status']
          @FinishTime = params['FinishTime']
          @ErrMsg = params['ErrMsg']
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
        # @param AgentDutyTask: 任务详细信息
        # @type AgentDutyTask: :class:`Tencentcloud::Tdai.v20250717.models.AgentDutyTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentDutyTask, :RequestId

        def initialize(agentdutytask=nil, requestid=nil)
          @AgentDutyTask = agentdutytask
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentDutyTask'].nil?
            @AgentDutyTask = AgentDutyTask.new
            @AgentDutyTask.deserialize(params['AgentDutyTask'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentDutyTasks请求参数结构体
      class DescribeAgentDutyTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: agent实例ID
        # @type InstanceId: String
        # @param ChatId: 会话ID
        # @type ChatId: String
        # @param Offset: 查询开始位置
        # @type Offset: Integer
        # @param Limit: 列表查询数量
        # @type Limit: Integer
        # @param StartTime: 任务启动时间
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # @type EndTime: String
        # @param AgentTaskType: 任务类型
        # @type AgentTaskType: String
        # @param Parameters: 业务参数
        # @type Parameters: Array

        attr_accessor :InstanceId, :ChatId, :Offset, :Limit, :StartTime, :EndTime, :AgentTaskType, :Parameters

        def initialize(instanceid=nil, chatid=nil, offset=nil, limit=nil, starttime=nil, endtime=nil, agenttasktype=nil, parameters=nil)
          @InstanceId = instanceid
          @ChatId = chatid
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @EndTime = endtime
          @AgentTaskType = agenttasktype
          @Parameters = parameters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AgentTaskType = params['AgentTaskType']
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

      # DescribeAgentDutyTasks返回参数结构体
      class DescribeAgentDutyTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果总数量
        # @type TotalCount: Integer
        # @param DutyTasks: 任务详细信息
        # @type DutyTasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DutyTasks, :RequestId

        def initialize(totalcount=nil, dutytasks=nil, requestid=nil)
          @TotalCount = totalcount
          @DutyTasks = dutytasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DutyTasks'].nil?
            @DutyTasks = []
            params['DutyTasks'].each do |i|
              agentdutytask_tmp = AgentDutyTask.new
              agentdutytask_tmp.deserialize(i)
              @DutyTasks << agentdutytask_tmp
            end
          end
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
        # @param InstanceId: <p>实例ID，为空时查询所有，如果填写则会根据InstanceId筛选</p>
        # @type InstanceId: String
        # @param InstanceName: <p>实例名，为空时查询所有，如果填写则会根据InstanceName筛选</p>
        # @type InstanceName: String
        # @param AgentId: <p>智能体ID，为空时查询所有，如果填写则会根据AgentId筛选</p>
        # @type AgentId: String
        # @param AgentName: <p>智能体名称，为空时查询所有，如果填写则会根据AgentName筛选</p>
        # @type AgentName: String
        # @param AgentInternalName: <p>智能体类型，为空时查询所有，如果填写则会根据AgentName筛选</p>
        # @type AgentInternalName: String
        # @param Status: <p>智能体实例状态，为空时查询所有，如果填写则会根据Status筛选</p>
        # @type Status: String
        # @param TagFilter: <p>标签过滤信息</p>
        # @type TagFilter: Array
        # @param InstanceType: <p>实例类型</p>
        # @type InstanceType: String

        attr_accessor :Offset, :Limit, :InstanceId, :InstanceName, :AgentId, :AgentName, :AgentInternalName, :Status, :TagFilter, :InstanceType

        def initialize(offset=nil, limit=nil, instanceid=nil, instancename=nil, agentid=nil, agentname=nil, agentinternalname=nil, status=nil, tagfilter=nil, instancetype=nil)
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @InstanceName = instancename
          @AgentId = agentid
          @AgentName = agentname
          @AgentInternalName = agentinternalname
          @Status = status
          @TagFilter = tagfilter
          @InstanceType = instancetype
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
          @InstanceType = params['InstanceType']
        end
      end

      # DescribeAgentInstances返回参数结构体
      class DescribeAgentInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果总数量
        # @type TotalCount: Integer
        # @param Items: <p>智能体实例列表</p>
        # @type Items: Array
        # @param StatusCounts: <p>无</p>
        # @type StatusCounts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :StatusCounts, :RequestId

        def initialize(totalcount=nil, items=nil, statuscounts=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @StatusCounts = statuscounts
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
          unless params['StatusCounts'].nil?
            @StatusCounts = []
            params['StatusCounts'].each do |i|
              statusitem_tmp = StatusItem.new
              statusitem_tmp.deserialize(i)
              @StatusCounts << statusitem_tmp
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
        # @param DeployPlace: 架构，共享版-intranet，企业版-userVpc
        # @type DeployPlace: String

        attr_accessor :Offset, :Limit, :AgentId, :AgentName, :AgentInternalName, :AgentStatus, :DeployPlace

        def initialize(offset=nil, limit=nil, agentid=nil, agentname=nil, agentinternalname=nil, agentstatus=nil, deployplace=nil)
          @Offset = offset
          @Limit = limit
          @AgentId = agentid
          @AgentName = agentname
          @AgentInternalName = agentinternalname
          @AgentStatus = agentstatus
          @DeployPlace = deployplace
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @AgentInternalName = params['AgentInternalName']
          @AgentStatus = params['AgentStatus']
          @DeployPlace = params['DeployPlace']
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
        # @param StreamingId: 流ID
        # @type StreamingId: String
        # @param BeginStreamingTokenId: 开始拉取的流式TokenID。0表示从该流最早的TokenID开始获取
        # @type BeginStreamingTokenId: Integer
        # @param TokenLimit: 单次获取的token数量，默认2000
        # @type TokenLimit: Integer

        attr_accessor :InstanceId, :ChatId, :StreamingId, :BeginStreamingTokenId, :TokenLimit

        def initialize(instanceid=nil, chatid=nil, streamingid=nil, beginstreamingtokenid=nil, tokenlimit=nil)
          @InstanceId = instanceid
          @ChatId = chatid
          @StreamingId = streamingid
          @BeginStreamingTokenId = beginstreamingtokenid
          @TokenLimit = tokenlimit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ChatId = params['ChatId']
          @StreamingId = params['StreamingId']
          @BeginStreamingTokenId = params['BeginStreamingTokenId']
          @TokenLimit = params['TokenLimit']
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

      # DescribeMemoryPlusRecord请求参数结构体
      class DescribeMemoryPlusRecordRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: <p>查询的 Memory 实例 ID。</p>
        # @type SpaceId: String
        # @param Offset: <p>查询列表的起始位置（偏移量）。用于分页查询，指明从符合条件的第几条数据开始返回。</p>
        # @type Offset: Integer
        # @param Limit: <p>单次查询返回的记录数量上限（分页大小）。</p>
        # @type Limit: Integer
        # @param RecordType: <p>查询的记忆类型。</p><ul><li>conversation：L0 原始对话。</li><li>memory：L1 原子记忆。</li><li>scene：L2 场景记忆。</li><li>persona：L3 个性化画像。</li><li>memory/persona：L1 原子记忆-画像型。</li><li>memory/episodic：L1 原子记忆-事件型。</li><li>memory/instruction：L1 原子记忆-指令型。</li></ul>
        # @type RecordType: String
        # @param Output: <p>指定返回记录中的特定字段。</p>
        # @type Output: Array
        # @param Filters: <p>过滤条件，当前仅支持 <strong>RecordType</strong> 为 <strong>conversation</strong> 的 <strong>session_id</strong> 过滤。</p>
        # @type Filters: Array
        # @param OrderDirection: <p>查询结果列表的排序规则。</p><ul><li>ASC：升序。</li><li>DESC：降序。</li></ul>
        # @type OrderDirection: String
        # @param StartTime: <p>查询时间范围的起始时间点。</p>
        # @type StartTime: String
        # @param EndTime: <p>查询时间范围的结束时间点。</p>
        # @type EndTime: String

        attr_accessor :SpaceId, :Offset, :Limit, :RecordType, :Output, :Filters, :OrderDirection, :StartTime, :EndTime

        def initialize(spaceid=nil, offset=nil, limit=nil, recordtype=nil, output=nil, filters=nil, orderdirection=nil, starttime=nil, endtime=nil)
          @SpaceId = spaceid
          @Offset = offset
          @Limit = limit
          @RecordType = recordtype
          @Output = output
          @Filters = filters
          @OrderDirection = orderdirection
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RecordType = params['RecordType']
          @Output = params['Output']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              vdbfieldmap_tmp = VDBFieldMap.new
              vdbfieldmap_tmp.deserialize(i)
              @Filters << vdbfieldmap_tmp
            end
          end
          @OrderDirection = params['OrderDirection']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeMemoryPlusRecord返回参数结构体
      class DescribeMemoryPlusRecordResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>查询结果总数量。</p>
        # @type TotalCount: Integer
        # @param Documents: <p>查询的记忆数据。</p>
        # @type Documents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Documents, :RequestId

        def initialize(totalcount=nil, documents=nil, requestid=nil)
          @TotalCount = totalcount
          @Documents = documents
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Documents'].nil?
            @Documents = []
            params['Documents'].each do |i|
              vdbdocument_tmp = VDBDocument.new
              vdbdocument_tmp.deserialize(i)
              @Documents << vdbdocument_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMemoryPlusSpace请求参数结构体
      class DescribeMemoryPlusSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: <p>指定查询的 Memory 实例 ID。</p>
        # @type SpaceId: String

        attr_accessor :SpaceId

        def initialize(spaceid=nil)
          @SpaceId = spaceid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
        end
      end

      # DescribeMemoryPlusSpace返回参数结构体
      class DescribeMemoryPlusSpaceResponse < TencentCloud::Common::AbstractModel
        # @param SpaceId: <p>Memory 实例 ID。</p>
        # @type SpaceId: String
        # @param Name: <p>Memory 实例的自定义名称。</p>
        # @type Name: String
        # @param Description: <p>Memory 实例的简要描述，包括使用场景、用途或背景信息，便于日常运维识别。</p>
        # @type Description: String
        # @param AppId: <p>腾讯云账号的 APPID。</p>
        # @type AppId: Integer
        # @param Region: <p>Memroy 实例所属地域。</p>
        # @type Region: String
        # @param ResourceTags: <p>Memory 实例的标签信息。</p>
        # @type ResourceTags: Array
        # @param Status: <p>Memory 实例当前运行状态。</p><ul><li>1：运行中。</li><li>2：创建中。</li><li>3：销毁中。</li><li>4：已销毁。</li><li>5：隔离中。</li><li>6：已隔离。</li><li>7：恢复中。</li></ul>
        # @type Status: Integer
        # @param PayMode: <p>Memory 实例计费模式。</p><ul><li>-1：免费体验。</li><li>0：包年包月。</li><li>1：按量计费。</li></ul>
        # @type PayMode: Integer
        # @param Version: <p>Memory 版本信息：v1。</p>
        # @type Version: String
        # @param MemoryUsage: <p>Memory 当前已写入的记忆条数。</p>
        # @type MemoryUsage: Integer
        # @param MemoryLimit: <p>Memory 实例记忆条数配额上限。</p>
        # @type MemoryLimit: Integer
        # @param CreditUsage: <p>Memory 实例当前 Credit 的使用数量。</p>
        # @type CreditUsage: Float
        # @param CreditLimit: <p>Memory 实例 Credit 的最大使用数量。</p>
        # @type CreditLimit: Float
        # @param AccessUrl: <p>Memory 实例的内网访问地址。</p>
        # @type AccessUrl: String
        # @param WanAccessUrl: <p>Memory 实例的外网访问地址。</p>
        # @type WanAccessUrl: String
        # @param CreatedAt: <p>Memory 实例的创建时间。</p>
        # @type CreatedAt: String
        # @param ExpiredAt: <p>Memory 实例的到期时间。</p>
        # @type ExpiredAt: String
        # @param IsolatedAt: <p>Memory 实例的隔离时间。</p>
        # @type IsolatedAt: String
        # @param DestroyAt: <p>到期销毁时间</p>
        # @type DestroyAt: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpaceId, :Name, :Description, :AppId, :Region, :ResourceTags, :Status, :PayMode, :Version, :MemoryUsage, :MemoryLimit, :CreditUsage, :CreditLimit, :AccessUrl, :WanAccessUrl, :CreatedAt, :ExpiredAt, :IsolatedAt, :DestroyAt, :RequestId

        def initialize(spaceid=nil, name=nil, description=nil, appid=nil, region=nil, resourcetags=nil, status=nil, paymode=nil, version=nil, memoryusage=nil, memorylimit=nil, creditusage=nil, creditlimit=nil, accessurl=nil, wanaccessurl=nil, createdat=nil, expiredat=nil, isolatedat=nil, destroyat=nil, requestid=nil)
          @SpaceId = spaceid
          @Name = name
          @Description = description
          @AppId = appid
          @Region = region
          @ResourceTags = resourcetags
          @Status = status
          @PayMode = paymode
          @Version = version
          @MemoryUsage = memoryusage
          @MemoryLimit = memorylimit
          @CreditUsage = creditusage
          @CreditLimit = creditlimit
          @AccessUrl = accessurl
          @WanAccessUrl = wanaccessurl
          @CreatedAt = createdat
          @ExpiredAt = expiredat
          @IsolatedAt = isolatedat
          @DestroyAt = destroyat
          @RequestId = requestid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @Name = params['Name']
          @Description = params['Description']
          @AppId = params['AppId']
          @Region = params['Region']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Status = params['Status']
          @PayMode = params['PayMode']
          @Version = params['Version']
          @MemoryUsage = params['MemoryUsage']
          @MemoryLimit = params['MemoryLimit']
          @CreditUsage = params['CreditUsage']
          @CreditLimit = params['CreditLimit']
          @AccessUrl = params['AccessUrl']
          @WanAccessUrl = params['WanAccessUrl']
          @CreatedAt = params['CreatedAt']
          @ExpiredAt = params['ExpiredAt']
          @IsolatedAt = params['IsolatedAt']
          @DestroyAt = params['DestroyAt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMemoryPlusSpaces请求参数结构体
      class DescribeMemoryPlusSpacesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: <p>查询列表的起始位置（偏移量）。用于分页查询，指明从符合条件的第几条数据开始返回。</p>
        # @type Offset: Integer
        # @param Limit: <p>单次查询返回的记录数量上限（分页大小）。</p>
        # @type Limit: Integer
        # @param SearchKeys: <p>查询实例名称或者实例id</p>
        # @type SearchKeys: Array
        # @param Status: <p>实例状态</p><p>枚举值：</p><ul><li>1： 运行中</li><li>2： 创建中</li><li>3： 删除中</li><li>4： 已删除</li><li>5： 隔离中</li><li>6： 已隔离（进入回收站）</li><li>7： 恢复中（从回收站恢复）</li></ul>
        # @type Status: Array
        # @param ResourceTags: <p>资源标签</p>
        # @type ResourceTags: Array
        # @param Orderby: <p>排序字段</p>
        # @type Orderby: String
        # @param OrderDirection: <p>排序方向</p><p>枚举值：</p><ul><li>ASC： 升序</li><li>DESC： 降序</li></ul>
        # @type OrderDirection: String

        attr_accessor :Offset, :Limit, :SearchKeys, :Status, :ResourceTags, :Orderby, :OrderDirection

        def initialize(offset=nil, limit=nil, searchkeys=nil, status=nil, resourcetags=nil, orderby=nil, orderdirection=nil)
          @Offset = offset
          @Limit = limit
          @SearchKeys = searchkeys
          @Status = status
          @ResourceTags = resourcetags
          @Orderby = orderby
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKeys = params['SearchKeys']
          @Status = params['Status']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Orderby = params['Orderby']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeMemoryPlusSpaces返回参数结构体
      class DescribeMemoryPlusSpacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>查询结果总数量。</p>
        # @type TotalCount: Integer
        # @param Items: <p>实例列表信息</p>
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
              memoryplusinfo_tmp = MemoryPlusInfo.new
              memoryplusinfo_tmp.deserialize(i)
              @Items << memoryplusinfo_tmp
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

      # DescribeServiceAccessKey请求参数结构体
      class DescribeServiceAccessKeyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: <p>指定 Memroy 实例 ID。</p>
        # @type ServiceId: String

        attr_accessor :ServiceId

        def initialize(serviceid=nil)
          @ServiceId = serviceid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
        end
      end

      # DescribeServiceAccessKey返回参数结构体
      class DescribeServiceAccessKeyResponse < TencentCloud::Common::AbstractModel
        # @param AuthKey: <p>访问密钥。</p>
        # @type AuthKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthKey, :RequestId

        def initialize(authkey=nil, requestid=nil)
          @AuthKey = authkey
          @RequestId = requestid
        end

        def deserialize(params)
          @AuthKey = params['AuthKey']
          @RequestId = params['RequestId']
        end
      end

      # DestroyMemoryPlusSpace请求参数结构体
      class DestroyMemoryPlusSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceIds: <p>指定需要销毁的 Memory 实例 ID 列表。</p>
        # @type SpaceIds: Array

        attr_accessor :SpaceIds

        def initialize(spaceids=nil)
          @SpaceIds = spaceids
        end

        def deserialize(params)
          @SpaceIds = params['SpaceIds']
        end
      end

      # DestroyMemoryPlusSpace返回参数结构体
      class DestroyMemoryPlusSpaceResponse < TencentCloud::Common::AbstractModel
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

      # 智能体值守任务额外信息
      class ExtraInfo < TencentCloud::Common::AbstractModel
        # @param Key: 出参额外信息的Key
        # @type Key: String
        # @param Description: 额外信息描述
        # @type Description: String
        # @param Value: ExtraInfo的值
        # @type Value: String
        # @param ValueType: 值的数据结构类型
        # @type ValueType: String

        attr_accessor :Key, :Description, :Value, :ValueType

        def initialize(key=nil, description=nil, value=nil, valuetype=nil)
          @Key = key
          @Description = description
          @Value = value
          @ValueType = valuetype
        end

        def deserialize(params)
          @Key = params['Key']
          @Description = params['Description']
          @Value = params['Value']
          @ValueType = params['ValueType']
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

      # IsolateMemoryPlusSpace请求参数结构体
      class IsolateMemoryPlusSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceIds: <p>指定需要放入回收站的 Memory 实例 ID 列表。</p>
        # @type SpaceIds: Array

        attr_accessor :SpaceIds

        def initialize(spaceids=nil)
          @SpaceIds = spaceids
        end

        def deserialize(params)
          @SpaceIds = params['SpaceIds']
        end
      end

      # IsolateMemoryPlusSpace返回参数结构体
      class IsolateMemoryPlusSpaceResponse < TencentCloud::Common::AbstractModel
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

      # Memory正式版实例列表元素信息
      class MemoryPlusInfo < TencentCloud::Common::AbstractModel
        # @param SpaceId: <p>实例id</p>
        # @type SpaceId: String
        # @param Name: <p>实例名称</p>
        # @type Name: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param Status: <p>实例状态</p>
        # @type Status: Integer
        # @param Region: <p>地域</p>
        # @type Region: String
        # @param MemoryUsage: <p>记忆条数</p>
        # @type MemoryUsage: Integer
        # @param CreditUsage: <p>当月积分数</p>
        # @type CreditUsage: Float
        # @param ResourceTags: <p>资源标签</p>
        # @type ResourceTags: Array
        # @param CreatedAt: <p>创建时间</p>
        # @type CreatedAt: String
        # @param IsolatedAt: <p>隔离时间</p>
        # @type IsolatedAt: String
        # @param ExpiredAt: <p>到期时间</p>
        # @type ExpiredAt: String
        # @param DestroyAt: <p>到期销毁时间</p>
        # @type DestroyAt: String

        attr_accessor :SpaceId, :Name, :Description, :Status, :Region, :MemoryUsage, :CreditUsage, :ResourceTags, :CreatedAt, :IsolatedAt, :ExpiredAt, :DestroyAt

        def initialize(spaceid=nil, name=nil, description=nil, status=nil, region=nil, memoryusage=nil, creditusage=nil, resourcetags=nil, createdat=nil, isolatedat=nil, expiredat=nil, destroyat=nil)
          @SpaceId = spaceid
          @Name = name
          @Description = description
          @Status = status
          @Region = region
          @MemoryUsage = memoryusage
          @CreditUsage = creditusage
          @ResourceTags = resourcetags
          @CreatedAt = createdat
          @IsolatedAt = isolatedat
          @ExpiredAt = expiredat
          @DestroyAt = destroyat
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @Name = params['Name']
          @Description = params['Description']
          @Status = params['Status']
          @Region = params['Region']
          @MemoryUsage = params['MemoryUsage']
          @CreditUsage = params['CreditUsage']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @CreatedAt = params['CreatedAt']
          @IsolatedAt = params['IsolatedAt']
          @ExpiredAt = params['ExpiredAt']
          @DestroyAt = params['DestroyAt']
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

      # ModifyMemoryPlusSpace请求参数结构体
      class ModifyMemoryPlusSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: <p>指定需要修改的 Memory 实例 ID。</p>
        # @type SpaceId: String
        # @param Name: <p>指定修改后的实例名称。支持 60 个字符内 的中英文、数字、中划线（-）及下划线（_）。</p>
        # @type Name: String
        # @param Description: <p>指定修改后的实例描述。最多支持 200 个字符。</p>
        # @type Description: String

        attr_accessor :SpaceId, :Name, :Description

        def initialize(spaceid=nil, name=nil, description=nil)
          @SpaceId = spaceid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # ModifyMemoryPlusSpace返回参数结构体
      class ModifyMemoryPlusSpaceResponse < TencentCloud::Common::AbstractModel
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

      # RecoverMemoryPlusSpace请求参数结构体
      class RecoverMemoryPlusSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceIds: <p>指定需要恢复的 Memory 实例 ID 列表。</p>
        # @type SpaceIds: Array

        attr_accessor :SpaceIds

        def initialize(spaceids=nil)
          @SpaceIds = spaceids
        end

        def deserialize(params)
          @SpaceIds = params['SpaceIds']
        end
      end

      # RecoverMemoryPlusSpace返回参数结构体
      class RecoverMemoryPlusSpaceResponse < TencentCloud::Common::AbstractModel
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

      # 资源tag
      class ResourceTag < TencentCloud::Common::AbstractModel
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

      # StartAgentTask请求参数结构体
      class StartAgentTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceToken: 配置Token
        # @type InstanceToken: String

        attr_accessor :InstanceId, :InstanceToken

        def initialize(instanceid=nil, instancetoken=nil)
          @InstanceId = instanceid
          @InstanceToken = instancetoken
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceToken = params['InstanceToken']
        end
      end

      # StartAgentTask返回参数结构体
      class StartAgentTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # 实例状态描述
      class StatusItem < TencentCloud::Common::AbstractModel
        # @param Status: <p>无</p>
        # @type Status: String
        # @param Count: <p>无</p>
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

      # vdb数据库文档结构
      class VDBDocument < TencentCloud::Common::AbstractModel
        # @param Id: <p>vdb document数据id</p>
        # @type Id: String
        # @param Fields: <p>vdb document数据标量字段</p>
        # @type Fields: Array

        attr_accessor :Id, :Fields

        def initialize(id=nil, fields=nil)
          @Id = id
          @Fields = fields
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['Fields'].nil?
            @Fields = []
            params['Fields'].each do |i|
              vdbfieldmap_tmp = VDBFieldMap.new
              vdbfieldmap_tmp.deserialize(i)
              @Fields << vdbfieldmap_tmp
            end
          end
        end
      end

      # vdb数据库文档中键值结构
      class VDBFieldMap < TencentCloud::Common::AbstractModel
        # @param Name: <p>vdb document字段名</p>
        # @type Name: String
        # @param Value: <p>vdb document字段值</p>
        # @type Value: String
        # @param Type: <p>vdb document字段类型</p>
        # @type Type: String
        # @param Description: <p>字段描述</p>
        # @type Description: String

        attr_accessor :Name, :Value, :Type, :Description

        def initialize(name=nil, value=nil, type=nil, description=nil)
          @Name = name
          @Value = value
          @Type = type
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Type = params['Type']
          @Description = params['Description']
        end
      end

    end
  end
end

