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
  module Adp
    module V20260520
      # 智能通话配置
      class AICallConfig < TencentCloud::Common::AbstractModel
        # @param DigitalHuman: 数智人配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DigitalHuman: :class:`Tencentcloud::Adp.v20260520.models.DigitalHumanConfig`
        # @param EnableDigitalHuman: 启用数智人
        # @type EnableDigitalHuman: Boolean
        # @param EnableVoiceCall: 启用语音通话
        # @type EnableVoiceCall: Boolean
        # @param EnableVoiceInteract: 启用语音互动功能
        # @type EnableVoiceInteract: Boolean
        # @param Voice: 音色配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Voice: :class:`Tencentcloud::Adp.v20260520.models.VoiceConfig`

        attr_accessor :DigitalHuman, :EnableDigitalHuman, :EnableVoiceCall, :EnableVoiceInteract, :Voice

        def initialize(digitalhuman=nil, enabledigitalhuman=nil, enablevoicecall=nil, enablevoiceinteract=nil, voice=nil)
          @DigitalHuman = digitalhuman
          @EnableDigitalHuman = enabledigitalhuman
          @EnableVoiceCall = enablevoicecall
          @EnableVoiceInteract = enablevoiceinteract
          @Voice = voice
        end

        def deserialize(params)
          unless params['DigitalHuman'].nil?
            @DigitalHuman = DigitalHumanConfig.new
            @DigitalHuman.deserialize(params['DigitalHuman'])
          end
          @EnableDigitalHuman = params['EnableDigitalHuman']
          @EnableVoiceCall = params['EnableVoiceCall']
          @EnableVoiceInteract = params['EnableVoiceInteract']
          unless params['Voice'].nil?
            @Voice = VoiceConfig.new
            @Voice.deserialize(params['Voice'])
          end
        end
      end

      # AI一键优化模型配置
      class AIOptimizeModel < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.ModelDetailInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelDetailInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # Agent高级设置
      class AgentAdvancedConfig < TencentCloud::Common::AbstractModel
        # @param MaxReasoningRound: <p>最大推理轮数</p>
        # @type MaxReasoningRound: Integer

        attr_accessor :MaxReasoningRound

        def initialize(maxreasoninground=nil)
          @MaxReasoningRound = maxreasoninground
        end

        def deserialize(params)
          @MaxReasoningRound = params['MaxReasoningRound']
        end
      end

      # [数据结构定义] Agent协同配置
      class AgentCollaborationConfig < TencentCloud::Common::AbstractModel
        # @param AgentCollaborationMode: 协同方式。枚举值: 1:自由转交：Agent之间可自由传递任务, 2:工作流编排：基于预定义流程的协同, 3:Plan-and-Execute：规划与执行分离的协同模式
        # @type AgentCollaborationMode: Integer
        # @param WorkflowId: 工作流Id
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String

        attr_accessor :AgentCollaborationMode, :WorkflowId, :WorkflowName

        def initialize(agentcollaborationmode=nil, workflowid=nil, workflowname=nil)
          @AgentCollaborationMode = agentcollaborationmode
          @WorkflowId = workflowid
          @WorkflowName = workflowname
        end

        def deserialize(params)
          @AgentCollaborationMode = params['AgentCollaborationMode']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
        end
      end

      # Agent 详情
      class AgentDetail < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent ID</p>
        # @type AgentId: String
        # @param Profile: <p>Agent基本配置</p>
        # @type Profile: :class:`Tencentcloud::Adp.v20260520.models.AgentProfile`
        # @param Instructions: <p>系统提示词</p>
        # @type Instructions: String
        # @param Model: <p>模型信息</p>
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.AgentModelConfig`
        # @param ToolList: <p>工具详情</p>
        # @type ToolList: Array
        # @param PluginList: <p>插件配置</p>
        # @type PluginList: Array
        # @param SkillList: <p>技能详情</p>
        # @type SkillList: Array
        # @param AdvancedConfig: <p>高级配置</p>
        # @type AdvancedConfig: :class:`Tencentcloud::Adp.v20260520.models.AgentAdvancedConfig`

        attr_accessor :AgentId, :Profile, :Instructions, :Model, :ToolList, :PluginList, :SkillList, :AdvancedConfig

        def initialize(agentid=nil, profile=nil, instructions=nil, model=nil, toollist=nil, pluginlist=nil, skilllist=nil, advancedconfig=nil)
          @AgentId = agentid
          @Profile = profile
          @Instructions = instructions
          @Model = model
          @ToolList = toollist
          @PluginList = pluginlist
          @SkillList = skilllist
          @AdvancedConfig = advancedconfig
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          unless params['Profile'].nil?
            @Profile = AgentProfile.new
            @Profile.deserialize(params['Profile'])
          end
          @Instructions = params['Instructions']
          unless params['Model'].nil?
            @Model = AgentModelConfig.new
            @Model.deserialize(params['Model'])
          end
          unless params['ToolList'].nil?
            @ToolList = []
            params['ToolList'].each do |i|
              agenttool_tmp = AgentTool.new
              agenttool_tmp.deserialize(i)
              @ToolList << agenttool_tmp
            end
          end
          unless params['PluginList'].nil?
            @PluginList = []
            params['PluginList'].each do |i|
              agentplugin_tmp = AgentPlugin.new
              agentplugin_tmp.deserialize(i)
              @PluginList << agentplugin_tmp
            end
          end
          unless params['SkillList'].nil?
            @SkillList = []
            params['SkillList'].each do |i|
              agentskill_tmp = AgentSkill.new
              agentskill_tmp.deserialize(i)
              @SkillList << agentskill_tmp
            end
          end
          unless params['AdvancedConfig'].nil?
            @AdvancedConfig = AgentAdvancedConfig.new
            @AdvancedConfig.deserialize(params['AdvancedConfig'])
          end
        end
      end

      # Agent输入值，支持直接赋值和引用
      class AgentInput < TencentCloud::Common::AbstractModel
        # @param InputType: <p>输入来源类型：0 用户输入，3 自定义变量（API参数）</p>
        # @type InputType: Integer
        # @param UserInputValue: <p>用户手写输入</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserInputValue: :class:`Tencentcloud::Adp.v20260520.models.AgentUserInputValue`
        # @param SystemVariable: <p>系统参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemVariable: :class:`Tencentcloud::Adp.v20260520.models.AgentSystemVariable`
        # @param CustomVariableId: <p>自定义变量（API参数）</p>
        # @type CustomVariableId: String
        # @param EnvVariableId: <p>环境变量参数</p>
        # @type EnvVariableId: String
        # @param AppVariableId: <p>应用变量参数</p>
        # @type AppVariableId: String

        attr_accessor :InputType, :UserInputValue, :SystemVariable, :CustomVariableId, :EnvVariableId, :AppVariableId

        def initialize(inputtype=nil, userinputvalue=nil, systemvariable=nil, customvariableid=nil, envvariableid=nil, appvariableid=nil)
          @InputType = inputtype
          @UserInputValue = userinputvalue
          @SystemVariable = systemvariable
          @CustomVariableId = customvariableid
          @EnvVariableId = envvariableid
          @AppVariableId = appvariableid
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['UserInputValue'].nil?
            @UserInputValue = AgentUserInputValue.new
            @UserInputValue.deserialize(params['UserInputValue'])
          end
          unless params['SystemVariable'].nil?
            @SystemVariable = AgentSystemVariable.new
            @SystemVariable.deserialize(params['SystemVariable'])
          end
          @CustomVariableId = params['CustomVariableId']
          @EnvVariableId = params['EnvVariableId']
          @AppVariableId = params['AppVariableId']
        end
      end

      # Agent 配置里面的模型定义
      class AgentModelConfig < TencentCloud::Common::AbstractModel
        # @param ModelId: <p>模型唯一id</p>
        # @type ModelId: String
        # @param Alias: <p>模型别名</p>
        # @type Alias: String
        # @param ContextWordsLimit: <p>模型上下文长度字符限制</p>
        # @type ContextWordsLimit: Integer
        # @param InstructionsWordsLimit: <p>指令长度字符限制</p>
        # @type InstructionsWordsLimit: Integer
        # @param ModelParameters: <p>模型参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelParameters: :class:`Tencentcloud::Adp.v20260520.models.ModelParams`

        attr_accessor :ModelId, :Alias, :ContextWordsLimit, :InstructionsWordsLimit, :ModelParameters

        def initialize(modelid=nil, _alias=nil, contextwordslimit=nil, instructionswordslimit=nil, modelparameters=nil)
          @ModelId = modelid
          @Alias = _alias
          @ContextWordsLimit = contextwordslimit
          @InstructionsWordsLimit = instructionswordslimit
          @ModelParameters = modelparameters
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @Alias = params['Alias']
          @ContextWordsLimit = params['ContextWordsLimit']
          @InstructionsWordsLimit = params['InstructionsWordsLimit']
          unless params['ModelParameters'].nil?
            @ModelParameters = ModelParams.new
            @ModelParameters.deserialize(params['ModelParameters'])
          end
        end
      end

      # Agent 的插件信息
      class AgentPlugin < TencentCloud::Common::AbstractModel
        # @param Config: 插件基本配置
        # @type Config: :class:`Tencentcloud::Adp.v20260520.models.AgentPluginConfig`
        # @param Name: 插件名称
        # @type Name: String
        # @param IconUrl: 插件图标url
        # @type IconUrl: String
        # @param Description: 插件描述
        # @type Description: String
        # @param PluginClass: <p>插件产品分类</p><p>枚举值：</p><ul><li>0： 普通插件</li><li>1： 连接器类插件</li></ul>
        # @type PluginClass: Integer
        # @param Status: <p>插件状态</p><p>枚举值：</p><ul><li>0： 未知</li><li>1： 可用</li><li>2： 不可用</li></ul>
        # @type Status: Integer
        # @param AuthConfigStatus: <p>插件鉴权配置状态</p><p>枚举值：</p><ul><li>0： 不需要授权</li><li>1： 未配置</li><li>2： 已配置</li></ul>
        # @type AuthConfigStatus: Integer

        attr_accessor :Config, :Name, :IconUrl, :Description, :PluginClass, :Status, :AuthConfigStatus

        def initialize(config=nil, name=nil, iconurl=nil, description=nil, pluginclass=nil, status=nil, authconfigstatus=nil)
          @Config = config
          @Name = name
          @IconUrl = iconurl
          @Description = description
          @PluginClass = pluginclass
          @Status = status
          @AuthConfigStatus = authconfigstatus
        end

        def deserialize(params)
          unless params['Config'].nil?
            @Config = AgentPluginConfig.new
            @Config.deserialize(params['Config'])
          end
          @Name = params['Name']
          @IconUrl = params['IconUrl']
          @Description = params['Description']
          @PluginClass = params['PluginClass']
          @Status = params['Status']
          @AuthConfigStatus = params['AuthConfigStatus']
        end
      end

      # Agent 的插件基本配置
      class AgentPluginConfig < TencentCloud::Common::AbstractModel
        # @param PluginId: <p>插件id</p>
        # @type PluginId: String
        # @param HeaderParameterList: <p>插件 Header 参数</p>
        # @type HeaderParameterList: Array
        # @param QueryParameterList: <p>插件 Query 参数</p>
        # @type QueryParameterList: Array
        # @param EnableCamRoleAuth: <p>是否使用CAM一键授权，仅 auth_type=2时生效</p>
        # @type EnableCamRoleAuth: Boolean
        # @param AuthType: <p>授权类型</p><p>枚举值：</p><ul><li>0： 无鉴权</li><li>1： API Key</li><li>2： CAM授权</li><li>3： OAuth2.0授权</li></ul>
        # @type AuthType: Integer
        # @param OAuthConsent: OAuth 授权同意模式；0-开发者授权；1-使用者授权（仅在auth_type=3时生效）
        # @type OAuthConsent: Integer

        attr_accessor :PluginId, :HeaderParameterList, :QueryParameterList, :EnableCamRoleAuth, :AuthType, :OAuthConsent

        def initialize(pluginid=nil, headerparameterlist=nil, queryparameterlist=nil, enablecamroleauth=nil, authtype=nil, oauthconsent=nil)
          @PluginId = pluginid
          @HeaderParameterList = headerparameterlist
          @QueryParameterList = queryparameterlist
          @EnableCamRoleAuth = enablecamroleauth
          @AuthType = authtype
          @OAuthConsent = oauthconsent
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          unless params['HeaderParameterList'].nil?
            @HeaderParameterList = []
            params['HeaderParameterList'].each do |i|
              agentpluginparameter_tmp = AgentPluginParameter.new
              agentpluginparameter_tmp.deserialize(i)
              @HeaderParameterList << agentpluginparameter_tmp
            end
          end
          unless params['QueryParameterList'].nil?
            @QueryParameterList = []
            params['QueryParameterList'].each do |i|
              agentpluginparameter_tmp = AgentPluginParameter.new
              agentpluginparameter_tmp.deserialize(i)
              @QueryParameterList << agentpluginparameter_tmp
            end
          end
          @EnableCamRoleAuth = params['EnableCamRoleAuth']
          @AuthType = params['AuthType']
          @OAuthConsent = params['OAuthConsent']
        end
      end

      # Agent 插件参数配置
      class AgentPluginParameter < TencentCloud::Common::AbstractModel
        # @param Name: <p>参数名称</p>
        # @type Name: String
        # @param IsRequired: <p>是否必填</p>
        # @type IsRequired: Boolean
        # @param Input: <p>输入的值</p>
        # @type Input: :class:`Tencentcloud::Adp.v20260520.models.AgentInput`

        attr_accessor :Name, :IsRequired, :Input

        def initialize(name=nil, isrequired=nil, input=nil)
          @Name = name
          @IsRequired = isrequired
          @Input = input
        end

        def deserialize(params)
          @Name = params['Name']
          @IsRequired = params['IsRequired']
          unless params['Input'].nil?
            @Input = AgentInput.new
            @Input.deserialize(params['Input'])
          end
        end
      end

      # Agent 基本配置
      class AgentProfile < TencentCloud::Common::AbstractModel
        # @param Name: <p>Agent名称</p>
        # @type Name: String
        # @param IconUrl: <p>图标URL</p>
        # @type IconUrl: String
        # @param Role: <p>Agent 角色：0=主 / 1=子</p>
        # @type Role: Integer
        # @param Description: <p>Agent 描述</p>
        # @type Description: String
        # @param AppName: <p>应用名称</p>
        # @type AppName: String
        # @param Developer: <p>开发者</p>
        # @type Developer: String
        # @param ParentAgentId: <p>主AgentId，只读，不可通过修改接口进行变更</p>
        # @type ParentAgentId: String

        attr_accessor :Name, :IconUrl, :Role, :Description, :AppName, :Developer, :ParentAgentId

        def initialize(name=nil, iconurl=nil, role=nil, description=nil, appname=nil, developer=nil, parentagentid=nil)
          @Name = name
          @IconUrl = iconurl
          @Role = role
          @Description = description
          @AppName = appname
          @Developer = developer
          @ParentAgentId = parentagentid
        end

        def deserialize(params)
          @Name = params['Name']
          @IconUrl = params['IconUrl']
          @Role = params['Role']
          @Description = params['Description']
          @AppName = params['AppName']
          @Developer = params['Developer']
          @ParentAgentId = params['ParentAgentId']
        end
      end

      # Agent发布项目详情
      class AgentRelease < TencentCloud::Common::AbstractModel
        # @param ItemName: <p>名称</p>
        # @type ItemName: String
        # @param UpdateTime: <p>更新时间, unix 秒时间戳 (s)</p>
        # @type UpdateTime: String
        # @param ActionDescription: <p>动作描述</p>
        # @type ActionDescription: String
        # @param ReleaseMessage: <p>变更为 测试</p>
        # @type ReleaseMessage: String

        attr_accessor :ItemName, :UpdateTime, :ActionDescription, :ReleaseMessage

        def initialize(itemname=nil, updatetime=nil, actiondescription=nil, releasemessage=nil)
          @ItemName = itemname
          @UpdateTime = updatetime
          @ActionDescription = actiondescription
          @ReleaseMessage = releasemessage
        end

        def deserialize(params)
          @ItemName = params['ItemName']
          @UpdateTime = params['UpdateTime']
          @ActionDescription = params['ActionDescription']
          @ReleaseMessage = params['ReleaseMessage']
        end
      end

      # Agent 发布预览信息
      class AgentReleasePreview < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>AgentID</p>
        # @type AgentId: String
        # @param Name: <p>Agent名称</p>
        # @type Name: String
        # @param UpdateTime: <p>更新时间, unix 秒时间戳 (s)</p>
        # @type UpdateTime: String
        # @param Action: <p>状态, 状态值：1:新增, 2:修改, 3:删除</p>
        # @type Action: Integer
        # @param ActionDescription: <p>动作描述</p>
        # @type ActionDescription: String
        # @param Message: <p>发布消息</p>
        # @type Message: String
        # @param ReleaseList: <p>发布详情</p>
        # @type ReleaseList: Array

        attr_accessor :AgentId, :Name, :UpdateTime, :Action, :ActionDescription, :Message, :ReleaseList

        def initialize(agentid=nil, name=nil, updatetime=nil, action=nil, actiondescription=nil, message=nil, releaselist=nil)
          @AgentId = agentid
          @Name = name
          @UpdateTime = updatetime
          @Action = action
          @ActionDescription = actiondescription
          @Message = message
          @ReleaseList = releaselist
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Name = params['Name']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @ActionDescription = params['ActionDescription']
          @Message = params['Message']
          unless params['ReleaseList'].nil?
            @ReleaseList = []
            params['ReleaseList'].each do |i|
              agentrelease_tmp = AgentRelease.new
              agentrelease_tmp.deserialize(i)
              @ReleaseList << agentrelease_tmp
            end
          end
        end
      end

      # Agent 技能详情
      class AgentSkill < TencentCloud::Common::AbstractModel
        # @param SkillId: <p>skillId</p>
        # @type SkillId: String
        # @param Name: <p>skill名称</p>
        # @type Name: String
        # @param Description: <p>技能描述</p>
        # @type Description: String
        # @param DisplayName: <p>skill展示名称</p>
        # @type DisplayName: String
        # @param DisplayDescription: <p>技能展示描述</p>
        # @type DisplayDescription: String
        # @param IconUrl: <p>skill图标url</p>
        # @type IconUrl: String
        # @param SourceType: <p>Skill来源</p>
        # @type SourceType: Integer
        # @param CurrentVersion: <p>Skill版本</p>
        # @type CurrentVersion: String

        attr_accessor :SkillId, :Name, :Description, :DisplayName, :DisplayDescription, :IconUrl, :SourceType, :CurrentVersion

        def initialize(skillid=nil, name=nil, description=nil, displayname=nil, displaydescription=nil, iconurl=nil, sourcetype=nil, currentversion=nil)
          @SkillId = skillid
          @Name = name
          @Description = description
          @DisplayName = displayname
          @DisplayDescription = displaydescription
          @IconUrl = iconurl
          @SourceType = sourcetype
          @CurrentVersion = currentversion
        end

        def deserialize(params)
          @SkillId = params['SkillId']
          @Name = params['Name']
          @Description = params['Description']
          @DisplayName = params['DisplayName']
          @DisplayDescription = params['DisplayDescription']
          @IconUrl = params['IconUrl']
          @SourceType = params['SourceType']
          @CurrentVersion = params['CurrentVersion']
        end
      end

      # Agent 技能入参
      class AgentSkillConfig < TencentCloud::Common::AbstractModel
        # @param SkillId: <p>技能ID</p>
        # @type SkillId: String

        attr_accessor :SkillId

        def initialize(skillid=nil)
          @SkillId = skillid
        end

        def deserialize(params)
          @SkillId = params['SkillId']
        end
      end

      # Agent 可编辑配置
      class AgentSpec < TencentCloud::Common::AbstractModel
        # @param Profile: <p>Agent基本配置</p>
        # @type Profile: :class:`Tencentcloud::Adp.v20260520.models.AgentProfile`
        # @param Instructions: 系统提示词
        # @type Instructions: String
        # @param Model: 主模型配置
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.AgentModelConfig`
        # @param ToolList: <p>工具信息</p>
        # @type ToolList: Array
        # @param PluginList: <p>插件信息</p>
        # @type PluginList: Array
        # @param SkillList: <p>技能信息</p>
        # @type SkillList: Array
        # @param AdvancedConfig: 高级设置
        # @type AdvancedConfig: :class:`Tencentcloud::Adp.v20260520.models.AgentAdvancedConfig`

        attr_accessor :Profile, :Instructions, :Model, :ToolList, :PluginList, :SkillList, :AdvancedConfig

        def initialize(profile=nil, instructions=nil, model=nil, toollist=nil, pluginlist=nil, skilllist=nil, advancedconfig=nil)
          @Profile = profile
          @Instructions = instructions
          @Model = model
          @ToolList = toollist
          @PluginList = pluginlist
          @SkillList = skilllist
          @AdvancedConfig = advancedconfig
        end

        def deserialize(params)
          unless params['Profile'].nil?
            @Profile = AgentProfile.new
            @Profile.deserialize(params['Profile'])
          end
          @Instructions = params['Instructions']
          unless params['Model'].nil?
            @Model = AgentModelConfig.new
            @Model.deserialize(params['Model'])
          end
          unless params['ToolList'].nil?
            @ToolList = []
            params['ToolList'].each do |i|
              agenttoolconfig_tmp = AgentToolConfig.new
              agenttoolconfig_tmp.deserialize(i)
              @ToolList << agenttoolconfig_tmp
            end
          end
          unless params['PluginList'].nil?
            @PluginList = []
            params['PluginList'].each do |i|
              agentpluginconfig_tmp = AgentPluginConfig.new
              agentpluginconfig_tmp.deserialize(i)
              @PluginList << agentpluginconfig_tmp
            end
          end
          unless params['SkillList'].nil?
            @SkillList = []
            params['SkillList'].each do |i|
              agentskillconfig_tmp = AgentSkillConfig.new
              agentskillconfig_tmp.deserialize(i)
              @SkillList << agentskillconfig_tmp
            end
          end
          unless params['AdvancedConfig'].nil?
            @AdvancedConfig = AgentAdvancedConfig.new
            @AdvancedConfig.deserialize(params['AdvancedConfig'])
          end
        end
      end

      # 系统参数
      class AgentSystemVariable < TencentCloud::Common::AbstractModel
        # @param Name: <p>系统参数名</p>
        # @type Name: String
        # @param DialogHistoryLimit: <p>对话历史轮数的配置；如果Input是系统变量中的“对话历史”时才使用；</p>
        # @type DialogHistoryLimit: Integer

        attr_accessor :Name, :DialogHistoryLimit

        def initialize(name=nil, dialoghistorylimit=nil)
          @Name = name
          @DialogHistoryLimit = dialoghistorylimit
        end

        def deserialize(params)
          @Name = params['Name']
          @DialogHistoryLimit = params['DialogHistoryLimit']
        end
      end

      # Agent 工具详情
      class AgentTool < TencentCloud::Common::AbstractModel
        # @param Config: <p>工具配置字段</p>
        # @type Config: :class:`Tencentcloud::Adp.v20260520.models.AgentToolBasicConfig`
        # @param Name: <p>工具名称</p>
        # @type Name: String
        # @param Status: <p>工具状态</p><p>枚举值：</p><ul><li>1： 可用</li><li>2： 不可用</li><li>3： 已失效</li></ul>
        # @type Status: Integer
        # @param StreamMode: <p>调用方式</p><p>枚举值：</p><ul><li>0： 非流式</li><li>1： 流式</li></ul>
        # @type StreamMode: Integer
        # @param ToolAccessMode: <p>工具访问模式</p><p>枚举值：</p><ul><li>0： 未指定</li><li>1： 只读</li><li>2： 写/删除</li></ul>
        # @type ToolAccessMode: Integer

        attr_accessor :Config, :Name, :Status, :StreamMode, :ToolAccessMode

        def initialize(config=nil, name=nil, status=nil, streammode=nil, toolaccessmode=nil)
          @Config = config
          @Name = name
          @Status = status
          @StreamMode = streammode
          @ToolAccessMode = toolaccessmode
        end

        def deserialize(params)
          unless params['Config'].nil?
            @Config = AgentToolBasicConfig.new
            @Config.deserialize(params['Config'])
          end
          @Name = params['Name']
          @Status = params['Status']
          @StreamMode = params['StreamMode']
          @ToolAccessMode = params['ToolAccessMode']
        end
      end

      # Agent的工具基础配置
      class AgentToolBasicConfig < TencentCloud::Common::AbstractModel
        # @param PluginId: <p>插件id</p>
        # @type PluginId: String
        # @param ToolId: <p>工具id</p>
        # @type ToolId: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param InputList: <p>工具输入参数列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputList: Array
        # @param OutputList: <p>工具输出参数列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputList: Array
        # @param HeaderParameterList: <p>工具Header参数列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderParameterList: Array
        # @param QueryParameterList: <p>工具Query参数列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryParameterList: Array
        # @param ToolSource: <p>工具来源: 0-来自插件，1-来自工作流</p>
        # @type ToolSource: Integer
        # @param IsDisabled: <p>是否禁用</p>
        # @type IsDisabled: Boolean

        attr_accessor :PluginId, :ToolId, :Description, :InputList, :OutputList, :HeaderParameterList, :QueryParameterList, :ToolSource, :IsDisabled

        def initialize(pluginid=nil, toolid=nil, description=nil, inputlist=nil, outputlist=nil, headerparameterlist=nil, queryparameterlist=nil, toolsource=nil, isdisabled=nil)
          @PluginId = pluginid
          @ToolId = toolid
          @Description = description
          @InputList = inputlist
          @OutputList = outputlist
          @HeaderParameterList = headerparameterlist
          @QueryParameterList = queryparameterlist
          @ToolSource = toolsource
          @IsDisabled = isdisabled
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @ToolId = params['ToolId']
          @Description = params['Description']
          unless params['InputList'].nil?
            @InputList = []
            params['InputList'].each do |i|
              agenttoolinputparameter_tmp = AgentToolInputParameter.new
              agenttoolinputparameter_tmp.deserialize(i)
              @InputList << agenttoolinputparameter_tmp
            end
          end
          unless params['OutputList'].nil?
            @OutputList = []
            params['OutputList'].each do |i|
              agenttooloutputparameter_tmp = AgentToolOutputParameter.new
              agenttooloutputparameter_tmp.deserialize(i)
              @OutputList << agenttooloutputparameter_tmp
            end
          end
          unless params['HeaderParameterList'].nil?
            @HeaderParameterList = []
            params['HeaderParameterList'].each do |i|
              agentpluginparameter_tmp = AgentPluginParameter.new
              agentpluginparameter_tmp.deserialize(i)
              @HeaderParameterList << agentpluginparameter_tmp
            end
          end
          unless params['QueryParameterList'].nil?
            @QueryParameterList = []
            params['QueryParameterList'].each do |i|
              agentpluginparameter_tmp = AgentPluginParameter.new
              agentpluginparameter_tmp.deserialize(i)
              @QueryParameterList << agentpluginparameter_tmp
            end
          end
          @ToolSource = params['ToolSource']
          @IsDisabled = params['IsDisabled']
        end
      end

      # Agent 工具入参
      class AgentToolConfig < TencentCloud::Common::AbstractModel
        # @param Config: <p>工具配置</p>
        # @type Config: :class:`Tencentcloud::Adp.v20260520.models.AgentToolBasicConfig`

        attr_accessor :Config

        def initialize(config=nil)
          @Config = config
        end

        def deserialize(params)
          unless params['Config'].nil?
            @Config = AgentToolBasicConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # Agent 工具输入参数定义
      class AgentToolInputParameter < TencentCloud::Common::AbstractModel
        # @param Name: <p>工具名称</p>
        # @type Name: String
        # @param Description: <p>工具描述</p>
        # @type Description: String
        # @param Type: <p>工具参数类型</p><p>枚举值：</p><ul><li>0： STRING</li><li>1： INT</li><li>2： FLOAT</li><li>3： BOOL</li><li>4： OBJECT</li><li>5： ARRAY_STRING</li><li>6： ARRAY_INT</li><li>7： ARRAY_FLOAT</li><li>8： ARRAY_BOOL</li><li>9： ARRAY_OBJECT</li><li>20： ARRAY_ARRAY</li><li>99： NULL</li></ul>
        # @type Type: Integer
        # @param IsRequired: <p>是否必填</p>
        # @type IsRequired: Boolean
        # @param SubParameterList: <p>子参数，仅 OBJECT 或 ARRAY&lt;&gt; 类型时使用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubParameterList: Array
        # @param IsHidden: <p>模式下是否对模型隐藏</p>
        # @type IsHidden: Boolean
        # @param OneOfList: <p>OneOf类型的参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OneOfList: Array
        # @param AnyOfList: <p>AnyOf类型的参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnyOfList: Array
        # @param Input: <p>参数取值来源</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Adp.v20260520.models.AgentInput`

        attr_accessor :Name, :Description, :Type, :IsRequired, :SubParameterList, :IsHidden, :OneOfList, :AnyOfList, :Input

        def initialize(name=nil, description=nil, type=nil, isrequired=nil, subparameterlist=nil, ishidden=nil, oneoflist=nil, anyoflist=nil, input=nil)
          @Name = name
          @Description = description
          @Type = type
          @IsRequired = isrequired
          @SubParameterList = subparameterlist
          @IsHidden = ishidden
          @OneOfList = oneoflist
          @AnyOfList = anyoflist
          @Input = input
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          @IsRequired = params['IsRequired']
          unless params['SubParameterList'].nil?
            @SubParameterList = []
            params['SubParameterList'].each do |i|
              agenttoolinputparameter_tmp = AgentToolInputParameter.new
              agenttoolinputparameter_tmp.deserialize(i)
              @SubParameterList << agenttoolinputparameter_tmp
            end
          end
          @IsHidden = params['IsHidden']
          unless params['OneOfList'].nil?
            @OneOfList = []
            params['OneOfList'].each do |i|
              agenttoolinputparameter_tmp = AgentToolInputParameter.new
              agenttoolinputparameter_tmp.deserialize(i)
              @OneOfList << agenttoolinputparameter_tmp
            end
          end
          unless params['AnyOfList'].nil?
            @AnyOfList = []
            params['AnyOfList'].each do |i|
              agenttoolinputparameter_tmp = AgentToolInputParameter.new
              agenttoolinputparameter_tmp.deserialize(i)
              @AnyOfList << agenttoolinputparameter_tmp
            end
          end
          unless params['Input'].nil?
            @Input = AgentInput.new
            @Input.deserialize(params['Input'])
          end
        end
      end

      # Agent 工具输出参数
      class AgentToolOutputParameter < TencentCloud::Common::AbstractModel
        # @param Name: <p>参数名称</p>
        # @type Name: String
        # @param Description: <p>变量描述</p>
        # @type Description: String
        # @param Type: <p>参数类型</p><p>枚举值：</p><ul><li>0： STRING</li><li>1： INT</li><li>2： FLOAT</li><li>3： BOOL</li><li>4： OBJECT</li><li>5： ARRAY_STRING</li><li>6： ARRAY_INT</li><li>7： ARRAY_FLOAT</li><li>8： ARRAY_BOOL</li><li>9： ARRAY_OBJECT</li><li>20： ARRAY_ARRAY</li><li>99： NULL</li></ul>
        # @type Type: Integer
        # @param SubParameterList: <p>子参数，仅 OBJECT 或 ARRAY_OBJECT 类型时使用</p>
        # @type SubParameterList: Array
        # @param RenderMode: <p>解析方式</p>
        # @type RenderMode: Integer

        attr_accessor :Name, :Description, :Type, :SubParameterList, :RenderMode

        def initialize(name=nil, description=nil, type=nil, subparameterlist=nil, rendermode=nil)
          @Name = name
          @Description = description
          @Type = type
          @SubParameterList = subparameterlist
          @RenderMode = rendermode
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          unless params['SubParameterList'].nil?
            @SubParameterList = []
            params['SubParameterList'].each do |i|
              agenttooloutputparameter_tmp = AgentToolOutputParameter.new
              agenttooloutputparameter_tmp.deserialize(i)
              @SubParameterList << agenttooloutputparameter_tmp
            end
          end
          @RenderMode = params['RenderMode']
        end
      end

      # 用户输入值
      class AgentUserInputValue < TencentCloud::Common::AbstractModel
        # @param ValueList: <p>用户输入参数值</p>
        # @type ValueList: Array

        attr_accessor :ValueList

        def initialize(valuelist=nil)
          @ValueList = valuelist
        end

        def deserialize(params)
          @ValueList = params['ValueList']
        end
      end

      # ApiKey鉴权配置
      class ApiKeyAuthConfig < TencentCloud::Common::AbstractModel
        # @param KeyLocation: 密钥位置 HEADER/QUERY

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | Header鉴权 |
        # | 1 | Query鉴权 |
        # @type KeyLocation: Integer
        # @param KeyParamName: 密钥参数名
        # @type KeyParamName: String
        # @param KeyParamValue: 密钥参数值
        # @type KeyParamValue: String

        attr_accessor :KeyLocation, :KeyParamName, :KeyParamValue

        def initialize(keylocation=nil, keyparamname=nil, keyparamvalue=nil)
          @KeyLocation = keylocation
          @KeyParamName = keyparamname
          @KeyParamValue = keyparamvalue
        end

        def deserialize(params)
          @KeyLocation = params['KeyLocation']
          @KeyParamName = params['KeyParamName']
          @KeyParamValue = params['KeyParamValue']
        end
      end

      # API插件配置
      class ApiPluginConfig < TencentCloud::Common::AbstractModel
        # @param AuthConfig: 授权配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthConfig: :class:`Tencentcloud::Adp.v20260520.models.AuthConfig`

        attr_accessor :AuthConfig

        def initialize(authconfig=nil)
          @AuthConfig = authconfig
        end

        def deserialize(params)
          unless params['AuthConfig'].nil?
            @AuthConfig = AuthConfig.new
            @AuthConfig.deserialize(params['AuthConfig'])
          end
        end
      end

      # ApiToolConfig
      class ApiToolConfig < TencentCloud::Common::AbstractModel
        # @param Body: <p>请求体参数</p>
        # @type Body: Array
        # @param Example: <p>示例</p>
        # @type Example: :class:`Tencentcloud::Adp.v20260520.models.ToolExample`
        # @param ExternalApiUrl: <p>API插件外部调用地址</p>
        # @type ExternalApiUrl: String
        # @param Header: <p>Header</p>
        # @type Header: Array
        # @param Method: <p>请求方式</p>
        # @type Method: String
        # @param Outputs: <p>输出</p>
        # @type Outputs: Array
        # @param Query: <p>查询参数</p>
        # @type Query: Array
        # @param StreamMode: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>STREAM_MODE_UNARY</td><td>0</td><td>非流式</td></tr><tr><td>STREAM_MODE_STREAMING</td><td>1</td><td>流式</td></tr></tbody></table>
        # @type StreamMode: Integer
        # @param Url: <p>地址</p>
        # @type Url: String

        attr_accessor :Body, :Example, :ExternalApiUrl, :Header, :Method, :Outputs, :Query, :StreamMode, :Url

        def initialize(body=nil, example=nil, externalapiurl=nil, header=nil, method=nil, outputs=nil, query=nil, streammode=nil, url=nil)
          @Body = body
          @Example = example
          @ExternalApiUrl = externalapiurl
          @Header = header
          @Method = method
          @Outputs = outputs
          @Query = query
          @StreamMode = streammode
          @Url = url
        end

        def deserialize(params)
          unless params['Body'].nil?
            @Body = []
            params['Body'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @Body << requestparam_tmp
            end
          end
          unless params['Example'].nil?
            @Example = ToolExample.new
            @Example.deserialize(params['Example'])
          end
          @ExternalApiUrl = params['ExternalApiUrl']
          unless params['Header'].nil?
            @Header = []
            params['Header'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @Header << requestparam_tmp
            end
          end
          @Method = params['Method']
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              responseparam_tmp = ResponseParam.new
              responseparam_tmp.deserialize(i)
              @Outputs << responseparam_tmp
            end
          end
          unless params['Query'].nil?
            @Query = []
            params['Query'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @Query << requestparam_tmp
            end
          end
          @StreamMode = params['StreamMode']
          @Url = params['Url']
        end
      end

      # App 应用完整信息
      class App < TencentCloud::Common::AbstractModel
        # @param AuxiliaryInfo: 辅助信息(子状态/审批/申诉/搜索资源/特殊状态等)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuxiliaryInfo: :class:`Tencentcloud::Adp.v20260520.models.AppAuxiliaryInfo`
        # @param Config: 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Adp.v20260520.models.AppConfig`
        # @param Metadata: 元数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadata: :class:`Tencentcloud::Adp.v20260520.models.AppMetadata`
        # @param SecretInfo: 应用密钥信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretInfo: :class:`Tencentcloud::Adp.v20260520.models.AppSecretInfo`
        # @param ShareUrlInfo: 分享链接信息(含访问控制)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareUrlInfo: :class:`Tencentcloud::Adp.v20260520.models.AppShareURLInfo`
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: :class:`Tencentcloud::Adp.v20260520.models.AppStatusInfo`
        # @param SharedKbList: 应用引用的共享知识库列表
        # @type SharedKbList: Array

        attr_accessor :AuxiliaryInfo, :Config, :Metadata, :SecretInfo, :ShareUrlInfo, :Status, :SharedKbList

        def initialize(auxiliaryinfo=nil, config=nil, metadata=nil, secretinfo=nil, shareurlinfo=nil, status=nil, sharedkblist=nil)
          @AuxiliaryInfo = auxiliaryinfo
          @Config = config
          @Metadata = metadata
          @SecretInfo = secretinfo
          @ShareUrlInfo = shareurlinfo
          @Status = status
          @SharedKbList = sharedkblist
        end

        def deserialize(params)
          unless params['AuxiliaryInfo'].nil?
            @AuxiliaryInfo = AppAuxiliaryInfo.new
            @AuxiliaryInfo.deserialize(params['AuxiliaryInfo'])
          end
          unless params['Config'].nil?
            @Config = AppConfig.new
            @Config.deserialize(params['Config'])
          end
          unless params['Metadata'].nil?
            @Metadata = AppMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          unless params['SecretInfo'].nil?
            @SecretInfo = AppSecretInfo.new
            @SecretInfo.deserialize(params['SecretInfo'])
          end
          unless params['ShareUrlInfo'].nil?
            @ShareUrlInfo = AppShareURLInfo.new
            @ShareUrlInfo.deserialize(params['ShareUrlInfo'])
          end
          unless params['Status'].nil?
            @Status = AppStatusInfo.new
            @Status.deserialize(params['Status'])
          end
          unless params['SharedKbList'].nil?
            @SharedKbList = []
            params['SharedKbList'].each do |i|
              appsharedkbinfo_tmp = AppSharedKbInfo.new
              appsharedkbinfo_tmp.deserialize(i)
              @SharedKbList << appsharedkbinfo_tmp
            end
          end
        end
      end

      # 应用高级配置
      class AppAdvancedConf < TencentCloud::Common::AbstractModel
        # @param EnableContextRewrite: 是否开启上下文改写
        # @type EnableContextRewrite: Boolean
        # @param EnableImageTextRetrieval: 是否开启图文检索
        # @type EnableImageTextRetrieval: Boolean
        # @param ReplyFlexibility: 回复灵活度
        # @type ReplyFlexibility: Integer
        # @param IntentAchievement: 意图达成优先级
        # @type IntentAchievement: Array

        attr_accessor :EnableContextRewrite, :EnableImageTextRetrieval, :ReplyFlexibility, :IntentAchievement

        def initialize(enablecontextrewrite=nil, enableimagetextretrieval=nil, replyflexibility=nil, intentachievement=nil)
          @EnableContextRewrite = enablecontextrewrite
          @EnableImageTextRetrieval = enableimagetextretrieval
          @ReplyFlexibility = replyflexibility
          @IntentAchievement = intentachievement
        end

        def deserialize(params)
          @EnableContextRewrite = params['EnableContextRewrite']
          @EnableImageTextRetrieval = params['EnableImageTextRetrieval']
          @ReplyFlexibility = params['ReplyFlexibility']
          unless params['IntentAchievement'].nil?
            @IntentAchievement = []
            params['IntentAchievement'].each do |i|
              intentachievementinfo_tmp = IntentAchievementInfo.new
              intentachievementinfo_tmp.deserialize(i)
              @IntentAchievement << intentachievementinfo_tmp
            end
          end
        end
      end

      # 应用申诉信息(用户不可修改)
      class AppAppeal < TencentCloud::Common::AbstractModel
        # @param AppealingStatus: 申诉中的配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppealingStatus: :class:`Tencentcloud::Adp.v20260520.models.AppealingStatus`

        attr_accessor :AppealingStatus

        def initialize(appealingstatus=nil)
          @AppealingStatus = appealingstatus
        end

        def deserialize(params)
          unless params['AppealingStatus'].nil?
            @AppealingStatus = AppealingStatus.new
            @AppealingStatus.deserialize(params['AppealingStatus'])
          end
        end
      end

      # 应用辅助信息 - 包含各类辅助状态和扩展信息(用户不可修改)
      class AppAuxiliaryInfo < TencentCloud::Common::AbstractModel
        # @param Appeal: 申诉信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Appeal: :class:`Tencentcloud::Adp.v20260520.models.AppAppeal`
        # @param SearchResourceStatus: 搜索资源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchResourceStatus: :class:`Tencentcloud::Adp.v20260520.models.SearchResourceStatusInfo`
        # @param SpecialStatusInfo: 特殊状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecialStatusInfo: :class:`Tencentcloud::Adp.v20260520.models.SpecialStatusInfo`
        # @param SubStatus: 子状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubStatus: :class:`Tencentcloud::Adp.v20260520.models.AppSubStatusInfo`

        attr_accessor :Appeal, :SearchResourceStatus, :SpecialStatusInfo, :SubStatus

        def initialize(appeal=nil, searchresourcestatus=nil, specialstatusinfo=nil, substatus=nil)
          @Appeal = appeal
          @SearchResourceStatus = searchresourcestatus
          @SpecialStatusInfo = specialstatusinfo
          @SubStatus = substatus
        end

        def deserialize(params)
          unless params['Appeal'].nil?
            @Appeal = AppAppeal.new
            @Appeal.deserialize(params['Appeal'])
          end
          unless params['SearchResourceStatus'].nil?
            @SearchResourceStatus = SearchResourceStatusInfo.new
            @SearchResourceStatus.deserialize(params['SearchResourceStatus'])
          end
          unless params['SpecialStatusInfo'].nil?
            @SpecialStatusInfo = SpecialStatusInfo.new
            @SpecialStatusInfo.deserialize(params['SpecialStatusInfo'])
          end
          unless params['SubStatus'].nil?
            @SubStatus = AppSubStatusInfo.new
            @SubStatus.deserialize(params['SubStatus'])
          end
        end
      end

      # 应用配置 - 用户可修改的所有配置
      class AppConfig < TencentCloud::Common::AbstractModel
        # @param Experience: 体验配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Experience: :class:`Tencentcloud::Adp.v20260520.models.AppExperienceConfig`
        # @param Greeting: 欢迎语配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Greeting: :class:`Tencentcloud::Adp.v20260520.models.AppGreetingConfig`
        # @param Memory: 记忆配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: :class:`Tencentcloud::Adp.v20260520.models.AppMemoryConfig`
        # @param Mode: 模式相关配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: :class:`Tencentcloud::Adp.v20260520.models.AppModeConfig`
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.AppModelConfig`
        # @param WebSearch: 联网搜索配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSearch: :class:`Tencentcloud::Adp.v20260520.models.AppWebSearchConfig`
        # @param Workflow: 工作流配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Workflow: :class:`Tencentcloud::Adp.v20260520.models.AppWorkflowConfig`

        attr_accessor :Experience, :Greeting, :Memory, :Mode, :Model, :WebSearch, :Workflow

        def initialize(experience=nil, greeting=nil, memory=nil, mode=nil, model=nil, websearch=nil, workflow=nil)
          @Experience = experience
          @Greeting = greeting
          @Memory = memory
          @Mode = mode
          @Model = model
          @WebSearch = websearch
          @Workflow = workflow
        end

        def deserialize(params)
          unless params['Experience'].nil?
            @Experience = AppExperienceConfig.new
            @Experience.deserialize(params['Experience'])
          end
          unless params['Greeting'].nil?
            @Greeting = AppGreetingConfig.new
            @Greeting.deserialize(params['Greeting'])
          end
          unless params['Memory'].nil?
            @Memory = AppMemoryConfig.new
            @Memory.deserialize(params['Memory'])
          end
          unless params['Mode'].nil?
            @Mode = AppModeConfig.new
            @Mode.deserialize(params['Mode'])
          end
          unless params['Model'].nil?
            @Model = AppModelConfig.new
            @Model.deserialize(params['Model'])
          end
          unless params['WebSearch'].nil?
            @WebSearch = AppWebSearchConfig.new
            @WebSearch.deserialize(params['WebSearch'])
          end
          unless params['Workflow'].nil?
            @Workflow = AppWorkflowConfig.new
            @Workflow.deserialize(params['Workflow'])
          end
        end
      end

      # 体验配置
      class AppExperienceConfig < TencentCloud::Common::AbstractModel
        # @param Advanced: 高级配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Advanced: :class:`Tencentcloud::Adp.v20260520.models.AppAdvancedConf`
        # @param Conversation: 对话体验配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conversation: :class:`Tencentcloud::Adp.v20260520.models.ConversationExperience`
        # @param Role: 角色配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: :class:`Tencentcloud::Adp.v20260520.models.RoleConfig`

        attr_accessor :Advanced, :Conversation, :Role

        def initialize(advanced=nil, conversation=nil, role=nil)
          @Advanced = advanced
          @Conversation = conversation
          @Role = role
        end

        def deserialize(params)
          unless params['Advanced'].nil?
            @Advanced = AppAdvancedConf.new
            @Advanced.deserialize(params['Advanced'])
          end
          unless params['Conversation'].nil?
            @Conversation = ConversationExperience.new
            @Conversation.deserialize(params['Conversation'])
          end
          unless params['Role'].nil?
            @Role = RoleConfig.new
            @Role.deserialize(params['Role'])
          end
        end
      end

      # 欢迎语配置
      class AppGreetingConfig < TencentCloud::Common::AbstractModel
        # @param Greeting: 欢迎语内容
        # @type Greeting: String
        # @param OpeningQuestionList: 开场问题列表
        # @type OpeningQuestionList: Array

        attr_accessor :Greeting, :OpeningQuestionList

        def initialize(greeting=nil, openingquestionlist=nil)
          @Greeting = greeting
          @OpeningQuestionList = openingquestionlist
        end

        def deserialize(params)
          @Greeting = params['Greeting']
          @OpeningQuestionList = params['OpeningQuestionList']
        end
      end

      # 记忆配置
      class AppMemoryConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启长记忆
        # @type Enabled: Boolean
        # @param LongMemoryDay: 长记忆时长
        # @type LongMemoryDay: Integer
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.ModelDetailInfo`
        # @param PromptContent: prompt内容
        # @type PromptContent: String
        # @param PromptMode: 提示词模式。枚举值: 1:自定义
        # @type PromptMode: Integer

        attr_accessor :Enabled, :LongMemoryDay, :Model, :PromptContent, :PromptMode

        def initialize(enabled=nil, longmemoryday=nil, model=nil, promptcontent=nil, promptmode=nil)
          @Enabled = enabled
          @LongMemoryDay = longmemoryday
          @Model = model
          @PromptContent = promptcontent
          @PromptMode = promptmode
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @LongMemoryDay = params['LongMemoryDay']
          unless params['Model'].nil?
            @Model = ModelDetailInfo.new
            @Model.deserialize(params['Model'])
          end
          @PromptContent = params['PromptContent']
          @PromptMode = params['PromptMode']
        end
      end

      # 应用元数据 - 基础标识和描述信息
      class AppMetadata < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param AppMode: 应用模式。枚举值: 1:标准模式, 2:Agent模式, 3:单工作流模式, 4:ClawAgent模式
        # @type AppMode: Integer
        # @param Avatar: 应用头像
        # @type Avatar: String
        # @param CreateTime: 创建时间 (Unix时间戳,秒级)
        # @type CreateTime: String
        # @param Description: 应用描述
        # @type Description: String
        # @param Name: 应用名称
        # @type Name: String
        # @param SpaceId: 空间ID
        # @type SpaceId: String
        # @param UpdateTime: 更新时间 (Unix时间戳,秒级)
        # @type UpdateTime: String

        attr_accessor :AppId, :AppMode, :Avatar, :CreateTime, :Description, :Name, :SpaceId, :UpdateTime

        def initialize(appid=nil, appmode=nil, avatar=nil, createtime=nil, description=nil, name=nil, spaceid=nil, updatetime=nil)
          @AppId = appid
          @AppMode = appmode
          @Avatar = avatar
          @CreateTime = createtime
          @Description = description
          @Name = name
          @SpaceId = spaceid
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AppMode = params['AppMode']
          @Avatar = params['Avatar']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @Name = params['Name']
          @SpaceId = params['SpaceId']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 模式配置 - 包含不同模式的独有配置
      class AppModeConfig < TencentCloud::Common::AbstractModel
        # @param MultiAgentConfig: 多智能体配置(Agent模式)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiAgentConfig: :class:`Tencentcloud::Adp.v20260520.models.MultiAgentConfig`
        # @param SingleWorkflowConfig: 单工作流配置(单工作流模式)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SingleWorkflowConfig: :class:`Tencentcloud::Adp.v20260520.models.SingleWorkflowConfig`
        # @param ClawAgentConfig: ClawAgent配置(ClawAgent模式)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClawAgentConfig: :class:`Tencentcloud::Adp.v20260520.models.ClawAgentConfig`

        attr_accessor :MultiAgentConfig, :SingleWorkflowConfig, :ClawAgentConfig

        def initialize(multiagentconfig=nil, singleworkflowconfig=nil, clawagentconfig=nil)
          @MultiAgentConfig = multiagentconfig
          @SingleWorkflowConfig = singleworkflowconfig
          @ClawAgentConfig = clawagentconfig
        end

        def deserialize(params)
          unless params['MultiAgentConfig'].nil?
            @MultiAgentConfig = MultiAgentConfig.new
            @MultiAgentConfig.deserialize(params['MultiAgentConfig'])
          end
          unless params['SingleWorkflowConfig'].nil?
            @SingleWorkflowConfig = SingleWorkflowConfig.new
            @SingleWorkflowConfig.deserialize(params['SingleWorkflowConfig'])
          end
          unless params['ClawAgentConfig'].nil?
            @ClawAgentConfig = ClawAgentConfig.new
            @ClawAgentConfig.deserialize(params['ClawAgentConfig'])
          end
        end
      end

      # 模型配置
      class AppModelConfig < TencentCloud::Common::AbstractModel
        # @param AiOptimizeModel: AI一键优化模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiOptimizeModel: :class:`Tencentcloud::Adp.v20260520.models.AIOptimizeModel`
        # @param FileParseModel: 实时文件解析模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileParseModel: :class:`Tencentcloud::Adp.v20260520.models.FileParseModel`
        # @param GenerateModel: 生成模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GenerateModel: :class:`Tencentcloud::Adp.v20260520.models.GenerateModel`
        # @param MultiModalQaModel: 多模态问答模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiModalQaModel: :class:`Tencentcloud::Adp.v20260520.models.MultiModalQAModel`
        # @param MultiModalUnderstandingModel: 多模态理解模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiModalUnderstandingModel: :class:`Tencentcloud::Adp.v20260520.models.MultiModalUnderstandingModel`
        # @param PromptRewriteModel: Prompt改写模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PromptRewriteModel: :class:`Tencentcloud::Adp.v20260520.models.PromptRewriteModel`
        # @param ThinkModel: 思考模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThinkModel: :class:`Tencentcloud::Adp.v20260520.models.ThinkModel`

        attr_accessor :AiOptimizeModel, :FileParseModel, :GenerateModel, :MultiModalQaModel, :MultiModalUnderstandingModel, :PromptRewriteModel, :ThinkModel

        def initialize(aioptimizemodel=nil, fileparsemodel=nil, generatemodel=nil, multimodalqamodel=nil, multimodalunderstandingmodel=nil, promptrewritemodel=nil, thinkmodel=nil)
          @AiOptimizeModel = aioptimizemodel
          @FileParseModel = fileparsemodel
          @GenerateModel = generatemodel
          @MultiModalQaModel = multimodalqamodel
          @MultiModalUnderstandingModel = multimodalunderstandingmodel
          @PromptRewriteModel = promptrewritemodel
          @ThinkModel = thinkmodel
        end

        def deserialize(params)
          unless params['AiOptimizeModel'].nil?
            @AiOptimizeModel = AIOptimizeModel.new
            @AiOptimizeModel.deserialize(params['AiOptimizeModel'])
          end
          unless params['FileParseModel'].nil?
            @FileParseModel = FileParseModel.new
            @FileParseModel.deserialize(params['FileParseModel'])
          end
          unless params['GenerateModel'].nil?
            @GenerateModel = GenerateModel.new
            @GenerateModel.deserialize(params['GenerateModel'])
          end
          unless params['MultiModalQaModel'].nil?
            @MultiModalQaModel = MultiModalQAModel.new
            @MultiModalQaModel.deserialize(params['MultiModalQaModel'])
          end
          unless params['MultiModalUnderstandingModel'].nil?
            @MultiModalUnderstandingModel = MultiModalUnderstandingModel.new
            @MultiModalUnderstandingModel.deserialize(params['MultiModalUnderstandingModel'])
          end
          unless params['PromptRewriteModel'].nil?
            @PromptRewriteModel = PromptRewriteModel.new
            @PromptRewriteModel.deserialize(params['PromptRewriteModel'])
          end
          unless params['ThinkModel'].nil?
            @ThinkModel = ThinkModel.new
            @ThinkModel.deserialize(params['ThinkModel'])
          end
        end
      end

      # 应用操作信息
      class AppOperation < TencentCloud::Common::AbstractModel
        # @param Creator: 创建人
        # @type Creator: String
        # @param CreatorUin: 创建人UIN
        # @type CreatorUin: String
        # @param CreatorUserAccount: 创建人账号(私有化场景使用)
        # @type CreatorUserAccount: String
        # @param UpdateTime: 修改时间 (Unix时间戳,秒级)
        # @type UpdateTime: String
        # @param Updater: 最后修改人
        # @type Updater: String
        # @param UpdaterUin: 修改人UIN
        # @type UpdaterUin: String

        attr_accessor :Creator, :CreatorUin, :CreatorUserAccount, :UpdateTime, :Updater, :UpdaterUin

        def initialize(creator=nil, creatoruin=nil, creatoruseraccount=nil, updatetime=nil, updater=nil, updateruin=nil)
          @Creator = creator
          @CreatorUin = creatoruin
          @CreatorUserAccount = creatoruseraccount
          @UpdateTime = updatetime
          @Updater = updater
          @UpdaterUin = updateruin
        end

        def deserialize(params)
          @Creator = params['Creator']
          @CreatorUin = params['CreatorUin']
          @CreatorUserAccount = params['CreatorUserAccount']
          @UpdateTime = params['UpdateTime']
          @Updater = params['Updater']
          @UpdaterUin = params['UpdaterUin']
        end
      end

      # 应用插件配置信息
      class AppPluginConfig < TencentCloud::Common::AbstractModel
        # @param AppId: 基于发布应用创建插件的应用ID
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # 应用密钥信息
      class AppSecretInfo < TencentCloud::Common::AbstractModel
        # @param AppKey: 应用密钥
        # @type AppKey: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :AppKey, :CreateTime

        def initialize(appkey=nil, createtime=nil)
          @AppKey = appkey
          @CreateTime = createtime
        end

        def deserialize(params)
          @AppKey = params['AppKey']
          @CreateTime = params['CreateTime']
        end
      end

      # 应用分享访问控制配置
      class AppShareAccessControl < TencentCloud::Common::AbstractModel
        # @param AccessType: 访问控制类型。枚举值: 1:公开访问(所有用户都可访问), 2:内部访问(仅企业用户可访问), 3:账号白名单(指定UIN/手机/邮箱/IP可访问)
        # @type AccessType: Integer
        # @param Enabled: 体验链接开关
        # @type Enabled: Boolean
        # @param Whitelist: 白名单(仅 access_type=ACCOUNT_WHITELIST 时生效)
        # @type Whitelist: Array

        attr_accessor :AccessType, :Enabled, :Whitelist

        def initialize(accesstype=nil, enabled=nil, whitelist=nil)
          @AccessType = accesstype
          @Enabled = enabled
          @Whitelist = whitelist
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          @Enabled = params['Enabled']
          unless params['Whitelist'].nil?
            @Whitelist = []
            params['Whitelist'].each do |i|
              appsharewhitelistitem_tmp = AppShareWhitelistItem.new
              appsharewhitelistitem_tmp.deserialize(i)
              @Whitelist << appsharewhitelistitem_tmp
            end
          end
        end
      end

      # 分享链接信息(详情查询返回，用户不可修改部分；access_control 用户可修改部分由 ModifyApp 承载)
      class AppShareURLInfo < TencentCloud::Common::AbstractModel
        # @param AccessControl: 当前生效的访问控制配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessControl: :class:`Tencentcloud::Adp.v20260520.models.AppShareAccessControl`
        # @param ShareUrl: 分享URL
        # @type ShareUrl: String

        attr_accessor :AccessControl, :ShareUrl

        def initialize(accesscontrol=nil, shareurl=nil)
          @AccessControl = accesscontrol
          @ShareUrl = shareurl
        end

        def deserialize(params)
          unless params['AccessControl'].nil?
            @AccessControl = AppShareAccessControl.new
            @AccessControl.deserialize(params['AccessControl'])
          end
          @ShareUrl = params['ShareUrl']
        end
      end

      # 应用分享白名单项
      class AppShareWhitelistItem < TencentCloud::Common::AbstractModel
        # @param Type: 白名单类型。枚举值: 1:UIN账号, 2:手机号码, 3:邮箱地址, 4:IP地址
        # @type Type: Integer
        # @param Values: 白名单值列表(UIN/手机号/邮箱/IP等)
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

      # 应用引用的共享知识库简要信息(查询时仅返回ID和名称)
      class AppSharedKbInfo < TencentCloud::Common::AbstractModel
        # @param KbId: 共享知识库ID
        # @type KbId: String
        # @param KbName: 共享知识库名称
        # @type KbName: String

        attr_accessor :KbId, :KbName

        def initialize(kbid=nil, kbname=nil)
          @KbId = kbid
          @KbName = kbname
        end

        def deserialize(params)
          @KbId = params['KbId']
          @KbName = params['KbName']
        end
      end

      # 应用状态信息 - 运行时状态信息(用户不可修改)
      class AppStatusInfo < TencentCloud::Common::AbstractModel
        # @param Status: 应用状态 (OFFLINE:未上线, RUNNING:运行中, DISABLED:停用)。枚举值: 1:未上线, 2:运行中, 3:停用
        # @type Status: Integer
        # @param StatusDescription: 状态描述
        # @type StatusDescription: String

        attr_accessor :Status, :StatusDescription

        def initialize(status=nil, statusdescription=nil)
          @Status = status
          @StatusDescription = statusdescription
        end

        def deserialize(params)
          @Status = params['Status']
          @StatusDescription = params['StatusDescription']
        end
      end

      # 应用子状态信息
      class AppSubStatusInfo < TencentCloud::Common::AbstractModel
        # @param ApprovalId: 审批记录ID (当sub_status_list包含PUBLISH_APPROVING时有效)
        # @type ApprovalId: String
        # @param SubStatusList: 应用子状态列表 (可能同时处于多个子状态)
        # @type SubStatusList: Array

        attr_accessor :ApprovalId, :SubStatusList

        def initialize(approvalid=nil, substatuslist=nil)
          @ApprovalId = approvalid
          @SubStatusList = substatuslist
        end

        def deserialize(params)
          @ApprovalId = params['ApprovalId']
          @SubStatusList = params['SubStatusList']
        end
      end

      # 应用摘要 - 列表查询返回的应用信息
      class AppSummary < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param AppMode: 应用模式。枚举值: 1:标准模式, 2:Agent模式, 3:单工作流模式, 4:ClawAgent模式
        # @type AppMode: Integer
        # @param Avatar: 应用头像
        # @type Avatar: String
        # @param Name: 应用名称
        # @type Name: String
        # @param OperationInfo: 操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationInfo: :class:`Tencentcloud::Adp.v20260520.models.AppOperation`
        # @param Status: 状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: :class:`Tencentcloud::Adp.v20260520.models.AppStatusInfo`
        # @param SubStatus: 子状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubStatus: :class:`Tencentcloud::Adp.v20260520.models.AppSubStatusInfo`
        # @param PermissionIdList: 资源操作权限
        # @type PermissionIdList: Array

        attr_accessor :AppId, :AppMode, :Avatar, :Name, :OperationInfo, :Status, :SubStatus, :PermissionIdList

        def initialize(appid=nil, appmode=nil, avatar=nil, name=nil, operationinfo=nil, status=nil, substatus=nil, permissionidlist=nil)
          @AppId = appid
          @AppMode = appmode
          @Avatar = avatar
          @Name = name
          @OperationInfo = operationinfo
          @Status = status
          @SubStatus = substatus
          @PermissionIdList = permissionidlist
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AppMode = params['AppMode']
          @Avatar = params['Avatar']
          @Name = params['Name']
          unless params['OperationInfo'].nil?
            @OperationInfo = AppOperation.new
            @OperationInfo.deserialize(params['OperationInfo'])
          end
          unless params['Status'].nil?
            @Status = AppStatusInfo.new
            @Status.deserialize(params['Status'])
          end
          unless params['SubStatus'].nil?
            @SubStatus = AppSubStatusInfo.new
            @SubStatus.deserialize(params['SubStatus'])
          end
          @PermissionIdList = params['PermissionIdList']
        end
      end

      # AppToolConfig
      class AppToolConfig < TencentCloud::Common::AbstractModel
        # @param Inputs: <p>输入参数</p>
        # @type Inputs: Array
        # @param Outputs: <p>输出参数</p>
        # @type Outputs: Array

        attr_accessor :Inputs, :Outputs

        def initialize(inputs=nil, outputs=nil)
          @Inputs = inputs
          @Outputs = outputs
        end

        def deserialize(params)
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @Inputs << requestparam_tmp
            end
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              responseparam_tmp = ResponseParam.new
              responseparam_tmp.deserialize(i)
              @Outputs << responseparam_tmp
            end
          end
        end
      end

      # 联网搜索配置(国际版使用)
      class AppWebSearchConfig < TencentCloud::Common::AbstractModel
        # @param ApiKey: API密钥
        # @type ApiKey: String
        # @param Enabled: 是否开启
        # @type Enabled: Boolean
        # @param Provider: 服务提供商
        # @type Provider: String
        # @param TopN: 返回结果数量
        # @type TopN: Integer

        attr_accessor :ApiKey, :Enabled, :Provider, :TopN

        def initialize(apikey=nil, enabled=nil, provider=nil, topn=nil)
          @ApiKey = apikey
          @Enabled = enabled
          @Provider = provider
          @TopN = topn
        end

        def deserialize(params)
          @ApiKey = params['ApiKey']
          @Enabled = params['Enabled']
          @Provider = params['Provider']
          @TopN = params['TopN']
        end
      end

      # 工作流配置
      class AppWorkflowConfig < TencentCloud::Common::AbstractModel
        # @param EnablePDL: 是否使用PDL
        # @type EnablePDL: Boolean

        attr_accessor :EnablePDL

        def initialize(enablepdl=nil)
          @EnablePDL = enablepdl
        end

        def deserialize(params)
          @EnablePDL = params['EnablePDL']
        end
      end

      # 申诉中的配置 - 记录各配置项是否在申诉中
      class AppealingStatus < TencentCloud::Common::AbstractModel
        # @param AvatarInAppeal: 头像是否在申诉中
        # @type AvatarInAppeal: Boolean
        # @param FallbackReplyInAppeal: 兜底回复语是否在申诉中
        # @type FallbackReplyInAppeal: Boolean
        # @param GreetingInAppeal: 欢迎语是否在申诉中
        # @type GreetingInAppeal: Boolean
        # @param NameInAppeal: 应用名称是否在申诉中
        # @type NameInAppeal: Boolean
        # @param RoleInAppeal: 角色描述是否在申诉中
        # @type RoleInAppeal: Boolean

        attr_accessor :AvatarInAppeal, :FallbackReplyInAppeal, :GreetingInAppeal, :NameInAppeal, :RoleInAppeal

        def initialize(avatarinappeal=nil, fallbackreplyinappeal=nil, greetinginappeal=nil, nameinappeal=nil, roleinappeal=nil)
          @AvatarInAppeal = avatarinappeal
          @FallbackReplyInAppeal = fallbackreplyinappeal
          @GreetingInAppeal = greetinginappeal
          @NameInAppeal = nameinappeal
          @RoleInAppeal = roleinappeal
        end

        def deserialize(params)
          @AvatarInAppeal = params['AvatarInAppeal']
          @FallbackReplyInAppeal = params['FallbackReplyInAppeal']
          @GreetingInAppeal = params['GreetingInAppeal']
          @NameInAppeal = params['NameInAppeal']
          @RoleInAppeal = params['RoleInAppeal']
        end
      end

      # 插件授权配置
      class AuthConfig < TencentCloud::Common::AbstractModel
        # @param AuthType: <p>授权方式。</p><p>枚举值：</p><ul><li>0：无鉴权</li><li>1：API Key 鉴权</li><li>2：CAM 授权</li><li>3：OAuth 2.0 授权</li></ul>
        # @type AuthType: Integer
        # @param ApiKeyAuthConfig: API Key授权配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiKeyAuthConfig: :class:`Tencentcloud::Adp.v20260520.models.ApiKeyAuthConfig`
        # @param CamAuthConfig: CAM授权配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CamAuthConfig: :class:`Tencentcloud::Adp.v20260520.models.CamAuthConfig`
        # @param OAuthConfig: OAuth2.0授权配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OAuthConfig: :class:`Tencentcloud::Adp.v20260520.models.OAuthConfig`

        attr_accessor :AuthType, :ApiKeyAuthConfig, :CamAuthConfig, :OAuthConfig

        def initialize(authtype=nil, apikeyauthconfig=nil, camauthconfig=nil, oauthconfig=nil)
          @AuthType = authtype
          @ApiKeyAuthConfig = apikeyauthconfig
          @CamAuthConfig = camauthconfig
          @OAuthConfig = oauthconfig
        end

        def deserialize(params)
          @AuthType = params['AuthType']
          unless params['ApiKeyAuthConfig'].nil?
            @ApiKeyAuthConfig = ApiKeyAuthConfig.new
            @ApiKeyAuthConfig.deserialize(params['ApiKeyAuthConfig'])
          end
          unless params['CamAuthConfig'].nil?
            @CamAuthConfig = CamAuthConfig.new
            @CamAuthConfig.deserialize(params['CamAuthConfig'])
          end
          unless params['OAuthConfig'].nil?
            @OAuthConfig = OAuthConfig.new
            @OAuthConfig.deserialize(params['OAuthConfig'])
          end
        end
      end

      # BackgroundImage 背景图片配置
      class BackgroundImage < TencentCloud::Common::AbstractModel
        # @param Brightness: 亮度值
        # @type Brightness: Integer
        # @param LandscapeImageUrl: 横图(pc)
        # @type LandscapeImageUrl: String
        # @param OriginalImageUrl: 原始图
        # @type OriginalImageUrl: String
        # @param PortraitImageUrl: 长图(手机)
        # @type PortraitImageUrl: String
        # @param ThemeColor: 主题色
        # @type ThemeColor: String

        attr_accessor :Brightness, :LandscapeImageUrl, :OriginalImageUrl, :PortraitImageUrl, :ThemeColor

        def initialize(brightness=nil, landscapeimageurl=nil, originalimageurl=nil, portraitimageurl=nil, themecolor=nil)
          @Brightness = brightness
          @LandscapeImageUrl = landscapeimageurl
          @OriginalImageUrl = originalimageurl
          @PortraitImageUrl = portraitimageurl
          @ThemeColor = themecolor
        end

        def deserialize(params)
          @Brightness = params['Brightness']
          @LandscapeImageUrl = params['LandscapeImageUrl']
          @OriginalImageUrl = params['OriginalImageUrl']
          @PortraitImageUrl = params['PortraitImageUrl']
          @ThemeColor = params['ThemeColor']
        end
      end

      # BasicBilling
      class BasicBilling < TencentCloud::Common::AbstractModel
        # @param BillingUnit: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>UNKNOW</td><td>0</td><td></td></tr><tr><td>TOKEN</td><td>1</td><td>按token</td></tr><tr><td>PAGE_COUNT</td><td>2</td><td>按页数</td></tr><tr><td>TIMES</td><td>3</td><td>按次数</td></tr><tr><td>TIMES_THOUSAND</td><td>4</td><td>按千次数</td></tr><tr><td>SECOND</td><td>5</td><td>按时长</td></tr><tr><td>CHARACTER</td><td>6</td><td>按字符数</td></tr><tr><td>CHARACTER_THOUSAND</td><td>7</td><td>按千字符数</td></tr><tr><td>SHEET</td><td>8</td><td>按张</td></tr><tr><td>NUMBER</td><td>9</td><td>按个数</td></tr></tbody></table>
        # @type BillingUnit: Integer
        # @param CashPrice: <p>现金价格</p><p>单位：元</p>
        # @type CashPrice: Float
        # @param PuPrice: <p>PU价格</p><p>单位：pu</p>
        # @type PuPrice: Float

        attr_accessor :BillingUnit, :CashPrice, :PuPrice

        def initialize(billingunit=nil, cashprice=nil, puprice=nil)
          @BillingUnit = billingunit
          @CashPrice = cashprice
          @PuPrice = puprice
        end

        def deserialize(params)
          @BillingUnit = params['BillingUnit']
          @CashPrice = params['CashPrice']
          @PuPrice = params['PuPrice']
        end
      end

      # BillingAttribute
      class BillingAttribute < TencentCloud::Common::AbstractModel
        # @param Name: <p>属性名称</p>
        # @type Name: String
        # @param Value: <p>属性值</p>
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

      # CAM授权信息
      class CamAuthConfig < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param KeyLocation: 密钥位置 HEADER/QUERY

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 头鉴权 |
        # | 1 | 请求信息鉴权 |
        # @type KeyLocation: Integer
        # @param SecretIdName: SecretId字段名称
        # @type SecretIdName: String
        # @param SecretKeyName: SecretKey字段名称
        # @type SecretKeyName: String

        attr_accessor :RoleName, :KeyLocation, :SecretIdName, :SecretKeyName

        def initialize(rolename=nil, keylocation=nil, secretidname=nil, secretkeyname=nil)
          @RoleName = rolename
          @KeyLocation = keylocation
          @SecretIdName = secretidname
          @SecretKeyName = secretkeyname
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @KeyLocation = params['KeyLocation']
          @SecretIdName = params['SecretIdName']
          @SecretKeyName = params['SecretKeyName']
        end
      end

      # ClawAgent配置
      class ClawAgentConfig < TencentCloud::Common::AbstractModel
        # @param CustomConfig: 调用方自定义配置(控制C端用户在对话时可动态传入哪些自定义配置)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomConfig: :class:`Tencentcloud::Adp.v20260520.models.ClawAgentCustomConfig`

        attr_accessor :CustomConfig

        def initialize(customconfig=nil)
          @CustomConfig = customconfig
        end

        def deserialize(params)
          unless params['CustomConfig'].nil?
            @CustomConfig = ClawAgentCustomConfig.new
            @CustomConfig.deserialize(params['CustomConfig'])
          end
        end
      end

      # ClawAgent调用方自定义配置开关集合
      class ClawAgentCustomConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: <p>是否允许C端用户在对话时动态传入自定义Agent配置</p>
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # CodeToolConfig
      class CodeToolConfig < TencentCloud::Common::AbstractModel
        # @param Code: <p>代码</p>
        # @type Code: String
        # @param Example: <p>示例</p>
        # @type Example: :class:`Tencentcloud::Adp.v20260520.models.ToolExample`
        # @param Inputs: <p>输入参数</p>
        # @type Inputs: Array
        # @param Outputs: <p>输出参数</p>
        # @type Outputs: Array

        attr_accessor :Code, :Example, :Inputs, :Outputs

        def initialize(code=nil, example=nil, inputs=nil, outputs=nil)
          @Code = code
          @Example = example
          @Inputs = inputs
          @Outputs = outputs
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Example'].nil?
            @Example = ToolExample.new
            @Example.deserialize(params['Example'])
          end
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @Inputs << requestparam_tmp
            end
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              responseparam_tmp = ResponseParam.new
              responseparam_tmp.deserialize(i)
              @Outputs << responseparam_tmp
            end
          end
        end
      end

      # ComplexBilling
      class ComplexBilling < TencentCloud::Common::AbstractModel
        # @param ComplexList: <p>复合计费列表</p>
        # @type ComplexList: Array

        attr_accessor :ComplexList

        def initialize(complexlist=nil)
          @ComplexList = complexlist
        end

        def deserialize(params)
          unless params['ComplexList'].nil?
            @ComplexList = []
            params['ComplexList'].each do |i|
              complexbillingitem_tmp = ComplexBillingItem.new
              complexbillingitem_tmp.deserialize(i)
              @ComplexList << complexbillingitem_tmp
            end
          end
        end
      end

      # ComplexBillingItem
      class ComplexBillingItem < TencentCloud::Common::AbstractModel
        # @param BillingAttributeList: <p>复合计费维度信息</p>
        # @type BillingAttributeList: Array
        # @param BillingUnit: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>UNKNOW</td><td>0</td><td></td></tr><tr><td>TOKEN</td><td>1</td><td>按token</td></tr><tr><td>PAGE_COUNT</td><td>2</td><td>按页数</td></tr><tr><td>TIMES</td><td>3</td><td>按次数</td></tr><tr><td>TIMES_THOUSAND</td><td>4</td><td>按千次数</td></tr><tr><td>SECOND</td><td>5</td><td>按时长</td></tr><tr><td>CHARACTER</td><td>6</td><td>按字符数</td></tr><tr><td>CHARACTER_THOUSAND</td><td>7</td><td>按千字符数</td></tr><tr><td>SHEET</td><td>8</td><td>按张</td></tr><tr><td>NUMBER</td><td>9</td><td>按个数</td></tr></tbody></table>
        # @type BillingUnit: Integer
        # @param CashPrice: <p>现金价格</p><p>单位：元</p>
        # @type CashPrice: Float
        # @param PuPrice: <p>pu价格</p><p>单位：pu</p>
        # @type PuPrice: Float

        attr_accessor :BillingAttributeList, :BillingUnit, :CashPrice, :PuPrice

        def initialize(billingattributelist=nil, billingunit=nil, cashprice=nil, puprice=nil)
          @BillingAttributeList = billingattributelist
          @BillingUnit = billingunit
          @CashPrice = cashprice
          @PuPrice = puprice
        end

        def deserialize(params)
          unless params['BillingAttributeList'].nil?
            @BillingAttributeList = []
            params['BillingAttributeList'].each do |i|
              billingattribute_tmp = BillingAttribute.new
              billingattribute_tmp.deserialize(i)
              @BillingAttributeList << billingattribute_tmp
            end
          end
          @BillingUnit = params['BillingUnit']
          @CashPrice = params['CashPrice']
          @PuPrice = params['PuPrice']
        end
      end

      # Conversation 会话信息
      class Conversation < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param UpdateTime: <p>更新时间</p>
        # @type UpdateTime: String
        # @param Title: <p>会话标题</p>
        # @type Title: String
        # @param AgentId: <p>会话使用的用户端 AgentId</p>
        # @type AgentId: String

        attr_accessor :AppId, :ConversationId, :CreateTime, :Type, :UpdateTime, :Title, :AgentId

        def initialize(appid=nil, conversationid=nil, createtime=nil, type=nil, updatetime=nil, title=nil, agentid=nil)
          @AppId = appid
          @ConversationId = conversationid
          @CreateTime = createtime
          @Type = type
          @UpdateTime = updatetime
          @Title = title
          @AgentId = agentid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ConversationId = params['ConversationId']
          @CreateTime = params['CreateTime']
          @Type = params['Type']
          @UpdateTime = params['UpdateTime']
          @Title = params['Title']
          @AgentId = params['AgentId']
        end
      end

      # AgentTask 智能体任务信息
      class ConversationAgentTask < TencentCloud::Common::AbstractModel
        # @param Content: <p>任务内容</p>
        # @type Content: String
        # @param Index: <p>任务序号</p>
        # @type Index: String
        # @param Status: <p>任务状态，pending:待执行，processing:处理中，success:已完成，failed:处理失败，stop:已取消</p>
        # @type Status: String

        attr_accessor :Content, :Index, :Status

        def initialize(content=nil, index=nil, status=nil)
          @Content = content
          @Index = index
          @Status = status
        end

        def deserialize(params)
          @Content = params['Content']
          @Index = params['Index']
          @Status = params['Status']
        end
      end

      # Content 消息内容信息
      class ConversationContent < TencentCloud::Common::AbstractModel
        # @param Text: <p>文本内容</p>
        # @type Text: String
        # @param Type: <p>内容类型, text：文本,image：图片,file：文件,custom_variables：自定义输入参数信息,widget_action：widget动作信息</p>
        # @type Type: String
        # @param CustomParamList: <p>自定义参数数据</p>
        # @type CustomParamList: Array
        # @param CustomParams: <p>自定义参数数据</p>
        # @type CustomParams: Array
        # @param CustomVariablesData: <p>自定义变量数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomVariablesData: String
        # @param EnterpriseCharts: <p>企业表单</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnterpriseCharts: String
        # @param OptionCardList: <p>选项卡列表</p>
        # @type OptionCardList: Array
        # @param OptionCards: <p>选项卡列表</p>
        # @type OptionCards: Array
        # @param OptionMode: <p>选项卡模式 枚举值: 0-OPTION_MODE_SINGLE(单选), 1-OPTION_MODE_MULTI(多选)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptionMode: Integer
        # @param QuoteInfoList: <p>引用角标信息列表</p>
        # @type QuoteInfoList: Array
        # @param QuoteInfos: <p>引用角标信息列表</p>
        # @type QuoteInfos: Array
        # @param ReferenceList: <p>参考来源列表</p>
        # @type ReferenceList: Array
        # @param References: <p>参考来源列表</p>
        # @type References: Array
        # @param RelatedRecordId: <p>关联记录 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedRecordId: String
        # @param TaskList: <p>智能体任务列表</p>
        # @type TaskList: Array
        # @param Tasks: <p>智能体任务列表</p>
        # @type Tasks: Array
        # @param WorkflowInput: <p>工作流输入参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowInput: String

        attr_accessor :Text, :Type, :CustomParamList, :CustomParams, :CustomVariablesData, :EnterpriseCharts, :OptionCardList, :OptionCards, :OptionMode, :QuoteInfoList, :QuoteInfos, :ReferenceList, :References, :RelatedRecordId, :TaskList, :Tasks, :WorkflowInput

        def initialize(text=nil, type=nil, customparamlist=nil, customparams=nil, customvariablesdata=nil, enterprisecharts=nil, optioncardlist=nil, optioncards=nil, optionmode=nil, quoteinfolist=nil, quoteinfos=nil, referencelist=nil, references=nil, relatedrecordid=nil, tasklist=nil, tasks=nil, workflowinput=nil)
          @Text = text
          @Type = type
          @CustomParamList = customparamlist
          @CustomParams = customparams
          @CustomVariablesData = customvariablesdata
          @EnterpriseCharts = enterprisecharts
          @OptionCardList = optioncardlist
          @OptionCards = optioncards
          @OptionMode = optionmode
          @QuoteInfoList = quoteinfolist
          @QuoteInfos = quoteinfos
          @ReferenceList = referencelist
          @References = references
          @RelatedRecordId = relatedrecordid
          @TaskList = tasklist
          @Tasks = tasks
          @WorkflowInput = workflowinput
        end

        def deserialize(params)
          @Text = params['Text']
          @Type = params['Type']
          @CustomParamList = params['CustomParamList']
          @CustomParams = params['CustomParams']
          @CustomVariablesData = params['CustomVariablesData']
          @EnterpriseCharts = params['EnterpriseCharts']
          @OptionCardList = params['OptionCardList']
          @OptionCards = params['OptionCards']
          @OptionMode = params['OptionMode']
          unless params['QuoteInfoList'].nil?
            @QuoteInfoList = []
            params['QuoteInfoList'].each do |i|
              conversationquoteinfo_tmp = ConversationQuoteInfo.new
              conversationquoteinfo_tmp.deserialize(i)
              @QuoteInfoList << conversationquoteinfo_tmp
            end
          end
          unless params['QuoteInfos'].nil?
            @QuoteInfos = []
            params['QuoteInfos'].each do |i|
              conversationquoteinfo_tmp = ConversationQuoteInfo.new
              conversationquoteinfo_tmp.deserialize(i)
              @QuoteInfos << conversationquoteinfo_tmp
            end
          end
          unless params['ReferenceList'].nil?
            @ReferenceList = []
            params['ReferenceList'].each do |i|
              conversationreference_tmp = ConversationReference.new
              conversationreference_tmp.deserialize(i)
              @ReferenceList << conversationreference_tmp
            end
          end
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              conversationreference_tmp = ConversationReference.new
              conversationreference_tmp.deserialize(i)
              @References << conversationreference_tmp
            end
          end
          @RelatedRecordId = params['RelatedRecordId']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              conversationagenttask_tmp = ConversationAgentTask.new
              conversationagenttask_tmp.deserialize(i)
              @TaskList << conversationagenttask_tmp
            end
          end
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              conversationagenttask_tmp = ConversationAgentTask.new
              conversationagenttask_tmp.deserialize(i)
              @Tasks << conversationagenttask_tmp
            end
          end
          @WorkflowInput = params['WorkflowInput']
        end
      end

      # 对话体验配置
      class ConversationExperience < TencentCloud::Common::AbstractModel
        # @param AiCall: AI通话配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiCall: :class:`Tencentcloud::Adp.v20260520.models.AICallConfig`
        # @param BackgroundImage: 背景图片配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackgroundImage: :class:`Tencentcloud::Adp.v20260520.models.BackgroundImage`
        # @param EnableFallbackReply: 兜底回复开关
        # @type EnableFallbackReply: Boolean
        # @param EnableRecommended: 是否使用推荐问
        # @type EnableRecommended: Boolean
        # @param EnableWebSearch: 是否使用联网搜索
        # @type EnableWebSearch: Boolean
        # @param FallbackReply: 兜底回复语
        # @type FallbackReply: String
        # @param InputBoxConfig: 输入框配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputBoxConfig: :class:`Tencentcloud::Adp.v20260520.models.InputBoxConfig`
        # @param Method: 输出方式。枚举值: 1:流式, 2:非流式
        # @type Method: Integer
        # @param RecommendPromptMode: 推荐问生成prompt模式。枚举值: 1:仅结合知识库输出推荐问的prompt
        # @type RecommendPromptMode: Integer

        attr_accessor :AiCall, :BackgroundImage, :EnableFallbackReply, :EnableRecommended, :EnableWebSearch, :FallbackReply, :InputBoxConfig, :Method, :RecommendPromptMode

        def initialize(aicall=nil, backgroundimage=nil, enablefallbackreply=nil, enablerecommended=nil, enablewebsearch=nil, fallbackreply=nil, inputboxconfig=nil, method=nil, recommendpromptmode=nil)
          @AiCall = aicall
          @BackgroundImage = backgroundimage
          @EnableFallbackReply = enablefallbackreply
          @EnableRecommended = enablerecommended
          @EnableWebSearch = enablewebsearch
          @FallbackReply = fallbackreply
          @InputBoxConfig = inputboxconfig
          @Method = method
          @RecommendPromptMode = recommendpromptmode
        end

        def deserialize(params)
          unless params['AiCall'].nil?
            @AiCall = AICallConfig.new
            @AiCall.deserialize(params['AiCall'])
          end
          unless params['BackgroundImage'].nil?
            @BackgroundImage = BackgroundImage.new
            @BackgroundImage.deserialize(params['BackgroundImage'])
          end
          @EnableFallbackReply = params['EnableFallbackReply']
          @EnableRecommended = params['EnableRecommended']
          @EnableWebSearch = params['EnableWebSearch']
          @FallbackReply = params['FallbackReply']
          unless params['InputBoxConfig'].nil?
            @InputBoxConfig = InputBoxConfig.new
            @InputBoxConfig.deserialize(params['InputBoxConfig'])
          end
          @Method = params['Method']
          @RecommendPromptMode = params['RecommendPromptMode']
        end
      end

      # Message 消息信息
      class ConversationMessage < TencentCloud::Common::AbstractModel
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param Icon: <p>消息图标</p>
        # @type Icon: String
        # @param MessageId: <p>消息 ID</p>
        # @type MessageId: String
        # @param Name: <p>消息名称</p>
        # @type Name: String
        # @param RecordId: <p>记录 ID</p>
        # @type RecordId: String
        # @param Role: <p>消息角色</p>
        # @type Role: String
        # @param Status: <p>消息状态，pending:待执行，processing:处理中，success:已完成，failed:处理失败，stop:已取消</p>
        # @type Status: String
        # @param StatusDesc: <p>状态描述</p>
        # @type StatusDesc: String
        # @param Title: <p>消息标题</p>
        # @type Title: String
        # @param ContentList: <p>消息内容列表</p>
        # @type ContentList: Array
        # @param Contents: <p>消息内容列表</p>
        # @type Contents: Array
        # @param Type: <p>类型</p>
        # @type Type: String

        attr_accessor :ConversationId, :Icon, :MessageId, :Name, :RecordId, :Role, :Status, :StatusDesc, :Title, :ContentList, :Contents, :Type

        def initialize(conversationid=nil, icon=nil, messageid=nil, name=nil, recordid=nil, role=nil, status=nil, statusdesc=nil, title=nil, contentlist=nil, contents=nil, type=nil)
          @ConversationId = conversationid
          @Icon = icon
          @MessageId = messageid
          @Name = name
          @RecordId = recordid
          @Role = role
          @Status = status
          @StatusDesc = statusdesc
          @Title = title
          @ContentList = contentlist
          @Contents = contents
          @Type = type
        end

        def deserialize(params)
          @ConversationId = params['ConversationId']
          @Icon = params['Icon']
          @MessageId = params['MessageId']
          @Name = params['Name']
          @RecordId = params['RecordId']
          @Role = params['Role']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Title = params['Title']
          unless params['ContentList'].nil?
            @ContentList = []
            params['ContentList'].each do |i|
              conversationcontent_tmp = ConversationContent.new
              conversationcontent_tmp.deserialize(i)
              @ContentList << conversationcontent_tmp
            end
          end
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              conversationcontent_tmp = ConversationContent.new
              conversationcontent_tmp.deserialize(i)
              @Contents << conversationcontent_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # QuoteInfo 参考来源索引信息
      class ConversationQuoteInfo < TencentCloud::Common::AbstractModel
        # @param Index: <p>参考来源的索引值</p>
        # @type Index: Integer
        # @param Position: <p>参考来源位置</p>
        # @type Position: Integer

        attr_accessor :Index, :Position

        def initialize(index=nil, position=nil)
          @Index = index
          @Position = position
        end

        def deserialize(params)
          @Index = params['Index']
          @Position = params['Position']
        end
      end

      # Reference 参考来源信息
      class ConversationReference < TencentCloud::Common::AbstractModel
        # @param Index: <p>参考来源索引</p>
        # @type Index: Integer
        # @param Name: <p>参考来源名称</p>
        # @type Name: String
        # @param Type: <p>参考来源类型 枚举值: 0-APP_REFERENCE_TYPE_UNSPECIFIED(未指定), 1-APP_REFERENCE_TYPE_QA(问答), 2-APP_REFERENCE_TYPE_SEGMENT(分片), 3-APP_REFERENCE_TYPE_DOC(文档), 4-APP_REFERENCE_TYPE_WEB_SEARCH(Web 搜索), 5-APP_REFERENCE_TYPE_GRAPH_RAG(GraphRAG)</p>
        # @type Type: Integer

        attr_accessor :Index, :Name, :Type

        def initialize(index=nil, name=nil, type=nil)
          @Index = index
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @Index = params['Index']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # Workspace 工作空间信息
      class ConversationWorkspace < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID</p>
        # @type WorkspaceId: String
        # @param StorageType: <p>存储类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String

        attr_accessor :WorkspaceId, :StorageType

        def initialize(workspaceid=nil, storagetype=nil)
          @WorkspaceId = workspaceid
          @StorageType = storagetype
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @StorageType = params['StorageType']
        end
      end

      # CopyApp请求参数结构体
      class CopyAppRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param TargetSpaceId: target_space_id
        # @type TargetSpaceId: String

        attr_accessor :AppId, :TargetSpaceId

        def initialize(appid=nil, targetspaceid=nil)
          @AppId = appid
          @TargetSpaceId = targetspaceid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @TargetSpaceId = params['TargetSpaceId']
        end
      end

      # CopyApp返回参数结构体
      class CopyAppResponse < TencentCloud::Common::AbstractModel
        # @param NewAppId: new_app_id
        # @type NewAppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NewAppId, :RequestId

        def initialize(newappid=nil, requestid=nil)
          @NewAppId = newappid
          @RequestId = requestid
        end

        def deserialize(params)
          @NewAppId = params['NewAppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAgent请求参数结构体
      class CreateAgentRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用Id</p>
        # @type AppId: String
        # @param Agent: <p>Agent 配置</p>
        # @type Agent: :class:`Tencentcloud::Adp.v20260520.models.AgentSpec`
        # @param Kind: <p>Agent 类型，区分 B 端配置态 Agent 与 C 端用户态 Agent</p><p>枚举值：</p><ul><li>0： 配置端Agent</li><li>1： 用户态 Agent</li></ul>
        # @type Kind: Integer

        attr_accessor :AppId, :Agent, :Kind

        def initialize(appid=nil, agent=nil, kind=nil)
          @AppId = appid
          @Agent = agent
          @Kind = kind
        end

        def deserialize(params)
          @AppId = params['AppId']
          unless params['Agent'].nil?
            @Agent = AgentSpec.new
            @Agent.deserialize(params['Agent'])
          end
          @Kind = params['Kind']
        end
      end

      # CreateAgent返回参数结构体
      class CreateAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent Id</p>
        # @type AgentId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateApp请求参数结构体
      class CreateAppRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间ID
        # @type SpaceId: String
        # @param AppMode: 应用模式。枚举值: 1:标准模式, 2:Agent模式, 3:单工作流模式, 4:ClawAgent模式
        # @type AppMode: Integer
        # @param Avatar: 应用头像
        # @type Avatar: String
        # @param Description: 应用描述
        # @type Description: String
        # @param Name: 应用名称
        # @type Name: String

        attr_accessor :SpaceId, :AppMode, :Avatar, :Description, :Name

        def initialize(spaceid=nil, appmode=nil, avatar=nil, description=nil, name=nil)
          @SpaceId = spaceid
          @AppMode = appmode
          @Avatar = avatar
          @Description = description
          @Name = name
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @AppMode = params['AppMode']
          @Avatar = params['Avatar']
          @Description = params['Description']
          @Name = params['Name']
        end
      end

      # CreateApp返回参数结构体
      class CreateAppResponse < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :RequestId

        def initialize(appid=nil, requestid=nil)
          @AppId = appid
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateConversation请求参数结构体
      class CreateConversationRequest < TencentCloud::Common::AbstractModel
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param LoginSubAccountUin: <p>登录用户子账号(集成商模式必填)</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>登录用户主账号(集成商模式必填)</p>
        # @type LoginUin: String
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String
        # @param AgentId: <p>用户端 AgnetId，当Claw模式开启了“允许在对话中动态修改配置”时可用</p>
        # @type AgentId: String

        attr_accessor :Type, :AppId, :AppKey, :LoginSubAccountUin, :LoginUin, :ShareCode, :UserId, :AgentId

        def initialize(type=nil, appid=nil, appkey=nil, loginsubaccountuin=nil, loginuin=nil, sharecode=nil, userid=nil, agentid=nil)
          @Type = type
          @AppId = appid
          @AppKey = appkey
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @ShareCode = sharecode
          @UserId = userid
          @AgentId = agentid
        end

        def deserialize(params)
          @Type = params['Type']
          @AppId = params['AppId']
          @AppKey = params['AppKey']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
          @AgentId = params['AgentId']
        end
      end

      # CreateConversation返回参数结构体
      class CreateConversationResponse < TencentCloud::Common::AbstractModel
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConversationId, :RequestId

        def initialize(conversationid=nil, requestid=nil)
          @ConversationId = conversationid
          @RequestId = requestid
        end

        def deserialize(params)
          @ConversationId = params['ConversationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRelease请求参数结构体
      class CreateReleaseRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param ChannelIdList: 渠道ID列表
        # @type ChannelIdList: Array
        # @param Description: 发布描述
        # @type Description: String
        # @param IsDevToRelease: 将默认知识库中，仅调试生效的知识批量变更为"调试/发布都生效"
        # @type IsDevToRelease: Boolean
        # @param IsPublishAsTemplate: 是否同步发布为应用模板
        # @type IsPublishAsTemplate: Boolean

        attr_accessor :AppId, :ChannelIdList, :Description, :IsDevToRelease, :IsPublishAsTemplate

        def initialize(appid=nil, channelidlist=nil, description=nil, isdevtorelease=nil, ispublishastemplate=nil)
          @AppId = appid
          @ChannelIdList = channelidlist
          @Description = description
          @IsDevToRelease = isdevtorelease
          @IsPublishAsTemplate = ispublishastemplate
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ChannelIdList = params['ChannelIdList']
          @Description = params['Description']
          @IsDevToRelease = params['IsDevToRelease']
          @IsPublishAsTemplate = params['IsPublishAsTemplate']
        end
      end

      # CreateRelease返回参数结构体
      class CreateReleaseResponse < TencentCloud::Common::AbstractModel
        # @param NeedApproval: need_approval
        # @type NeedApproval: Boolean
        # @param ReleaseId: release_id
        # @type ReleaseId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NeedApproval, :ReleaseId, :RequestId

        def initialize(needapproval=nil, releaseid=nil, requestid=nil)
          @NeedApproval = needapproval
          @ReleaseId = releaseid
          @RequestId = requestid
        end

        def deserialize(params)
          @NeedApproval = params['NeedApproval']
          @ReleaseId = params['ReleaseId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSpace请求参数结构体
      class CreateSpaceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 工作空间名称,长度最大30个字符
        # @type Name: String
        # @param Description: 空间描述，长度最大150个字符
        # @type Description: String

        attr_accessor :Name, :Description

        def initialize(name=nil, description=nil)
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # CreateSpace返回参数结构体
      class CreateSpaceResponse < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间id
        # @type SpaceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpaceId, :RequestId

        def initialize(spaceid=nil, requestid=nil)
          @SpaceId = spaceid
          @RequestId = requestid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateVariable请求参数结构体
      class CreateVariableRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param Variable: 变量信息
        # @type Variable: :class:`Tencentcloud::Adp.v20260520.models.Variable`

        attr_accessor :AppId, :Variable

        def initialize(appid=nil, variable=nil)
          @AppId = appid
          @Variable = variable
        end

        def deserialize(params)
          @AppId = params['AppId']
          unless params['Variable'].nil?
            @Variable = Variable.new
            @Variable.deserialize(params['Variable'])
          end
        end
      end

      # CreateVariable返回参数结构体
      class CreateVariableResponse < TencentCloud::Common::AbstractModel
        # @param VariableId: variable_id
        # @type VariableId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VariableId, :RequestId

        def initialize(variableid=nil, requestid=nil)
          @VariableId = variableid
          @RequestId = requestid
        end

        def deserialize(params)
          @VariableId = params['VariableId']
          @RequestId = params['RequestId']
        end
      end

      # CreateWebSocketToken请求参数结构体
      class CreateWebSocketTokenRequest < TencentCloud::Common::AbstractModel
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param LoginSubAccountUin: <p>子用户Uin</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>主用户Uin</p>
        # @type LoginUin: String
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String

        attr_accessor :Type, :AppId, :AppKey, :LoginSubAccountUin, :LoginUin, :ShareCode, :UserId

        def initialize(type=nil, appid=nil, appkey=nil, loginsubaccountuin=nil, loginuin=nil, sharecode=nil, userid=nil)
          @Type = type
          @AppId = appid
          @AppKey = appkey
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @ShareCode = sharecode
          @UserId = userid
        end

        def deserialize(params)
          @Type = params['Type']
          @AppId = params['AppId']
          @AppKey = params['AppKey']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
        end
      end

      # CreateWebSocketToken返回参数结构体
      class CreateWebSocketTokenResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用ID</p>
        # @type AppId: String
        # @param Token: <p>WebSocket Token</p>
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :Token, :RequestId

        def initialize(appid=nil, token=nil, requestid=nil)
          @AppId = appid
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkspaceCredential请求参数结构体
      class CreateWorkspaceCredentialRequest < TencentCloud::Common::AbstractModel
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param WorkspaceId: <p>工作空间 ID</p>
        # @type WorkspaceId: String
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param LoginSubAccountUin: <p>子用户Uin</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>主用户Uin</p>
        # @type LoginUin: String
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String

        attr_accessor :Type, :WorkspaceId, :AppId, :AppKey, :LoginSubAccountUin, :LoginUin, :ShareCode, :UserId

        def initialize(type=nil, workspaceid=nil, appid=nil, appkey=nil, loginsubaccountuin=nil, loginuin=nil, sharecode=nil, userid=nil)
          @Type = type
          @WorkspaceId = workspaceid
          @AppId = appid
          @AppKey = appkey
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @ShareCode = sharecode
          @UserId = userid
        end

        def deserialize(params)
          @Type = params['Type']
          @WorkspaceId = params['WorkspaceId']
          @AppId = params['AppId']
          @AppKey = params['AppKey']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
        end
      end

      # CreateWorkspaceCredential返回参数结构体
      class CreateWorkspaceCredentialResponse < TencentCloud::Common::AbstractModel
        # @param StorageType: <p>存储类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param WorkspaceId: <p>工作空间 ID</p>
        # @type WorkspaceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StorageType, :WorkspaceId, :RequestId

        def initialize(storagetype=nil, workspaceid=nil, requestid=nil)
          @StorageType = storagetype
          @WorkspaceId = workspaceid
          @RequestId = requestid
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          @WorkspaceId = params['WorkspaceId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteApp请求参数结构体
      class DeleteAppRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # DeleteApp返回参数结构体
      class DeleteAppResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConversation请求参数结构体
      class DeleteConversationRequest < TencentCloud::Common::AbstractModel
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param LoginSubAccountUin: <p>子用户Uin</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>主用户Uin</p>
        # @type LoginUin: String
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String

        attr_accessor :ConversationId, :Type, :AppKey, :LoginSubAccountUin, :LoginUin, :ShareCode

        def initialize(conversationid=nil, type=nil, appkey=nil, loginsubaccountuin=nil, loginuin=nil, sharecode=nil)
          @ConversationId = conversationid
          @Type = type
          @AppKey = appkey
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @ShareCode = sharecode
        end

        def deserialize(params)
          @ConversationId = params['ConversationId']
          @Type = params['Type']
          @AppKey = params['AppKey']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @ShareCode = params['ShareCode']
        end
      end

      # DeleteConversation返回参数结构体
      class DeleteConversationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSpace请求参数结构体
      class DeleteSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间id
        # @type SpaceId: String

        attr_accessor :SpaceId

        def initialize(spaceid=nil)
          @SpaceId = spaceid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
        end
      end

      # DeleteSpace返回参数结构体
      class DeleteSpaceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVariable请求参数结构体
      class DeleteVariableRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param VariableId: variable_id
        # @type VariableId: String
        # @param ModuleType: module_type。枚举值: 1:环境参数, 2:应用参数, 3:系统参数, -1:所有参数
        # @type ModuleType: Integer

        attr_accessor :AppId, :VariableId, :ModuleType

        def initialize(appid=nil, variableid=nil, moduletype=nil)
          @AppId = appid
          @VariableId = variableid
          @ModuleType = moduletype
        end

        def deserialize(params)
          @AppId = params['AppId']
          @VariableId = params['VariableId']
          @ModuleType = params['ModuleType']
        end
      end

      # DeleteVariable返回参数结构体
      class DeleteVariableResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAgentDetail请求参数结构体
      class DescribeAgentDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用Id</p>
        # @type AppId: String
        # @param AgentId: <p>AgentId</p>
        # @type AgentId: String

        attr_accessor :AppId, :AgentId

        def initialize(appid=nil, agentid=nil)
          @AppId = appid
          @AgentId = agentid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AgentId = params['AgentId']
        end
      end

      # DescribeAgentDetail返回参数结构体
      class DescribeAgentDetailResponse < TencentCloud::Common::AbstractModel
        # @param Agent: <p>Agent信息</p>
        # @type Agent: :class:`Tencentcloud::Adp.v20260520.models.AgentDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Agent, :RequestId

        def initialize(agent=nil, requestid=nil)
          @Agent = agent
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = AgentDetail.new
            @Agent.deserialize(params['Agent'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentReleasePreviewList请求参数结构体
      class DescribeAgentReleasePreviewListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用Id</p>
        # @type AppId: String
        # @param PageNumber: <p>页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页数量在1到200之间</p>
        # @type PageSize: Integer
        # @param Query: <p>查询关键字, 用于模糊匹配标题</p>
        # @type Query: String
        # @param FilterList: <p>过滤条件</p><p>入参限制：支持 StartTime、EndTime、ActionList、ReleaseStatusList</p>
        # @type FilterList: Array

        attr_accessor :AppId, :PageNumber, :PageSize, :Query, :FilterList

        def initialize(appid=nil, pagenumber=nil, pagesize=nil, query=nil, filterlist=nil)
          @AppId = appid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @FilterList = filterlist
        end

        def deserialize(params)
          @AppId = params['AppId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          unless params['FilterList'].nil?
            @FilterList = []
            params['FilterList'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @FilterList << filter_tmp
            end
          end
        end
      end

      # DescribeAgentReleasePreviewList返回参数结构体
      class DescribeAgentReleasePreviewListResponse < TencentCloud::Common::AbstractModel
        # @param ReleaseList: <p>发布预览列表</p>
        # @type ReleaseList: Array
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReleaseList, :TotalCount, :RequestId

        def initialize(releaselist=nil, totalcount=nil, requestid=nil)
          @ReleaseList = releaselist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReleaseList'].nil?
            @ReleaseList = []
            params['ReleaseList'].each do |i|
              agentreleasepreview_tmp = AgentReleasePreview.new
              agentreleasepreview_tmp.deserialize(i)
              @ReleaseList << agentreleasepreview_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApp请求参数结构体
      class DescribeAppRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param Domain: 应用域: ADP_DOMAIN_DEV(1)=开发域, ADP_DOMAIN_PROD(2)=发布域。枚举值: 1:开发域, 2:生产域
        # @type Domain: Integer
        # @param FieldMask: 字段掩码，指定需要返回的字段(Paths为空则返回所有字段)。Paths枚举值：AppConfig(应用配置), SecretInfo(应用密钥信息), ShareUrlInfo(分享链接信息), SpecialStatusInfo(特殊状态信息), SearchResourceStatus(搜索资源状态), SharedKbList(应用引用的共享知识库列表)
        # @type FieldMask: :class:`Tencentcloud::Adp.v20260520.models.FieldMask`
        # @param StatusType: 特殊状态类型(当FieldMask包含SpecialStatusInfo时必填)。枚举值: 1:回滚状态, 2:首次导入状态
        # @type StatusType: Integer

        attr_accessor :AppId, :Domain, :FieldMask, :StatusType

        def initialize(appid=nil, domain=nil, fieldmask=nil, statustype=nil)
          @AppId = appid
          @Domain = domain
          @FieldMask = fieldmask
          @StatusType = statustype
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Domain = params['Domain']
          unless params['FieldMask'].nil?
            @FieldMask = FieldMask.new
            @FieldMask.deserialize(params['FieldMask'])
          end
          @StatusType = params['StatusType']
        end
      end

      # DescribeApp返回参数结构体
      class DescribeAppResponse < TencentCloud::Common::AbstractModel
        # @param App: 应用详情
        # @type App: :class:`Tencentcloud::Adp.v20260520.models.App`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :App, :RequestId

        def initialize(app=nil, requestid=nil)
          @App = app
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['App'].nil?
            @App = App.new
            @App.deserialize(params['App'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppSummaryList请求参数结构体
      class DescribeAppSummaryListRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间ID(必填)
        # @type SpaceId: String
        # @param FilterList: 过滤条件(多个Filter之间为AND关系,同一Filter的多个Values为OR关系): - AppStatus: 应用状态,枚举值,精确匹配(APP_STATUS_OFFLINE=1/APP_STATUS_RUNNING=2/APP_STATUS_DISABLED=3) - AppMode: 应用模式,枚举值,精确匹配(APP_MODE_STANDARD=1/APP_MODE_AGENT=2/APP_MODE_SINGLE_WORKFLOW=3/APP_MODE_CLAW_AGENT=4)
        # @type FilterList: Array
        # @param PageNumber: 页码(从0开始)
        # @type PageNumber: Integer
        # @param PageSize: 每页数量(最大值:100)
        # @type PageSize: Integer
        # @param Query: 模糊查询
        # @type Query: String

        attr_accessor :SpaceId, :FilterList, :PageNumber, :PageSize, :Query

        def initialize(spaceid=nil, filterlist=nil, pagenumber=nil, pagesize=nil, query=nil)
          @SpaceId = spaceid
          @FilterList = filterlist
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          unless params['FilterList'].nil?
            @FilterList = []
            params['FilterList'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @FilterList << filter_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
        end
      end

      # DescribeAppSummaryList返回参数结构体
      class DescribeAppSummaryListResponse < TencentCloud::Common::AbstractModel
        # @param AppSummaryList: 应用摘要列表
        # @type AppSummaryList: Array
        # @param TotalCount: total_count
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppSummaryList, :TotalCount, :RequestId

        def initialize(appsummarylist=nil, totalcount=nil, requestid=nil)
          @AppSummaryList = appsummarylist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppSummaryList'].nil?
            @AppSummaryList = []
            params['AppSummaryList'].each do |i|
              appsummary_tmp = AppSummary.new
              appsummary_tmp.deserialize(i)
              @AppSummaryList << appsummary_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConversationList请求参数结构体
      class DescribeConversationListRequest < TencentCloud::Common::AbstractModel
        # @param Type: <p>会话类型，传 CONVERSATION_TYPE_UNSPECIFIED 表示全部 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param Keyword: <p>关键词</p>
        # @type Keyword: String
        # @param Limit: <p>限制数目（整型），配合Offset使用</p>
        # @type Limit: Integer
        # @param LoginSubAccountUin: <p>子账户Uin</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>主账户Uin</p>
        # @type LoginUin: String
        # @param Offset: <p>偏移量（整型），配合Limit使用，从0开始</p>
        # @type Offset: Integer
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String
        # @param AgentId: <p>用户端 AgentId，当需要查询基于用户端 AgentId 创建的会话时使用</p>
        # @type AgentId: String

        attr_accessor :Type, :AppId, :AppKey, :Keyword, :Limit, :LoginSubAccountUin, :LoginUin, :Offset, :ShareCode, :UserId, :AgentId

        def initialize(type=nil, appid=nil, appkey=nil, keyword=nil, limit=nil, loginsubaccountuin=nil, loginuin=nil, offset=nil, sharecode=nil, userid=nil, agentid=nil)
          @Type = type
          @AppId = appid
          @AppKey = appkey
          @Keyword = keyword
          @Limit = limit
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @Offset = offset
          @ShareCode = sharecode
          @UserId = userid
          @AgentId = agentid
        end

        def deserialize(params)
          @Type = params['Type']
          @AppId = params['AppId']
          @AppKey = params['AppKey']
          @Keyword = params['Keyword']
          @Limit = params['Limit']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @Offset = params['Offset']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
          @AgentId = params['AgentId']
        end
      end

      # DescribeConversationList返回参数结构体
      class DescribeConversationListResponse < TencentCloud::Common::AbstractModel
        # @param ConversationList: <p>会话列表</p>
        # @type ConversationList: Array
        # @param Conversations: <p>会话列表</p>
        # @type Conversations: Array
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConversationList, :Conversations, :TotalCount, :RequestId

        def initialize(conversationlist=nil, conversations=nil, totalcount=nil, requestid=nil)
          @ConversationList = conversationlist
          @Conversations = conversations
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConversationList'].nil?
            @ConversationList = []
            params['ConversationList'].each do |i|
              conversation_tmp = Conversation.new
              conversation_tmp.deserialize(i)
              @ConversationList << conversation_tmp
            end
          end
          unless params['Conversations'].nil?
            @Conversations = []
            params['Conversations'].each do |i|
              conversation_tmp = Conversation.new
              conversation_tmp.deserialize(i)
              @Conversations << conversation_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConversationMessageList请求参数结构体
      class DescribeConversationMessageListRequest < TencentCloud::Common::AbstractModel
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param Limit: <p>返回记录总数量，默认 10，最大 50。向前或向后查询时，不包含record_id指定记录的消息，查询方向中心向前后查询时，包含record_id指定的记录消息，返回记录数量为前后各limit / 2条，向上取整</p>
        # @type Limit: Integer
        # @param LoginSubAccountUin: <p>子用户Uin</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>主用户Uin</p>
        # @type LoginUin: String
        # @param RecordId: <p>查询锚点记录 ID</p>
        # @type RecordId: String
        # @param RecordQueryDirection: <p>相对于 record_id 的查询方向 枚举值: 0-RECORD_QUERY_DIRECTION_UNSPECIFIED(未指定，兼容旧逻辑，默认向前查询), 1-RECORD_QUERY_DIRECTION_BACKWARD(从 record_id 向前查询更早的消息), 2-RECORD_QUERY_DIRECTION_FORWARD(从 record_id 向后查询更新的消息), 3-RECORD_QUERY_DIRECTION_BIDIRECTIONAL(以 record_id 为中心，同时向前后查询)</p>
        # @type RecordQueryDirection: Integer
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String

        attr_accessor :ConversationId, :Type, :AppKey, :Limit, :LoginSubAccountUin, :LoginUin, :RecordId, :RecordQueryDirection, :ShareCode, :UserId

        def initialize(conversationid=nil, type=nil, appkey=nil, limit=nil, loginsubaccountuin=nil, loginuin=nil, recordid=nil, recordquerydirection=nil, sharecode=nil, userid=nil)
          @ConversationId = conversationid
          @Type = type
          @AppKey = appkey
          @Limit = limit
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @RecordId = recordid
          @RecordQueryDirection = recordquerydirection
          @ShareCode = sharecode
          @UserId = userid
        end

        def deserialize(params)
          @ConversationId = params['ConversationId']
          @Type = params['Type']
          @AppKey = params['AppKey']
          @Limit = params['Limit']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @RecordId = params['RecordId']
          @RecordQueryDirection = params['RecordQueryDirection']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
        end
      end

      # DescribeConversationMessageList返回参数结构体
      class DescribeConversationMessageListResponse < TencentCloud::Common::AbstractModel
        # @param FirstRecordId: <p>第一个记录 ID</p>
        # @type FirstRecordId: String
        # @param HasMoreAfter: <p>更新消息方向是否还有更多</p>
        # @type HasMoreAfter: Boolean
        # @param HasMoreBefore: <p>更早消息方向是否还有更多</p>
        # @type HasMoreBefore: Boolean
        # @param LastRecordId: <p>最后一个记录 ID</p>
        # @type LastRecordId: String
        # @param MessageList: <p>消息列表</p>
        # @type MessageList: Array
        # @param Messages: <p>消息列表</p>
        # @type Messages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FirstRecordId, :HasMoreAfter, :HasMoreBefore, :LastRecordId, :MessageList, :Messages, :RequestId

        def initialize(firstrecordid=nil, hasmoreafter=nil, hasmorebefore=nil, lastrecordid=nil, messagelist=nil, messages=nil, requestid=nil)
          @FirstRecordId = firstrecordid
          @HasMoreAfter = hasmoreafter
          @HasMoreBefore = hasmorebefore
          @LastRecordId = lastrecordid
          @MessageList = messagelist
          @Messages = messages
          @RequestId = requestid
        end

        def deserialize(params)
          @FirstRecordId = params['FirstRecordId']
          @HasMoreAfter = params['HasMoreAfter']
          @HasMoreBefore = params['HasMoreBefore']
          @LastRecordId = params['LastRecordId']
          unless params['MessageList'].nil?
            @MessageList = []
            params['MessageList'].each do |i|
              conversationmessage_tmp = ConversationMessage.new
              conversationmessage_tmp.deserialize(i)
              @MessageList << conversationmessage_tmp
            end
          end
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              conversationmessage_tmp = ConversationMessage.new
              conversationmessage_tmp.deserialize(i)
              @Messages << conversationmessage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConversation请求参数结构体
      class DescribeConversationRequest < TencentCloud::Common::AbstractModel
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param LoginSubAccountUin: <p>主用户Uin</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>子用户Uin</p>
        # @type LoginUin: String
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String

        attr_accessor :ConversationId, :Type, :AppKey, :LoginSubAccountUin, :LoginUin, :ShareCode, :UserId

        def initialize(conversationid=nil, type=nil, appkey=nil, loginsubaccountuin=nil, loginuin=nil, sharecode=nil, userid=nil)
          @ConversationId = conversationid
          @Type = type
          @AppKey = appkey
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @ShareCode = sharecode
          @UserId = userid
        end

        def deserialize(params)
          @ConversationId = params['ConversationId']
          @Type = params['Type']
          @AppKey = params['AppKey']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
        end
      end

      # DescribeConversation返回参数结构体
      class DescribeConversationResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param UpdateTime: <p>更新时间</p>
        # @type UpdateTime: String
        # @param Workspace: <p>工作空间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Workspace: :class:`Tencentcloud::Adp.v20260520.models.ConversationWorkspace`
        # @param Title: <p>会话标题</p>
        # @type Title: String
        # @param AgentId: <p>会话使用的用户端 AgentId</p>
        # @type AgentId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :ConversationId, :CreateTime, :Type, :UpdateTime, :Workspace, :Title, :AgentId, :RequestId

        def initialize(appid=nil, conversationid=nil, createtime=nil, type=nil, updatetime=nil, workspace=nil, title=nil, agentid=nil, requestid=nil)
          @AppId = appid
          @ConversationId = conversationid
          @CreateTime = createtime
          @Type = type
          @UpdateTime = updatetime
          @Workspace = workspace
          @Title = title
          @AgentId = agentid
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ConversationId = params['ConversationId']
          @CreateTime = params['CreateTime']
          @Type = params['Type']
          @UpdateTime = params['UpdateTime']
          unless params['Workspace'].nil?
            @Workspace = ConversationWorkspace.new
            @Workspace.deserialize(params['Workspace'])
          end
          @Title = params['Title']
          @AgentId = params['AgentId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLatestRelease请求参数结构体
      class DescribeLatestReleaseRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # DescribeLatestRelease返回参数结构体
      class DescribeLatestReleaseResponse < TencentCloud::Common::AbstractModel
        # @param IsChanged: 是否有发布变更
        # @type IsChanged: Boolean
        # @param ReleaseSummary: 发布信息
        # @type ReleaseSummary: :class:`Tencentcloud::Adp.v20260520.models.ReleaseSummary`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsChanged, :ReleaseSummary, :RequestId

        def initialize(ischanged=nil, releasesummary=nil, requestid=nil)
          @IsChanged = ischanged
          @ReleaseSummary = releasesummary
          @RequestId = requestid
        end

        def deserialize(params)
          @IsChanged = params['IsChanged']
          unless params['ReleaseSummary'].nil?
            @ReleaseSummary = ReleaseSummary.new
            @ReleaseSummary.deserialize(params['ReleaseSummary'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelList请求参数结构体
      class DescribeModelListRequest < TencentCloud::Common::AbstractModel
        # @param ModelScene: <p>模型场景。0-不区分场景, 1-标准生成, 2-标准思考, 3-Agent思考, 4-多模态理解, 5-多模态问答, 6-改写, 7-长期记忆, 8-自然语言转SQL, 9-AI优化, 10-实时文件解析, 11-文件解析, 12-GraphRAG, 13-OpenClaw, 14-多模态Embedding, 15-Rerank, 16-文本Embedding, 17-Widget, 18-Claw模式, 19-工作流代码生成, 20-工作流大模型节点, 21-工作流节点专用向量化, 22-工作流参数提取, 23-工作流大模型知识问答, 24-工作流标签提取, 25-工作流意图识别, 26-工作流选项卡, 27-工作流逻辑判断, 28-文档生成问答, 29-知识库Schema</p><p>枚举值：</p><ul><li>0： 不区分场景</li><li>1： 标准生成</li><li>2： 标准思考</li><li>3： Agent思考</li><li>4： 多模态理解</li><li>5： 多模态问答</li><li>6： 改写</li><li>7： 长期记忆</li><li>8： 自然语言转SQL</li><li>9： AI优化</li><li>10： 实时文件解析</li><li>11： 文件解析</li><li>12： GraphRAG</li><li>13： OpenClaw</li><li>14： 多模态Embedding</li><li>15： Rerank</li><li>16： 文本Embedding</li><li>17： Widget</li><li>18： Claw模式</li><li>19： 工作流代码生成</li><li>20： 工作流大模型节点</li><li>21： 工作流节点专用向量化</li><li>22： 工作流参数提取</li><li>23： 工作流大模型知识问答</li><li>24： 工作流标签提取</li><li>25： 工作流意图识别</li><li>26： 工作流选项卡</li><li>27： 工作流逻辑判断</li><li>28： 文档生成问答</li><li>29： 知识库Schema</li></ul>
        # @type ModelScene: Integer
        # @param SpaceId: <p>空间ID</p>
        # @type SpaceId: String
        # @param Query: <p>关键词模糊搜索</p>
        # @type Query: String
        # @param PageNumber: <p>页码。从0开始</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页数量，默认20，最大100</p>
        # @type PageSize: Integer
        # @param FilterList: <p>过滤条件(多个 Filter 之间为 AND, 同一 Filter 多 Values 为 OR)<br>DeveloperName： 模型作者名称<br>ProviderName： 模型提供商名称<br>ProviderType：模型提供商类型</p>
        # @type FilterList: Array

        attr_accessor :ModelScene, :SpaceId, :Query, :PageNumber, :PageSize, :FilterList

        def initialize(modelscene=nil, spaceid=nil, query=nil, pagenumber=nil, pagesize=nil, filterlist=nil)
          @ModelScene = modelscene
          @SpaceId = spaceid
          @Query = query
          @PageNumber = pagenumber
          @PageSize = pagesize
          @FilterList = filterlist
        end

        def deserialize(params)
          @ModelScene = params['ModelScene']
          @SpaceId = params['SpaceId']
          @Query = params['Query']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['FilterList'].nil?
            @FilterList = []
            params['FilterList'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @FilterList << filter_tmp
            end
          end
        end
      end

      # DescribeModelList返回参数结构体
      class DescribeModelListResponse < TencentCloud::Common::AbstractModel
        # @param ModelList: <p>模型列表</p>
        # @type ModelList: Array
        # @param TotalCount: <p>模型总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelList, :TotalCount, :RequestId

        def initialize(modellist=nil, totalcount=nil, requestid=nil)
          @ModelList = modellist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelList'].nil?
            @ModelList = []
            params['ModelList'].each do |i|
              model_tmp = Model.new
              model_tmp.deserialize(i)
              @ModelList << model_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePlugin请求参数结构体
      class DescribePluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: <p>插件id</p>
        # @type PluginId: String
        # @param SpaceId: <p>当前空间id</p>
        # @type SpaceId: String
        # @param FieldMask: <p>获取指定字段</p>
        # @type FieldMask: :class:`Tencentcloud::Adp.v20260520.models.FieldMask`

        attr_accessor :PluginId, :SpaceId, :FieldMask

        def initialize(pluginid=nil, spaceid=nil, fieldmask=nil)
          @PluginId = pluginid
          @SpaceId = spaceid
          @FieldMask = fieldmask
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @SpaceId = params['SpaceId']
          unless params['FieldMask'].nil?
            @FieldMask = FieldMask.new
            @FieldMask.deserialize(params['FieldMask'])
          end
        end
      end

      # DescribePlugin返回参数结构体
      class DescribePluginResponse < TencentCloud::Common::AbstractModel
        # @param Plugin: <p>插件详情</p>
        # @type Plugin: :class:`Tencentcloud::Adp.v20260520.models.Plugin`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plugin, :RequestId

        def initialize(plugin=nil, requestid=nil)
          @Plugin = plugin
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plugin'].nil?
            @Plugin = Plugin.new
            @Plugin.deserialize(params['Plugin'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePluginSummaryList请求参数结构体
      class DescribePluginSummaryListRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间ID，查询空间内的插件列表时使用
        # @type SpaceId: String
        # @param FilterList: 过滤条件列表 支持：PluginKind、CategoryKey、PluginSource、PluginId、PluginClass、BillingType
        # @type FilterList: Array
        # @param IsFavoriteOnly: <p>是否只返回已收藏插件。取 true 时，仅返回当前用户已收藏的插件；取 false 或不传时不按收藏状态过滤。</p>
        # @type IsFavoriteOnly: Boolean
        # @param Module: <p>插件展示场景。不传或取 0 时不限定场景。</p><p>枚举值：</p><ul><li>0：不限定场景</li><li>1：Agent 模式</li><li>2：工作流</li><li>3：智能工作台</li></ul>
        # @type Module: Integer
        # @param PageNumber: 页码 从0开始
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param Query: 查询内容 模糊匹配：插件名称/插件描述/工具名称/工具描述
        # @type Query: String
        # @param SortType: <p>排序方式。</p><p>枚举值：</p><ul><li>0：未指定，默认排序</li><li>1：按相关性排序</li><li>2：按更新时间排序</li><li>3：默认排序</li><li>4：按热度排序</li></ul>
        # @type SortType: Integer

        attr_accessor :SpaceId, :FilterList, :IsFavoriteOnly, :Module, :PageNumber, :PageSize, :Query, :SortType

        def initialize(spaceid=nil, filterlist=nil, isfavoriteonly=nil, _module=nil, pagenumber=nil, pagesize=nil, query=nil, sorttype=nil)
          @SpaceId = spaceid
          @FilterList = filterlist
          @IsFavoriteOnly = isfavoriteonly
          @Module = _module
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @SortType = sorttype
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          unless params['FilterList'].nil?
            @FilterList = []
            params['FilterList'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @FilterList << filter_tmp
            end
          end
          @IsFavoriteOnly = params['IsFavoriteOnly']
          @Module = params['Module']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @SortType = params['SortType']
        end
      end

      # DescribePluginSummaryList返回参数结构体
      class DescribePluginSummaryListResponse < TencentCloud::Common::AbstractModel
        # @param PluginList: plugin_list
        # @type PluginList: Array
        # @param TotalCount: total_count
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PluginList, :TotalCount, :RequestId

        def initialize(pluginlist=nil, totalcount=nil, requestid=nil)
          @PluginList = pluginlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PluginList'].nil?
            @PluginList = []
            params['PluginList'].each do |i|
              pluginsummary_tmp = PluginSummary.new
              pluginsummary_tmp.deserialize(i)
              @PluginList << pluginsummary_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseList请求参数结构体
      class DescribeReleaseListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param PageNumber: 页码(从0开始)
        # @type PageNumber: Integer
        # @param PageSize: 每页数量(最大值:100)
        # @type PageSize: Integer

        attr_accessor :AppId, :PageNumber, :PageSize

        def initialize(appid=nil, pagenumber=nil, pagesize=nil)
          @AppId = appid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @AppId = params['AppId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeReleaseList返回参数结构体
      class DescribeReleaseListResponse < TencentCloud::Common::AbstractModel
        # @param ReleaseList: release_list
        # @type ReleaseList: Array
        # @param TotalCount: total_count
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReleaseList, :TotalCount, :RequestId

        def initialize(releaselist=nil, totalcount=nil, requestid=nil)
          @ReleaseList = releaselist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReleaseList'].nil?
            @ReleaseList = []
            params['ReleaseList'].each do |i|
              releaserecord_tmp = ReleaseRecord.new
              releaserecord_tmp.deserialize(i)
              @ReleaseList << releaserecord_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseSummary请求参数结构体
      class DescribeReleaseSummaryRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param ReleaseId: release_id
        # @type ReleaseId: String

        attr_accessor :AppId, :ReleaseId

        def initialize(appid=nil, releaseid=nil)
          @AppId = appid
          @ReleaseId = releaseid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ReleaseId = params['ReleaseId']
        end
      end

      # DescribeReleaseSummary返回参数结构体
      class DescribeReleaseSummaryResponse < TencentCloud::Common::AbstractModel
        # @param ReleaseSummary: 发布信息
        # @type ReleaseSummary: :class:`Tencentcloud::Adp.v20260520.models.ReleaseSummary`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReleaseSummary, :RequestId

        def initialize(releasesummary=nil, requestid=nil)
          @ReleaseSummary = releasesummary
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReleaseSummary'].nil?
            @ReleaseSummary = ReleaseSummary.new
            @ReleaseSummary.deserialize(params['ReleaseSummary'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSkillCategoryList请求参数结构体
      class DescribeSkillCategoryListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSkillCategoryList返回参数结构体
      class DescribeSkillCategoryListResponse < TencentCloud::Common::AbstractModel
        # @param CategoryList: Skill 分类列表
        # @type CategoryList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategoryList, :RequestId

        def initialize(categorylist=nil, requestid=nil)
          @CategoryList = categorylist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CategoryList'].nil?
            @CategoryList = []
            params['CategoryList'].each do |i|
              skillcategory_tmp = SkillCategory.new
              skillcategory_tmp.deserialize(i)
              @CategoryList << skillcategory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSkillSummaryList请求参数结构体
      class DescribeSkillSummaryListRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间ID，必填
        # @type SpaceId: String
        # @param FavoriteOnly: 仅查询当前用户收藏的 Skill
        # @type FavoriteOnly: Boolean
        # @param FilterList:    过滤条件(多个Filter之间为AND关系,同一Filter的多个Values为OR关系):
        #    - SkillIdList: Skill ID列表,字符串数组,精确匹配
        #    - ProviderType: Skill 提供方类型,枚举值数组,精确匹配
        #      (SKILL_PROVIDER_TYPE_OFFICIAL=1/SKILL_PROVIDER_TYPE_THIRD_PARTY=2/SKILL_PROVIDER_TYPE_CUSTOM=3/SKILL_PROVIDER_TYPE_CUSTOM_SHARED=4)
        #    - CategoryKey: 分类标识,字符串数组,精确匹配
        #    - AnalysisStatus: 安全检测状态,枚举值数组,精确匹配
        #      (SKILL_ANALYSIS_PENDING=0/SKILL_ANALYSIS_RUNNING=1/SKILL_ANALYSIS_AVAILABLE=2/SKILL_ANALYSIS_UNAVAILABLE=3/SKILL_ANALYSIS_FAILED=4)
        #    - RiskLevel: 风险等级,枚举值数组,精确匹配
        #      (SKILL_RISK_NONE=0/SKILL_RISK_LOW=1/SKILL_RISK_MEDIUM=2/SKILL_RISK_HIGH=3)
        # - SkillStatus: Skill 维度发布状态,枚举值数组,精确匹配,多值之间 OR;仅在 Perspective=EDITOR/ALL 时有实际意义
        # (SKILL_STATUS_INITIALIZED=0/SKILL_STATUS_AUDITING=1/SKILL_STATUS_PENDING_RELEASE=2/SKILL_STATUS_RELEASED=3)
        #    - ShareStatus: 共享状态,枚举值数组,精确匹配,仅在ProviderType包含SKILL_PROVIDER_TYPE_CUSTOM/SKILL_PROVIDER_TYPE_CUSTOM_SHARED时生效
        #      (SHARE_STATUS_UNSHARED=0/SHARE_STATUS_SHARED=1/SHARE_STATUS_APPROVING=2)
        #    - Perspective: 视角枚举,字符串单值,Values 长度必须为 1,多值视为非法;仅在 ProviderType=SKILL_PROVIDER_TYPE_CUSTOM 时生效;不传默认 USER
        #      (USER=使用者视角,仅返回仅有使用权限的 Skill / EDITOR=编辑者视角,仅返回有编辑权限的 Skill / ALL=全量视角,返回有任一权限位的 Skill)
        #   - Creator: 创建者过滤,字符串单值,Values 长度必须为 1,多值视为非法;仅在 ProviderType=SKILL_PROVIDER_TYPE_CUSTOM 时生效
        #    当前仅支持占位符 "$self",表示仅返回当前调用者创建的 Skill
        #    后续如需扩展为指定身份,再在此处追加约定
        # @type FilterList: Array
        # @param PageNumber: 页码，从 0 开始
        # @type PageNumber: Integer
        # @param PageSize: 每页数量，最大值 100
        # @type PageSize: Integer
        # @param Query: 名称/展示名称模糊搜索
        # @type Query: String

        attr_accessor :SpaceId, :FavoriteOnly, :FilterList, :PageNumber, :PageSize, :Query

        def initialize(spaceid=nil, favoriteonly=nil, filterlist=nil, pagenumber=nil, pagesize=nil, query=nil)
          @SpaceId = spaceid
          @FavoriteOnly = favoriteonly
          @FilterList = filterlist
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @FavoriteOnly = params['FavoriteOnly']
          unless params['FilterList'].nil?
            @FilterList = []
            params['FilterList'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @FilterList << filter_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
        end
      end

      # DescribeSkillSummaryList返回参数结构体
      class DescribeSkillSummaryListResponse < TencentCloud::Common::AbstractModel
        # @param SkillSummaryList: Skill 摘要列表
        # @type SkillSummaryList: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SkillSummaryList, :TotalCount, :RequestId

        def initialize(skillsummarylist=nil, totalcount=nil, requestid=nil)
          @SkillSummaryList = skillsummarylist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SkillSummaryList'].nil?
            @SkillSummaryList = []
            params['SkillSummaryList'].each do |i|
              skillsummary_tmp = SkillSummary.new
              skillsummary_tmp.deserialize(i)
              @SkillSummaryList << skillsummary_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceList请求参数结构体
      class DescribeSpaceListRequest < TencentCloud::Common::AbstractModel
        # @param Query: 支持空间名称模糊搜索
        # @type Query: String

        attr_accessor :Query

        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # DescribeSpaceList返回参数结构体
      class DescribeSpaceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: String
        # @param SpaceList: 空间列表
        # @type SpaceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SpaceList, :RequestId

        def initialize(totalcount=nil, spacelist=nil, requestid=nil)
          @TotalCount = totalcount
          @SpaceList = spacelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SpaceList'].nil?
            @SpaceList = []
            params['SpaceList'].each do |i|
              space_tmp = Space.new
              space_tmp.deserialize(i)
              @SpaceList << space_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSystemVariableList请求参数结构体
      class DescribeSystemVariableListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # DescribeSystemVariableList返回参数结构体
      class DescribeSystemVariableListResponse < TencentCloud::Common::AbstractModel
        # @param SystemVariableList: system_variable_list
        # @type SystemVariableList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SystemVariableList, :RequestId

        def initialize(systemvariablelist=nil, requestid=nil)
          @SystemVariableList = systemvariablelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SystemVariableList'].nil?
            @SystemVariableList = []
            params['SystemVariableList'].each do |i|
              systemvariable_tmp = SystemVariable.new
              systemvariable_tmp.deserialize(i)
              @SystemVariableList << systemvariable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVariableList请求参数结构体
      class DescribeVariableListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param FilterList: 过滤条件(支持: VariableIdList-变量ID列表, VariableType-变量类型)
        # @type FilterList: Array
        # @param ModuleType: 模块类型。枚举值: 1:环境参数, 2:应用参数, 3:系统参数, -1:所有参数
        # @type ModuleType: Integer
        # @param NeedInternalVariable: 是否需要内部变量
        # @type NeedInternalVariable: Boolean
        # @param PageNumber: 页码(从0开始)
        # @type PageNumber: Integer
        # @param PageSize: 每页数量(最大值:100)
        # @type PageSize: Integer
        # @param Query: 查询关键词
        # @type Query: String

        attr_accessor :AppId, :FilterList, :ModuleType, :NeedInternalVariable, :PageNumber, :PageSize, :Query

        def initialize(appid=nil, filterlist=nil, moduletype=nil, needinternalvariable=nil, pagenumber=nil, pagesize=nil, query=nil)
          @AppId = appid
          @FilterList = filterlist
          @ModuleType = moduletype
          @NeedInternalVariable = needinternalvariable
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
        end

        def deserialize(params)
          @AppId = params['AppId']
          unless params['FilterList'].nil?
            @FilterList = []
            params['FilterList'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @FilterList << filter_tmp
            end
          end
          @ModuleType = params['ModuleType']
          @NeedInternalVariable = params['NeedInternalVariable']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
        end
      end

      # DescribeVariableList返回参数结构体
      class DescribeVariableListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: total_count
        # @type TotalCount: Integer
        # @param VariableList: variable_list
        # @type VariableList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VariableList, :RequestId

        def initialize(totalcount=nil, variablelist=nil, requestid=nil)
          @TotalCount = totalcount
          @VariableList = variablelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VariableList'].nil?
            @VariableList = []
            params['VariableList'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @VariableList << variable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVariable请求参数结构体
      class DescribeVariableRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param VariableId: variable_id
        # @type VariableId: String
        # @param ModuleType: module_type。枚举值: 1:环境参数, 2:应用参数, 3:系统参数, -1:所有参数
        # @type ModuleType: Integer

        attr_accessor :AppId, :VariableId, :ModuleType

        def initialize(appid=nil, variableid=nil, moduletype=nil)
          @AppId = appid
          @VariableId = variableid
          @ModuleType = moduletype
        end

        def deserialize(params)
          @AppId = params['AppId']
          @VariableId = params['VariableId']
          @ModuleType = params['ModuleType']
        end
      end

      # DescribeVariable返回参数结构体
      class DescribeVariableResponse < TencentCloud::Common::AbstractModel
        # @param Variable: 变量信息
        # @type Variable: :class:`Tencentcloud::Adp.v20260520.models.Variable`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Variable, :RequestId

        def initialize(variable=nil, requestid=nil)
          @Variable = variable
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Variable'].nil?
            @Variable = Variable.new
            @Variable.deserialize(params['Variable'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数智人配置
      class DigitalHumanConfig < TencentCloud::Common::AbstractModel
        # @param AssetKey: 数智人形象资产id
        # @type AssetKey: String
        # @param Avatar: 数智人图片
        # @type Avatar: String
        # @param Name: 数智人形象名称
        # @type Name: String
        # @param PreviewUrl: 数智人预览地址
        # @type PreviewUrl: String

        attr_accessor :AssetKey, :Avatar, :Name, :PreviewUrl

        def initialize(assetkey=nil, avatar=nil, name=nil, previewurl=nil)
          @AssetKey = assetkey
          @Avatar = avatar
          @Name = name
          @PreviewUrl = previewurl
        end

        def deserialize(params)
          @AssetKey = params['AssetKey']
          @Avatar = params['Avatar']
          @Name = params['Name']
          @PreviewUrl = params['PreviewUrl']
        end
      end

      # DuplexBilling
      class DuplexBilling < TencentCloud::Common::AbstractModel
        # @param BillingUnit: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>UNKNOW</td><td>0</td><td></td></tr><tr><td>TOKEN</td><td>1</td><td>按token</td></tr><tr><td>PAGE_COUNT</td><td>2</td><td>按页数</td></tr><tr><td>TIMES</td><td>3</td><td>按次数</td></tr><tr><td>TIMES_THOUSAND</td><td>4</td><td>按千次数</td></tr><tr><td>SECOND</td><td>5</td><td>按时长</td></tr><tr><td>CHARACTER</td><td>6</td><td>按字符数</td></tr><tr><td>CHARACTER_THOUSAND</td><td>7</td><td>按千字符数</td></tr><tr><td>SHEET</td><td>8</td><td>按张</td></tr><tr><td>NUMBER</td><td>9</td><td>按个数</td></tr></tbody></table>
        # @type BillingUnit: Integer
        # @param InputCashPrice: <p>输入现金价格</p><p>单位：元</p>
        # @type InputCashPrice: Float
        # @param InputPuPrice: <p>输入pu价格</p><p>单位：pu</p>
        # @type InputPuPrice: Float
        # @param OutputCashPrice: <p>输出现金价格</p><p>单位：元</p>
        # @type OutputCashPrice: Float
        # @param OutputPuPrice: <p>输出pu价格</p><p>单位：pu</p>
        # @type OutputPuPrice: Float

        attr_accessor :BillingUnit, :InputCashPrice, :InputPuPrice, :OutputCashPrice, :OutputPuPrice

        def initialize(billingunit=nil, inputcashprice=nil, inputpuprice=nil, outputcashprice=nil, outputpuprice=nil)
          @BillingUnit = billingunit
          @InputCashPrice = inputcashprice
          @InputPuPrice = inputpuprice
          @OutputCashPrice = outputcashprice
          @OutputPuPrice = outputpuprice
        end

        def deserialize(params)
          @BillingUnit = params['BillingUnit']
          @InputCashPrice = params['InputCashPrice']
          @InputPuPrice = params['InputPuPrice']
          @OutputCashPrice = params['OutputCashPrice']
          @OutputPuPrice = params['OutputPuPrice']
        end
      end

      # FieldMask
      class FieldMask < TencentCloud::Common::AbstractModel
        # @param Paths: <p>参数名称</p><p>参数格式：需要获取的指定字段路径</p>
        # @type Paths: Array

        attr_accessor :Paths

        def initialize(paths=nil)
          @Paths = paths
        end

        def deserialize(params)
          @Paths = params['Paths']
        end
      end

      # 文档解析模型参数
      class FileParseModel < TencentCloud::Common::AbstractModel
        # @param Alias: 模型别名
        # @type Alias: String
        # @param Description: 模型描述
        # @type Description: String
        # @param EnhancementMode: 增强模式
        # @type EnhancementMode: String
        # @param ModelId: 模型唯一ID
        # @type ModelId: String
        # @param ModelProviderType: 模型类型
        # @type ModelProviderType: String
        # @param EnableFormulaEnhancement: 是否启用公式增强
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableFormulaEnhancement: Boolean
        # @param EnableLLMEnhancement: 是否启用 LLM 增强
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableLLMEnhancement: Boolean
        # @param OutputHtmlTable: 是否输出 HTML 表格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputHtmlTable: Boolean
        # @param SupportedFileList: 支持的文件类型列表
        # @type SupportedFileList: Array

        attr_accessor :Alias, :Description, :EnhancementMode, :ModelId, :ModelProviderType, :EnableFormulaEnhancement, :EnableLLMEnhancement, :OutputHtmlTable, :SupportedFileList

        def initialize(_alias=nil, description=nil, enhancementmode=nil, modelid=nil, modelprovidertype=nil, enableformulaenhancement=nil, enablellmenhancement=nil, outputhtmltable=nil, supportedfilelist=nil)
          @Alias = _alias
          @Description = description
          @EnhancementMode = enhancementmode
          @ModelId = modelid
          @ModelProviderType = modelprovidertype
          @EnableFormulaEnhancement = enableformulaenhancement
          @EnableLLMEnhancement = enablellmenhancement
          @OutputHtmlTable = outputhtmltable
          @SupportedFileList = supportedfilelist
        end

        def deserialize(params)
          @Alias = params['Alias']
          @Description = params['Description']
          @EnhancementMode = params['EnhancementMode']
          @ModelId = params['ModelId']
          @ModelProviderType = params['ModelProviderType']
          @EnableFormulaEnhancement = params['EnableFormulaEnhancement']
          @EnableLLMEnhancement = params['EnableLLMEnhancement']
          @OutputHtmlTable = params['OutputHtmlTable']
          unless params['SupportedFileList'].nil?
            @SupportedFileList = []
            params['SupportedFileList'].each do |i|
              supportedfiletype_tmp = SupportedFileType.new
              supportedfiletype_tmp.deserialize(i)
              @SupportedFileList << supportedfiletype_tmp
            end
          end
        end
      end

      # 列表通用过滤条件（多个 Filter 之间为 AND 关系，同一 Filter 的多个 value_list 为 OR 关系）
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名
        # @type Name: String
        # @param Operator: 操作符，默认 IN（向后兼容）<table><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>FILTER_OPERATOR_IN</td><td>0</td><td>属于 value_list（默认值，向后兼容；value_list 不可为空）</td></tr><tr><td>FILTER_OPERATOR_NOT_IN</td><td>1</td><td>不属于 value_list（value_list 不可为空）</td></tr></table>
        # @type Operator: Integer
        # @param ValueList: 过滤值数组
        # @type ValueList: Array

        attr_accessor :Name, :Operator, :ValueList

        def initialize(name=nil, operator=nil, valuelist=nil)
          @Name = name
          @Operator = operator
          @ValueList = valuelist
        end

        def deserialize(params)
          @Name = params['Name']
          @Operator = params['Operator']
          @ValueList = params['ValueList']
        end
      end

      # 生成模型配置
      class GenerateModel < TencentCloud::Common::AbstractModel
        # @param Model: 生成模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.ModelDetailInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelDetailInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # 输入框配置
      class InputBoxConfig < TencentCloud::Common::AbstractModel
        # @param InputBoxButtons: 输入框按钮，1：上传图片、2：上传文档，3：腾讯文档，4：联网搜索
        # @type InputBoxButtons: Array

        attr_accessor :InputBoxButtons

        def initialize(inputboxbuttons=nil)
          @InputBoxButtons = inputboxbuttons
        end

        def deserialize(params)
          @InputBoxButtons = params['InputBoxButtons']
        end
      end

      # 意图达成信息
      class IntentAchievementInfo < TencentCloud::Common::AbstractModel
        # @param Description: 描述
        # @type Description: String
        # @param Name: 名称
        # @type Name: String

        attr_accessor :Description, :Name

        def initialize(description=nil, name=nil)
          @Description = description
          @Name = name
        end

        def deserialize(params)
          @Description = params['Description']
          @Name = params['Name']
        end
      end

      # MCP插件配置信息
      class MCPPluginConfig < TencentCloud::Common::AbstractModel
        # @param ExternalMCPServerUrl: <p>MCP插件外部访问地址</p>
        # @type ExternalMCPServerUrl: String
        # @param MCPServerUrl: <p>MCP server地址</p>
        # @type MCPServerUrl: String
        # @param MCPTransport: <p>MCP传输类型: SSE/Streamable<br>枚举值:<br>| uint | 描述 |<br>| --- | --- |<br>| 0 | SSE + HTTP 模式 |<br>| 1 | Streamable HTTP 模式 |</p>
        # @type MCPTransport: Integer
        # @param PluginHeader: <p>MCP插件的header参数</p>
        # @type PluginHeader: Array
        # @param PluginQuery: <p>MCP插件的query参数</p>
        # @type PluginQuery: Array
        # @param SSEReadTimeout: <p>SSE长连接超时时间，单位秒</p>
        # @type SSEReadTimeout: Integer
        # @param Timeout: <p>请求超时时间，单位秒</p>
        # @type Timeout: Integer
        # @param AuthConfig: <p>授权信息</p>
        # @type AuthConfig: :class:`Tencentcloud::Adp.v20260520.models.AuthConfig`

        attr_accessor :ExternalMCPServerUrl, :MCPServerUrl, :MCPTransport, :PluginHeader, :PluginQuery, :SSEReadTimeout, :Timeout, :AuthConfig

        def initialize(externalmcpserverurl=nil, mcpserverurl=nil, mcptransport=nil, pluginheader=nil, pluginquery=nil, ssereadtimeout=nil, timeout=nil, authconfig=nil)
          @ExternalMCPServerUrl = externalmcpserverurl
          @MCPServerUrl = mcpserverurl
          @MCPTransport = mcptransport
          @PluginHeader = pluginheader
          @PluginQuery = pluginquery
          @SSEReadTimeout = ssereadtimeout
          @Timeout = timeout
          @AuthConfig = authconfig
        end

        def deserialize(params)
          @ExternalMCPServerUrl = params['ExternalMCPServerUrl']
          @MCPServerUrl = params['MCPServerUrl']
          @MCPTransport = params['MCPTransport']
          unless params['PluginHeader'].nil?
            @PluginHeader = []
            params['PluginHeader'].each do |i|
              pluginparam_tmp = PluginParam.new
              pluginparam_tmp.deserialize(i)
              @PluginHeader << pluginparam_tmp
            end
          end
          unless params['PluginQuery'].nil?
            @PluginQuery = []
            params['PluginQuery'].each do |i|
              pluginparam_tmp = PluginParam.new
              pluginparam_tmp.deserialize(i)
              @PluginQuery << pluginparam_tmp
            end
          end
          @SSEReadTimeout = params['SSEReadTimeout']
          @Timeout = params['Timeout']
          unless params['AuthConfig'].nil?
            @AuthConfig = AuthConfig.new
            @AuthConfig.deserialize(params['AuthConfig'])
          end
        end
      end

      # MCPToolConfig
      class MCPToolConfig < TencentCloud::Common::AbstractModel
        # @param Inputs: <p>输入参数</p>
        # @type Inputs: Array
        # @param Outputs: <p>输出参数</p>
        # @type Outputs: Array

        attr_accessor :Inputs, :Outputs

        def initialize(inputs=nil, outputs=nil)
          @Inputs = inputs
          @Outputs = outputs
        end

        def deserialize(params)
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @Inputs << requestparam_tmp
            end
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              responseparam_tmp = ResponseParam.new
              responseparam_tmp.deserialize(i)
              @Outputs << responseparam_tmp
            end
          end
        end
      end

      # 模型完整信息
      class Model < TencentCloud::Common::AbstractModel
        # @param BadgeList: <p>模型徽章列表</p>
        # @type BadgeList: Array
        # @param LimitInfo: <p>模型限制信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimitInfo: :class:`Tencentcloud::Adp.v20260520.models.ModelLimit`
        # @param ModelBasic: <p>模型基本信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelBasic: :class:`Tencentcloud::Adp.v20260520.models.ModelBasic`
        # @param ParameterList: <p>模型超参配置</p>
        # @type ParameterList: Array
        # @param PropertyList: <p>模型属性配置</p>
        # @type PropertyList: Array
        # @param ProviderInfo: <p>模型提供商信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProviderInfo: :class:`Tencentcloud::Adp.v20260520.models.ModelProviderBasic`
        # @param StatusInfo: <p>模型状态信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusInfo: :class:`Tencentcloud::Adp.v20260520.models.ModelStatus`
        # @param TagList: <p>模型标签列表</p>
        # @type TagList: Array
        # @param DeveloperInfo: <p>模型作者信息</p>
        # @type DeveloperInfo: :class:`Tencentcloud::Adp.v20260520.models.ModelDeveloperBasic`

        attr_accessor :BadgeList, :LimitInfo, :ModelBasic, :ParameterList, :PropertyList, :ProviderInfo, :StatusInfo, :TagList, :DeveloperInfo

        def initialize(badgelist=nil, limitinfo=nil, modelbasic=nil, parameterlist=nil, propertylist=nil, providerinfo=nil, statusinfo=nil, taglist=nil, developerinfo=nil)
          @BadgeList = badgelist
          @LimitInfo = limitinfo
          @ModelBasic = modelbasic
          @ParameterList = parameterlist
          @PropertyList = propertylist
          @ProviderInfo = providerinfo
          @StatusInfo = statusinfo
          @TagList = taglist
          @DeveloperInfo = developerinfo
        end

        def deserialize(params)
          unless params['BadgeList'].nil?
            @BadgeList = []
            params['BadgeList'].each do |i|
              modelbadge_tmp = ModelBadge.new
              modelbadge_tmp.deserialize(i)
              @BadgeList << modelbadge_tmp
            end
          end
          unless params['LimitInfo'].nil?
            @LimitInfo = ModelLimit.new
            @LimitInfo.deserialize(params['LimitInfo'])
          end
          unless params['ModelBasic'].nil?
            @ModelBasic = ModelBasic.new
            @ModelBasic.deserialize(params['ModelBasic'])
          end
          unless params['ParameterList'].nil?
            @ParameterList = []
            params['ParameterList'].each do |i|
              modelparameter_tmp = ModelParameter.new
              modelparameter_tmp.deserialize(i)
              @ParameterList << modelparameter_tmp
            end
          end
          unless params['PropertyList'].nil?
            @PropertyList = []
            params['PropertyList'].each do |i|
              modelproperty_tmp = ModelProperty.new
              modelproperty_tmp.deserialize(i)
              @PropertyList << modelproperty_tmp
            end
          end
          unless params['ProviderInfo'].nil?
            @ProviderInfo = ModelProviderBasic.new
            @ProviderInfo.deserialize(params['ProviderInfo'])
          end
          unless params['StatusInfo'].nil?
            @StatusInfo = ModelStatus.new
            @StatusInfo.deserialize(params['StatusInfo'])
          end
          @TagList = params['TagList']
          unless params['DeveloperInfo'].nil?
            @DeveloperInfo = ModelDeveloperBasic.new
            @DeveloperInfo.deserialize(params['DeveloperInfo'])
          end
        end
      end

      # 模型徽章
      class ModelBadge < TencentCloud::Common::AbstractModel
        # @param Text: 展示文案
        # @type Text: String
        # @param Theme: 样式主题。1-信息（蓝色）, 2-成功（绿色）, 3-警告（橙色）, 4-危险（红色）
        # @type Theme: Integer
        # @param Tips: tooltip文案，为空则不展示
        # @type Tips: String
        # @param Type: 徽章类型。1-限时免费, 2-即将下线, 3-新模型, 4-热门
        # @type Type: Integer

        attr_accessor :Text, :Theme, :Tips, :Type

        def initialize(text=nil, theme=nil, tips=nil, type=nil)
          @Text = text
          @Theme = theme
          @Tips = tips
          @Type = type
        end

        def deserialize(params)
          @Text = params['Text']
          @Theme = params['Theme']
          @Tips = params['Tips']
          @Type = params['Type']
        end
      end

      # 模型基本信息
      class ModelBasic < TencentCloud::Common::AbstractModel
        # @param Description: 模型描述
        # @type Description: String
        # @param IconUrl: 模型图标地址
        # @type IconUrl: String
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ModelType: 模型类型。1-LLM模型, 2-Rerank模型, 3-Embedding模型, 4-文档解析模型
        # @type ModelType: Integer
        # @param Name: 模型名称
        # @type Name: String

        attr_accessor :Description, :IconUrl, :ModelId, :ModelType, :Name

        def initialize(description=nil, iconurl=nil, modelid=nil, modeltype=nil, name=nil)
          @Description = description
          @IconUrl = iconurl
          @ModelId = modelid
          @ModelType = modeltype
          @Name = name
        end

        def deserialize(params)
          @Description = params['Description']
          @IconUrl = params['IconUrl']
          @ModelId = params['ModelId']
          @ModelType = params['ModelType']
          @Name = params['Name']
        end
      end

      # 模型详细信息
      class ModelDetailInfo < TencentCloud::Common::AbstractModel
        # @param Alias: 模型别名
        # @type Alias: String
        # @param HistoryLimit: 历史对话条数限制
        # @type HistoryLimit: Integer
        # @param ModelId: 模型唯一 ID
        # @type ModelId: String
        # @param ModelParams: 模型参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelParams: :class:`Tencentcloud::Adp.v20260520.models.ModelParams`

        attr_accessor :Alias, :HistoryLimit, :ModelId, :ModelParams

        def initialize(_alias=nil, historylimit=nil, modelid=nil, modelparams=nil)
          @Alias = _alias
          @HistoryLimit = historylimit
          @ModelId = modelid
          @ModelParams = modelparams
        end

        def deserialize(params)
          @Alias = params['Alias']
          @HistoryLimit = params['HistoryLimit']
          @ModelId = params['ModelId']
          unless params['ModelParams'].nil?
            @ModelParams = ModelParams.new
            @ModelParams.deserialize(params['ModelParams'])
          end
        end
      end

      # 模型作者信息
      class ModelDeveloperBasic < TencentCloud::Common::AbstractModel
        # @param Name: <p>作者标识</p>
        # @type Name: String
        # @param Alias: <p>作者显示名称</p>
        # @type Alias: String

        attr_accessor :Name, :Alias

        def initialize(name=nil, _alias=nil)
          @Name = name
          @Alias = _alias
        end

        def deserialize(params)
          @Name = params['Name']
          @Alias = params['Alias']
        end
      end

      # 模型限制信息
      class ModelLimit < TencentCloud::Common::AbstractModel
        # @param ContextLengthDescription: 模型上下文长度展示文案（如 "128K"、"1000K"）
        # @type ContextLengthDescription: String
        # @param InputLengthLimit: 模型对话框输入长度字符数限制
        # @type InputLengthLimit: Integer
        # @param PromptLengthLimit: 模型提示词长度字符数限制
        # @type PromptLengthLimit: Integer

        attr_accessor :ContextLengthDescription, :InputLengthLimit, :PromptLengthLimit

        def initialize(contextlengthdescription=nil, inputlengthlimit=nil, promptlengthlimit=nil)
          @ContextLengthDescription = contextlengthdescription
          @InputLengthLimit = inputlengthlimit
          @PromptLengthLimit = promptlengthlimit
        end

        def deserialize(params)
          @ContextLengthDescription = params['ContextLengthDescription']
          @InputLengthLimit = params['InputLengthLimit']
          @PromptLengthLimit = params['PromptLengthLimit']
        end
      end

      # 模型超参
      class ModelParameter < TencentCloud::Common::AbstractModel
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param EnumValueList: 可选值列表
        # @type EnumValueList: Array
        # @param MaxValue: 最大值（仅数值类型有效）
        # @type MaxValue: Float
        # @param MinValue: 最小值（仅数值类型有效）
        # @type MinValue: Float
        # @param Name: 超参名称
        # @type Name: String
        # @param Type: 超参类型。1-浮点数, 2-整数, 3-字符串
        # @type Type: Integer

        attr_accessor :DefaultValue, :EnumValueList, :MaxValue, :MinValue, :Name, :Type

        def initialize(defaultvalue=nil, enumvaluelist=nil, maxvalue=nil, minvalue=nil, name=nil, type=nil)
          @DefaultValue = defaultvalue
          @EnumValueList = enumvaluelist
          @MaxValue = maxvalue
          @MinValue = minvalue
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @DefaultValue = params['DefaultValue']
          @EnumValueList = params['EnumValueList']
          @MaxValue = params['MaxValue']
          @MinValue = params['MinValue']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 模型参数
      class ModelParams < TencentCloud::Common::AbstractModel
        # @param DeepThinking: 是否开启深度思考
        # @type DeepThinking: String
        # @param FrequencyPenalty: 频率惩罚
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrequencyPenalty: Float
        # @param MaxTokens: 最大输出长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTokens: Integer
        # @param PresencePenalty: 存在惩罚
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PresencePenalty: Float
        # @param ReasoningEffort: 深度思考效果
        # @type ReasoningEffort: String
        # @param RepetitionPenalty: 重复惩罚
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepetitionPenalty: Float
        # @param ReplyFormat: 输出格式（text、json_object）
        # @type ReplyFormat: String
        # @param Seed: seed 随机种子
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seed: Integer
        # @param StopSequenceList: 停止序列
        # @type StopSequenceList: Array
        # @param Temperature: 温度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Temperature: Float
        # @param TopP: top_p
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopP: Float

        attr_accessor :DeepThinking, :FrequencyPenalty, :MaxTokens, :PresencePenalty, :ReasoningEffort, :RepetitionPenalty, :ReplyFormat, :Seed, :StopSequenceList, :Temperature, :TopP

        def initialize(deepthinking=nil, frequencypenalty=nil, maxtokens=nil, presencepenalty=nil, reasoningeffort=nil, repetitionpenalty=nil, replyformat=nil, seed=nil, stopsequencelist=nil, temperature=nil, topp=nil)
          @DeepThinking = deepthinking
          @FrequencyPenalty = frequencypenalty
          @MaxTokens = maxtokens
          @PresencePenalty = presencepenalty
          @ReasoningEffort = reasoningeffort
          @RepetitionPenalty = repetitionpenalty
          @ReplyFormat = replyformat
          @Seed = seed
          @StopSequenceList = stopsequencelist
          @Temperature = temperature
          @TopP = topp
        end

        def deserialize(params)
          @DeepThinking = params['DeepThinking']
          @FrequencyPenalty = params['FrequencyPenalty']
          @MaxTokens = params['MaxTokens']
          @PresencePenalty = params['PresencePenalty']
          @ReasoningEffort = params['ReasoningEffort']
          @RepetitionPenalty = params['RepetitionPenalty']
          @ReplyFormat = params['ReplyFormat']
          @Seed = params['Seed']
          @StopSequenceList = params['StopSequenceList']
          @Temperature = params['Temperature']
          @TopP = params['TopP']
        end
      end

      # 模型属性
      class ModelProperty < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称
        # @type Name: String
        # @param Value: 属性值
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

      # 模型提供商基本信息
      class ModelProviderBasic < TencentCloud::Common::AbstractModel
        # @param Alias: 模型提供商别名
        # @type Alias: String
        # @param Name: 模型提供商名称
        # @type Name: String
        # @param ProviderType: 模型提供商类型。1-自有提供商, 2-自定义模型提供商, 3-第三方模型提供商
        # @type ProviderType: Integer

        attr_accessor :Alias, :Name, :ProviderType

        def initialize(_alias=nil, name=nil, providertype=nil)
          @Alias = _alias
          @Name = name
          @ProviderType = providertype
        end

        def deserialize(params)
          @Alias = params['Alias']
          @Name = params['Name']
          @ProviderType = params['ProviderType']
        end
      end

      # 模型状态信息
      class ModelStatus < TencentCloud::Common::AbstractModel
        # @param Concurrency: 专属并发数
        # @type Concurrency: Integer
        # @param IsExclusive: 是否专属并发
        # @type IsExclusive: Boolean
        # @param ResourceStatus: 资源状态。1-资源可用, 2-资源已用尽
        # @type ResourceStatus: Integer

        attr_accessor :Concurrency, :IsExclusive, :ResourceStatus

        def initialize(concurrency=nil, isexclusive=nil, resourcestatus=nil)
          @Concurrency = concurrency
          @IsExclusive = isexclusive
          @ResourceStatus = resourcestatus
        end

        def deserialize(params)
          @Concurrency = params['Concurrency']
          @IsExclusive = params['IsExclusive']
          @ResourceStatus = params['ResourceStatus']
        end
      end

      # ModifyAgent请求参数结构体
      class ModifyAgentRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用Id</p>
        # @type AppId: String
        # @param AgentId: <p>Agent Id</p>
        # @type AgentId: String
        # @param Agent: <p>修改后的Agent的信息</p>
        # @type Agent: :class:`Tencentcloud::Adp.v20260520.models.AgentSpec`
        # @param UpdateMask: <p>需要更新的字段路径，如 ["Profile.Name", "Profile.IconUrl", "Instructions", "Model", "ToolList", "PluginList", "SkillList", "AdvancedConfig"]</p>
        # @type UpdateMask: :class:`Tencentcloud::Adp.v20260520.models.FieldMask`

        attr_accessor :AppId, :AgentId, :Agent, :UpdateMask

        def initialize(appid=nil, agentid=nil, agent=nil, updatemask=nil)
          @AppId = appid
          @AgentId = agentid
          @Agent = agent
          @UpdateMask = updatemask
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AgentId = params['AgentId']
          unless params['Agent'].nil?
            @Agent = AgentSpec.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['UpdateMask'].nil?
            @UpdateMask = FieldMask.new
            @UpdateMask.deserialize(params['UpdateMask'])
          end
        end
      end

      # ModifyAgent返回参数结构体
      class ModifyAgentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApp请求参数结构体
      class ModifyAppRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param AppMode: 应用模式。枚举值: 1:标准模式, 2:Agent模式, 3:单工作流模式, 4:ClawAgent模式
        # @type AppMode: Integer
        # @param Avatar: 应用头像
        # @type Avatar: String
        # @param Config: 应用配置
        # @type Config: :class:`Tencentcloud::Adp.v20260520.models.AppConfig`
        # @param Description: 应用描述
        # @type Description: String
        # @param Name: 应用名称
        # @type Name: String
        # @param ShareConfig: 分享配置
        # @type ShareConfig: :class:`Tencentcloud::Adp.v20260520.models.AppShareAccessControl`
        # @param SharedKbIdList: 引用的共享知识库ID列表(全量覆盖)
        # @type SharedKbIdList: Array
        # @param UpdateMask: 字段掩码，指定需要更新的字段(Paths为空则不更新任何字段)。Paths枚举值：
        # 【顶层】Name, Avatar, Description, AppMode, ShareConfig, SharedKbIdList
        # 【Greeting】Config.Greeting, Config.Greeting.Greeting, Config.Greeting.OpeningQuestionList
        # 【Model】Config.Model, Config.Model.ThinkModel, Config.Model.GenerateModel, Config.Model.AiOptimizeModel, Config.Model.FileParseModel, Config.Model.PromptRewriteModel, Config.Model.MultiModalQaModel, Config.Model.MultiModalUnderstandingModel
        # 【WebSearch】Config.WebSearch
        # 【Memory】Config.Memory, Config.Memory.Enabled, Config.Memory.LongMemoryDay, Config.Memory.Model, Config.Memory.PromptMode, Config.Memory.PromptContent
        # 【Mode】Config.Mode, Config.Mode.MultiAgentConfig, Config.Mode.SingleWorkflowConfig
        # 【Experience】Config.Experience, Config.Experience.Conversation, Config.Experience.Role, Config.Experience.Advanced
        # 【Experience.Conversation】Config.Experience.Conversation.AiCall, Config.Experience.Conversation.BackgroundImage, Config.Experience.Conversation.Method, Config.Experience.Conversation.FallbackReply, Config.Experience.Conversation.Recommended, Config.Experience.Conversation.InputBoxConfig, Config.Experience.Conversation.WebSearch
        # 【Experience.Conversation.AiCall】Config.Experience.Conversation.AiCall.VoiceInteract, Config.Experience.Conversation.AiCall.VoiceCall, Config.Experience.Conversation.AiCall.DigitalHuman
        # 【Experience.Advanced】Config.Experience.Advanced.ContextRewrite, Config.Experience.Advanced.ImageTextRetrieval, Config.Experience.Advanced.IntentAchievement, Config.Experience.Advanced.ReplyFlexibility
        # @type UpdateMask: :class:`Tencentcloud::Adp.v20260520.models.FieldMask`

        attr_accessor :AppId, :AppMode, :Avatar, :Config, :Description, :Name, :ShareConfig, :SharedKbIdList, :UpdateMask

        def initialize(appid=nil, appmode=nil, avatar=nil, config=nil, description=nil, name=nil, shareconfig=nil, sharedkbidlist=nil, updatemask=nil)
          @AppId = appid
          @AppMode = appmode
          @Avatar = avatar
          @Config = config
          @Description = description
          @Name = name
          @ShareConfig = shareconfig
          @SharedKbIdList = sharedkbidlist
          @UpdateMask = updatemask
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AppMode = params['AppMode']
          @Avatar = params['Avatar']
          unless params['Config'].nil?
            @Config = AppConfig.new
            @Config.deserialize(params['Config'])
          end
          @Description = params['Description']
          @Name = params['Name']
          unless params['ShareConfig'].nil?
            @ShareConfig = AppShareAccessControl.new
            @ShareConfig.deserialize(params['ShareConfig'])
          end
          @SharedKbIdList = params['SharedKbIdList']
          unless params['UpdateMask'].nil?
            @UpdateMask = FieldMask.new
            @UpdateMask.deserialize(params['UpdateMask'])
          end
        end
      end

      # ModifyApp返回参数结构体
      class ModifyAppResponse < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param UpdateTime: 更新时间 (Unix时间戳,秒级)
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :UpdateTime, :RequestId

        def initialize(appid=nil, updatetime=nil, requestid=nil)
          @AppId = appid
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # ModifyConversation请求参数结构体
      class ModifyConversationRequest < TencentCloud::Common::AbstractModel
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param LoginSubAccountUin: <p>登录用户子账号(集成商模式必填)</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>登录用户主账号(集成商模式必填)</p>
        # @type LoginUin: String
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String
        # @param ConversationId: 会话ID
        # @type ConversationId: String
        # @param Title: 会话标题
        # @type Title: String

        attr_accessor :Type, :AppId, :AppKey, :LoginSubAccountUin, :LoginUin, :ShareCode, :UserId, :ConversationId, :Title

        def initialize(type=nil, appid=nil, appkey=nil, loginsubaccountuin=nil, loginuin=nil, sharecode=nil, userid=nil, conversationid=nil, title=nil)
          @Type = type
          @AppId = appid
          @AppKey = appkey
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @ShareCode = sharecode
          @UserId = userid
          @ConversationId = conversationid
          @Title = title
        end

        def deserialize(params)
          @Type = params['Type']
          @AppId = params['AppId']
          @AppKey = params['AppKey']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
          @ConversationId = params['ConversationId']
          @Title = params['Title']
        end
      end

      # ModifyConversation返回参数结构体
      class ModifyConversationResponse < TencentCloud::Common::AbstractModel
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

      # ModifySpace请求参数结构体
      class ModifySpaceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 工作空间名称,长度最大30个字符
        # @type Name: String
        # @param Description: 空间描述，长度最大150个字符
        # @type Description: String
        # @param SpaceId: 空间id
        # @type SpaceId: String
        # @param FieldMask: 指定需要更新的字段，支持Name和Description
        # @type FieldMask: :class:`Tencentcloud::Adp.v20260520.models.FieldMask`

        attr_accessor :Name, :Description, :SpaceId, :FieldMask

        def initialize(name=nil, description=nil, spaceid=nil, fieldmask=nil)
          @Name = name
          @Description = description
          @SpaceId = spaceid
          @FieldMask = fieldmask
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @SpaceId = params['SpaceId']
          unless params['FieldMask'].nil?
            @FieldMask = FieldMask.new
            @FieldMask.deserialize(params['FieldMask'])
          end
        end
      end

      # ModifySpace返回参数结构体
      class ModifySpaceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVariable请求参数结构体
      class ModifyVariableRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param Variable: 变量信息
        # @type Variable: :class:`Tencentcloud::Adp.v20260520.models.Variable`

        attr_accessor :AppId, :Variable

        def initialize(appid=nil, variable=nil)
          @AppId = appid
          @Variable = variable
        end

        def deserialize(params)
          @AppId = params['AppId']
          unless params['Variable'].nil?
            @Variable = Variable.new
            @Variable.deserialize(params['Variable'])
          end
        end
      end

      # ModifyVariable返回参数结构体
      class ModifyVariableResponse < TencentCloud::Common::AbstractModel
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

      # 多智能体配置
      class MultiAgentConfig < TencentCloud::Common::AbstractModel
        # @param AgentCollaboration: Agent协同配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentCollaboration: :class:`Tencentcloud::Adp.v20260520.models.AgentCollaborationConfig`

        attr_accessor :AgentCollaboration

        def initialize(agentcollaboration=nil)
          @AgentCollaboration = agentcollaboration
        end

        def deserialize(params)
          unless params['AgentCollaboration'].nil?
            @AgentCollaboration = AgentCollaborationConfig.new
            @AgentCollaboration.deserialize(params['AgentCollaboration'])
          end
        end
      end

      # 多模态问答模型配置
      class MultiModalQAModel < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.ModelDetailInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelDetailInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # 多模态理解模型配置
      class MultiModalUnderstandingModel < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.ModelDetailInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelDetailInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # OAuth2.0授权信息
      class OAuthConfig < TencentCloud::Common::AbstractModel
        # @param AuthorizationUrl: OAuth服务方授权页url地址
        # @type AuthorizationUrl: String
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param ClientSecret: 客户端密钥
        # @type ClientSecret: String
        # @param ScopeList: 请求授权的数据范围
        # @type ScopeList: Array
        # @param TokenUrl: 获取access token的url地址
        # @type TokenUrl: String

        attr_accessor :AuthorizationUrl, :ClientId, :ClientSecret, :ScopeList, :TokenUrl

        def initialize(authorizationurl=nil, clientid=nil, clientsecret=nil, scopelist=nil, tokenurl=nil)
          @AuthorizationUrl = authorizationurl
          @ClientId = clientid
          @ClientSecret = clientsecret
          @ScopeList = scopelist
          @TokenUrl = tokenurl
        end

        def deserialize(params)
          @AuthorizationUrl = params['AuthorizationUrl']
          @ClientId = params['ClientId']
          @ClientSecret = params['ClientSecret']
          @ScopeList = params['ScopeList']
          @TokenUrl = params['TokenUrl']
        end
      end

      # 插件详情
      class Plugin < TencentCloud::Common::AbstractModel
        # @param Config: 插件配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Adp.v20260520.models.PluginConfig`
        # @param CreateTime: 创建时间，unix时间戳
        # @type CreateTime: String
        # @param Operation: 插件运营管理信息
        # @type Operation: :class:`Tencentcloud::Adp.v20260520.models.PluginOperation`
        # @param PluginId: 插件id
        # @type PluginId: String
        # @param PluginVersion: 插件版本号
        # @type PluginVersion: Integer
        # @param Profile: 插件基础信息
        # @type Profile: :class:`Tencentcloud::Adp.v20260520.models.PluginProfile`
        # @param Statistics: 插件统计信息
        # @type Statistics: :class:`Tencentcloud::Adp.v20260520.models.PluginStatistics`
        # @param Status: <p>插件状态，1:可用，2:不可用 </p><p>枚举值：</p><ul><li>1： 可用</li><li>2： 不可用</li></ul>
        # @type Status: Integer
        # @param ToolList: 工具列表
        # @type ToolList: Array
        # @param UpdateTime: 更新时间，Unix时间戳
        # @type UpdateTime: String
        # @param UserState: 用户维度的插件状态信息
        # @type UserState: :class:`Tencentcloud::Adp.v20260520.models.PluginUserState`

        attr_accessor :Config, :CreateTime, :Operation, :PluginId, :PluginVersion, :Profile, :Statistics, :Status, :ToolList, :UpdateTime, :UserState

        def initialize(config=nil, createtime=nil, operation=nil, pluginid=nil, pluginversion=nil, profile=nil, statistics=nil, status=nil, toollist=nil, updatetime=nil, userstate=nil)
          @Config = config
          @CreateTime = createtime
          @Operation = operation
          @PluginId = pluginid
          @PluginVersion = pluginversion
          @Profile = profile
          @Statistics = statistics
          @Status = status
          @ToolList = toollist
          @UpdateTime = updatetime
          @UserState = userstate
        end

        def deserialize(params)
          unless params['Config'].nil?
            @Config = PluginConfig.new
            @Config.deserialize(params['Config'])
          end
          @CreateTime = params['CreateTime']
          unless params['Operation'].nil?
            @Operation = PluginOperation.new
            @Operation.deserialize(params['Operation'])
          end
          @PluginId = params['PluginId']
          @PluginVersion = params['PluginVersion']
          unless params['Profile'].nil?
            @Profile = PluginProfile.new
            @Profile.deserialize(params['Profile'])
          end
          unless params['Statistics'].nil?
            @Statistics = PluginStatistics.new
            @Statistics.deserialize(params['Statistics'])
          end
          @Status = params['Status']
          unless params['ToolList'].nil?
            @ToolList = []
            params['ToolList'].each do |i|
              tool_tmp = Tool.new
              tool_tmp.deserialize(i)
              @ToolList << tool_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          unless params['UserState'].nil?
            @UserState = PluginUserState.new
            @UserState.deserialize(params['UserState'])
          end
        end
      end

      # 插件配置
      class PluginConfig < TencentCloud::Common::AbstractModel
        # @param ApiPluginConfig: API插件配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiPluginConfig: :class:`Tencentcloud::Adp.v20260520.models.ApiPluginConfig`
        # @param AppPluginConfig: 应用插件配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppPluginConfig: :class:`Tencentcloud::Adp.v20260520.models.AppPluginConfig`
        # @param MCPPluginConfig: mcp插件配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCPPluginConfig: :class:`Tencentcloud::Adp.v20260520.models.MCPPluginConfig`

        attr_accessor :ApiPluginConfig, :AppPluginConfig, :MCPPluginConfig

        def initialize(apipluginconfig=nil, apppluginconfig=nil, mcppluginconfig=nil)
          @ApiPluginConfig = apipluginconfig
          @AppPluginConfig = apppluginconfig
          @MCPPluginConfig = mcppluginconfig
        end

        def deserialize(params)
          unless params['ApiPluginConfig'].nil?
            @ApiPluginConfig = ApiPluginConfig.new
            @ApiPluginConfig.deserialize(params['ApiPluginConfig'])
          end
          unless params['AppPluginConfig'].nil?
            @AppPluginConfig = AppPluginConfig.new
            @AppPluginConfig.deserialize(params['AppPluginConfig'])
          end
          unless params['MCPPluginConfig'].nil?
            @MCPPluginConfig = MCPPluginConfig.new
            @MCPPluginConfig.deserialize(params['MCPPluginConfig'])
          end
        end
      end

      # PluginOperation
      class PluginOperation < TencentCloud::Common::AbstractModel
        # @param AllowExternalAccess: 是否允许外部调用
        # @type AllowExternalAccess: Boolean
        # @param BillingType: <p>计费类型。</p><p>枚举值：</p><ul><li>0：免费</li><li>1：公测</li><li>2：官方收费</li></ul>
        # @type BillingType: Integer
        # @param CategoryKey: 插件分类标识
        # @type CategoryKey: String
        # @param Introduction: 插件概述
        # @type Introduction: String
        # @param IsRecommended: 是否精选
        # @type IsRecommended: Boolean

        attr_accessor :AllowExternalAccess, :BillingType, :CategoryKey, :Introduction, :IsRecommended

        def initialize(allowexternalaccess=nil, billingtype=nil, categorykey=nil, introduction=nil, isrecommended=nil)
          @AllowExternalAccess = allowexternalaccess
          @BillingType = billingtype
          @CategoryKey = categorykey
          @Introduction = introduction
          @IsRecommended = isrecommended
        end

        def deserialize(params)
          @AllowExternalAccess = params['AllowExternalAccess']
          @BillingType = params['BillingType']
          @CategoryKey = params['CategoryKey']
          @Introduction = params['Introduction']
          @IsRecommended = params['IsRecommended']
        end
      end

      # MCP插件参数信息
      class PluginParam < TencentCloud::Common::AbstractModel
        # @param IsGlobalHidden: 参数配置是否隐藏不可见
        # @type IsGlobalHidden: Boolean
        # @param IsRequired: 参数是否必填
        # @type IsRequired: Boolean
        # @param Name: 参数名称
        # @type Name: String
        # @param Value: 参数值
        # @type Value: String

        attr_accessor :IsGlobalHidden, :IsRequired, :Name, :Value

        def initialize(isglobalhidden=nil, isrequired=nil, name=nil, value=nil)
          @IsGlobalHidden = isglobalhidden
          @IsRequired = isrequired
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @IsGlobalHidden = params['IsGlobalHidden']
          @IsRequired = params['IsRequired']
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # PluginProfile
      class PluginProfile < TencentCloud::Common::AbstractModel
        # @param Author: 插件作者
        # @type Author: String
        # @param Description: 插件描述
        # @type Description: String
        # @param IconUrl: 插件图标url
        # @type IconUrl: String
        # @param Name: 插件名称
        # @type Name: String
        # @param PluginClass: <p>插件产品分类</p><p>枚举值：</p><ul><li>0：普通插件</li><li>1：连接器类插件</li></ul>
        # @type PluginClass: Integer
        # @param PluginKind: <p>插件类型</p><p>枚举值：</p><ul><li>0：API接口</li><li>1：代码</li><li>2：MCP</li><li>3：应用</li></ul>
        # @type PluginKind: Integer
        # @param PluginSource: <p>插件来源</p><p>枚举值：</p><ul><li>0：自定义插件</li><li>1：官方插件</li><li>2：第三方插件</li></ul>
        # @type PluginSource: Integer

        attr_accessor :Author, :Description, :IconUrl, :Name, :PluginClass, :PluginKind, :PluginSource

        def initialize(author=nil, description=nil, iconurl=nil, name=nil, pluginclass=nil, pluginkind=nil, pluginsource=nil)
          @Author = author
          @Description = description
          @IconUrl = iconurl
          @Name = name
          @PluginClass = pluginclass
          @PluginKind = pluginkind
          @PluginSource = pluginsource
        end

        def deserialize(params)
          @Author = params['Author']
          @Description = params['Description']
          @IconUrl = params['IconUrl']
          @Name = params['Name']
          @PluginClass = params['PluginClass']
          @PluginKind = params['PluginKind']
          @PluginSource = params['PluginSource']
        end
      end

      # PluginStatistics
      class PluginStatistics < TencentCloud::Common::AbstractModel
        # @param CallCount: 插件调用量
        # @type CallCount: Integer
        # @param ToolCount: 工具数量
        # @type ToolCount: Integer

        attr_accessor :CallCount, :ToolCount

        def initialize(callcount=nil, toolcount=nil)
          @CallCount = callcount
          @ToolCount = toolcount
        end

        def deserialize(params)
          @CallCount = params['CallCount']
          @ToolCount = params['ToolCount']
        end
      end

      # 插件概要信息（用于插件列表）
      class PluginSummary < TencentCloud::Common::AbstractModel
        # @param Operation: <p>插件运营管理信息</p>
        # @type Operation: :class:`Tencentcloud::Adp.v20260520.models.PluginOperation`
        # @param PluginId: <p>插件id</p>
        # @type PluginId: String
        # @param Profile: <p>插件基础信息</p>
        # @type Profile: :class:`Tencentcloud::Adp.v20260520.models.PluginProfile`
        # @param Statistics: <p>插件统计信息</p>
        # @type Statistics: :class:`Tencentcloud::Adp.v20260520.models.PluginStatistics`
        # @param Status: <p>插件状态，1:可用，2:不可用 </p><p>枚举值：</p><ul><li>1： 可用</li><li>2： 不可用</li></ul>
        # @type Status: Integer
        # @param UserState: <p>用户维度的插件状态信息</p>
        # @type UserState: :class:`Tencentcloud::Adp.v20260520.models.PluginUserState`
        # @param Config: <p>插件配置信息</p>
        # @type Config: :class:`Tencentcloud::Adp.v20260520.models.PluginConfig`

        attr_accessor :Operation, :PluginId, :Profile, :Statistics, :Status, :UserState, :Config

        def initialize(operation=nil, pluginid=nil, profile=nil, statistics=nil, status=nil, userstate=nil, config=nil)
          @Operation = operation
          @PluginId = pluginid
          @Profile = profile
          @Statistics = statistics
          @Status = status
          @UserState = userstate
          @Config = config
        end

        def deserialize(params)
          unless params['Operation'].nil?
            @Operation = PluginOperation.new
            @Operation.deserialize(params['Operation'])
          end
          @PluginId = params['PluginId']
          unless params['Profile'].nil?
            @Profile = PluginProfile.new
            @Profile.deserialize(params['Profile'])
          end
          unless params['Statistics'].nil?
            @Statistics = PluginStatistics.new
            @Statistics.deserialize(params['Statistics'])
          end
          @Status = params['Status']
          unless params['UserState'].nil?
            @UserState = PluginUserState.new
            @UserState.deserialize(params['UserState'])
          end
          unless params['Config'].nil?
            @Config = PluginConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # PluginUserState
      class PluginUserState < TencentCloud::Common::AbstractModel
        # @param IsFavorite: 是否已收藏该插件
        # @type IsFavorite: Boolean
        # @param IsInWhiteList: 是否在插件白名单内
        # @type IsInWhiteList: Boolean
        # @param WhiteListType: <p>白名单类型，用于表示当前用户是否可直接使用该插件。</p><p>枚举值：</p><ul><li>0：非白名单插件，全量开放</li><li>1：当前用户在白名单内</li><li>2：当前用户不在白名单内，需提交申请</li></ul>
        # @type WhiteListType: Integer

        attr_accessor :IsFavorite, :IsInWhiteList, :WhiteListType

        def initialize(isfavorite=nil, isinwhitelist=nil, whitelisttype=nil)
          @IsFavorite = isfavorite
          @IsInWhiteList = isinwhitelist
          @WhiteListType = whitelisttype
        end

        def deserialize(params)
          @IsFavorite = params['IsFavorite']
          @IsInWhiteList = params['IsInWhiteList']
          @WhiteListType = params['WhiteListType']
        end
      end

      # Prompt改写配置
      class PromptRewriteModel < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.ModelDetailInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelDetailInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # [数据结构定义] 发布记录
      class ReleaseRecord < TencentCloud::Common::AbstractModel
        # @param CanExport: 是否可导出
        # @type CanExport: Boolean
        # @param CanRollback: 是否可回滚
        # @type CanRollback: Boolean
        # @param Description: 发布描述
        # @type Description: String
        # @param FailCount: 发布失败数
        # @type FailCount: Integer
        # @param Reason: 失败原因
        # @type Reason: String
        # @param ReleaseId: 发布ID
        # @type ReleaseId: String
        # @param ReleaseVersion: 发布版本
        # @type ReleaseVersion: String
        # @param Status: 发布状态。枚举值: 1:待发布, 2:发布中, 3:发布成功, 4:发布失败, 5:审核中, 6:审核成功, 7:审核失败, 8:发布成功回调处理中, 9:发布暂停, 10:申诉审核中, 11:申诉审核通过, 12:申诉审核不通过
        # @type Status: Integer
        # @param StatusDescription: 状态描述
        # @type StatusDescription: String
        # @param SuccessCount: 发布成功数
        # @type SuccessCount: Integer
        # @param UpdateTime: 更新时间 (Unix时间戳,秒级)
        # @type UpdateTime: String
        # @param Updater: 发布人
        # @type Updater: String

        attr_accessor :CanExport, :CanRollback, :Description, :FailCount, :Reason, :ReleaseId, :ReleaseVersion, :Status, :StatusDescription, :SuccessCount, :UpdateTime, :Updater

        def initialize(canexport=nil, canrollback=nil, description=nil, failcount=nil, reason=nil, releaseid=nil, releaseversion=nil, status=nil, statusdescription=nil, successcount=nil, updatetime=nil, updater=nil)
          @CanExport = canexport
          @CanRollback = canrollback
          @Description = description
          @FailCount = failcount
          @Reason = reason
          @ReleaseId = releaseid
          @ReleaseVersion = releaseversion
          @Status = status
          @StatusDescription = statusdescription
          @SuccessCount = successcount
          @UpdateTime = updatetime
          @Updater = updater
        end

        def deserialize(params)
          @CanExport = params['CanExport']
          @CanRollback = params['CanRollback']
          @Description = params['Description']
          @FailCount = params['FailCount']
          @Reason = params['Reason']
          @ReleaseId = params['ReleaseId']
          @ReleaseVersion = params['ReleaseVersion']
          @Status = params['Status']
          @StatusDescription = params['StatusDescription']
          @SuccessCount = params['SuccessCount']
          @UpdateTime = params['UpdateTime']
          @Updater = params['Updater']
        end
      end

      # 发布摘要信息
      class ReleaseSummary < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间 (Unix时间戳,秒级)
        # @type CreateTime: String
        # @param Description: 发布描述
        # @type Description: String
        # @param ReleaseId: 发布ID
        # @type ReleaseId: String
        # @param Status: 发布状态。枚举值: 1:待发布, 2:发布中, 3:发布成功, 4:发布失败, 5:审核中, 6:审核成功, 7:审核失败, 8:发布成功回调处理中, 9:发布暂停, 10:申诉审核中, 11:申诉审核通过, 12:申诉审核不通过
        # @type Status: Integer
        # @param StatusDescription: 状态描述
        # @type StatusDescription: String
        # @param ChannelIdList: 发布渠道ID列表
        # @type ChannelIdList: Array

        attr_accessor :CreateTime, :Description, :ReleaseId, :Status, :StatusDescription, :ChannelIdList

        def initialize(createtime=nil, description=nil, releaseid=nil, status=nil, statusdescription=nil, channelidlist=nil)
          @CreateTime = createtime
          @Description = description
          @ReleaseId = releaseid
          @Status = status
          @StatusDescription = statusdescription
          @ChannelIdList = channelidlist
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @ReleaseId = params['ReleaseId']
          @Status = params['Status']
          @StatusDescription = params['StatusDescription']
          @ChannelIdList = params['ChannelIdList']
        end
      end

      # RequestParam
      class RequestParam < TencentCloud::Common::AbstractModel
        # @param AnyOf: <p>AnyOf类型的参数</p>
        # @type AnyOf: Array
        # @param DefaultValue: <p>默认值</p>
        # @type DefaultValue: String
        # @param Description: <p>参数描述</p>
        # @type Description: String
        # @param IsGlobalHidden: <p>全局隐藏不可见（区别于Agent场景的agent_hidden），true-全局隐藏不可见，false-可见</p>
        # @type IsGlobalHidden: Boolean
        # @param IsRequired: <p>是否必选</p>
        # @type IsRequired: Boolean
        # @param Name: <p>参数名称</p>
        # @type Name: String
        # @param OneOf: <p>OneOf类型的参数</p>
        # @type OneOf: Array
        # @param SubParams: <p>子参数,ParamType 是OBJECT 或 ARRAY&lt;&gt;类型有用</p>
        # @type SubParams: Array
        # @param Type: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>PARAM_TYPE_STRING</td><td>0</td><td>字符串</td></tr><tr><td>PARAM_TYPE_INT</td><td>1</td><td>整数</td></tr><tr><td>PARAM_TYPE_FLOAT</td><td>2</td><td>浮点数</td></tr><tr><td>PARAM_TYPE_BOOL</td><td>3</td><td>布尔值</td></tr><tr><td>PARAM_TYPE_OBJECT</td><td>4</td><td>对象</td></tr><tr><td>PARAM_TYPE_ARRAY_STRING</td><td>5</td><td>字符串数组</td></tr><tr><td>PARAM_TYPE_ARRAY_INT</td><td>6</td><td>整数数组</td></tr><tr><td>PARAM_TYPE_ARRAY_FLOAT</td><td>7</td><td>浮点数数组</td></tr><tr><td>PARAM_TYPE_ARRAY_BOOL</td><td>8</td><td>布尔值数组</td></tr><tr><td>PARAM_TYPE_ARRAY_OBJECT</td><td>9</td><td>对象数组</td></tr><tr><td>PARAM_TYPE_ARRAY_ARRAY</td><td>20</td><td>数组嵌套</td></tr><tr><td>PARAM_TYPE_NULL</td><td>99</td><td>空值</td></tr><tr><td>PARAM_TYPE_UNSPECIFIED</td><td>100</td><td>未指定类型，用于OneOf和AnyOf场景</td></tr></tbody></table>
        # @type Type: Integer

        attr_accessor :AnyOf, :DefaultValue, :Description, :IsGlobalHidden, :IsRequired, :Name, :OneOf, :SubParams, :Type

        def initialize(anyof=nil, defaultvalue=nil, description=nil, isglobalhidden=nil, isrequired=nil, name=nil, oneof=nil, subparams=nil, type=nil)
          @AnyOf = anyof
          @DefaultValue = defaultvalue
          @Description = description
          @IsGlobalHidden = isglobalhidden
          @IsRequired = isrequired
          @Name = name
          @OneOf = oneof
          @SubParams = subparams
          @Type = type
        end

        def deserialize(params)
          unless params['AnyOf'].nil?
            @AnyOf = []
            params['AnyOf'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @AnyOf << requestparam_tmp
            end
          end
          @DefaultValue = params['DefaultValue']
          @Description = params['Description']
          @IsGlobalHidden = params['IsGlobalHidden']
          @IsRequired = params['IsRequired']
          @Name = params['Name']
          unless params['OneOf'].nil?
            @OneOf = []
            params['OneOf'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @OneOf << requestparam_tmp
            end
          end
          unless params['SubParams'].nil?
            @SubParams = []
            params['SubParams'].each do |i|
              requestparam_tmp = RequestParam.new
              requestparam_tmp.deserialize(i)
              @SubParams << requestparam_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # ResetConversation请求参数结构体
      class ResetConversationRequest < TencentCloud::Common::AbstractModel
        # @param ConversationId: <p>会话 ID</p>
        # @type ConversationId: String
        # @param Type: <p>会话类型 枚举值: 0-CONVERSATION_TYPE_UNSPECIFIED(未指定；列表查询时表示全部), 1-CONVERSATION_TYPE_VISITOR(访客端体验), 2-CONVERSATION_TYPE_EVALUATION(评测), 5-CONVERSATION_TYPE_API(API 接入), 10-CONVERSATION_TYPE_WORKFLOW(工作流调试), 20-CONVERSATION_TYPE_SHARE(分享链接)</p>
        # @type Type: Integer
        # @param AppKey: <p>Type=CONVERSATION_TYPE_API 时必填，应用密钥</p>
        # @type AppKey: String
        # @param LoginSubAccountUin: <p>子用户Uin</p>
        # @type LoginSubAccountUin: String
        # @param LoginUin: <p>主用户Uin</p>
        # @type LoginUin: String
        # @param ShareCode: <p>Type=CONVERSATION_TYPE_SHARE 时必填，分享码</p>
        # @type ShareCode: String
        # @param UserId: <p>Type=CONVERSATION_TYPE_API 时必填，访客ID</p>
        # @type UserId: String

        attr_accessor :ConversationId, :Type, :AppKey, :LoginSubAccountUin, :LoginUin, :ShareCode, :UserId

        def initialize(conversationid=nil, type=nil, appkey=nil, loginsubaccountuin=nil, loginuin=nil, sharecode=nil, userid=nil)
          @ConversationId = conversationid
          @Type = type
          @AppKey = appkey
          @LoginSubAccountUin = loginsubaccountuin
          @LoginUin = loginuin
          @ShareCode = sharecode
          @UserId = userid
        end

        def deserialize(params)
          @ConversationId = params['ConversationId']
          @Type = params['Type']
          @AppKey = params['AppKey']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LoginUin = params['LoginUin']
          @ShareCode = params['ShareCode']
          @UserId = params['UserId']
        end
      end

      # ResetConversation返回参数结构体
      class ResetConversationResponse < TencentCloud::Common::AbstractModel
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

      # ResponseParam
      class ResponseParam < TencentCloud::Common::AbstractModel
        # @param Description: <p>变量描述</p>
        # @type Description: String
        # @param Name: <p>参数名称</p>
        # @type Name: String
        # @param RenderMode: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>OUTPUT_RENDER_REPLACE</td><td>0</td><td>覆盖（全量替换）</td></tr><tr><td>OUTPUT_RENDER_APPEND</td><td>1</td><td>增量追加</td></tr></tbody></table>
        # @type RenderMode: Integer
        # @param SubParams: <p>只对 OBJECT 或 ARRAY_OBJECT 类型有用</p>
        # @type SubParams: Array
        # @param Type: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>PARAM_TYPE_STRING</td><td>0</td><td>字符串</td></tr><tr><td>PARAM_TYPE_INT</td><td>1</td><td>整数</td></tr><tr><td>PARAM_TYPE_FLOAT</td><td>2</td><td>浮点数</td></tr><tr><td>PARAM_TYPE_BOOL</td><td>3</td><td>布尔值</td></tr><tr><td>PARAM_TYPE_OBJECT</td><td>4</td><td>对象</td></tr><tr><td>PARAM_TYPE_ARRAY_STRING</td><td>5</td><td>字符串数组</td></tr><tr><td>PARAM_TYPE_ARRAY_INT</td><td>6</td><td>整数数组</td></tr><tr><td>PARAM_TYPE_ARRAY_FLOAT</td><td>7</td><td>浮点数数组</td></tr><tr><td>PARAM_TYPE_ARRAY_BOOL</td><td>8</td><td>布尔值数组</td></tr><tr><td>PARAM_TYPE_ARRAY_OBJECT</td><td>9</td><td>对象数组</td></tr><tr><td>PARAM_TYPE_ARRAY_ARRAY</td><td>20</td><td>数组嵌套</td></tr><tr><td>PARAM_TYPE_NULL</td><td>99</td><td>空值</td></tr><tr><td>PARAM_TYPE_UNSPECIFIED</td><td>100</td><td>未指定类型，用于OneOf和AnyOf场景</td></tr></tbody></table>
        # @type Type: Integer

        attr_accessor :Description, :Name, :RenderMode, :SubParams, :Type

        def initialize(description=nil, name=nil, rendermode=nil, subparams=nil, type=nil)
          @Description = description
          @Name = name
          @RenderMode = rendermode
          @SubParams = subparams
          @Type = type
        end

        def deserialize(params)
          @Description = params['Description']
          @Name = params['Name']
          @RenderMode = params['RenderMode']
          unless params['SubParams'].nil?
            @SubParams = []
            params['SubParams'].each do |i|
              responseparam_tmp = ResponseParam.new
              responseparam_tmp.deserialize(i)
              @SubParams << responseparam_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # RetryRelease请求参数结构体
      class RetryReleaseRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: String
        # @param ReleaseId: 发布任务ID
        # @type ReleaseId: String

        attr_accessor :AppId, :ReleaseId

        def initialize(appid=nil, releaseid=nil)
          @AppId = appid
          @ReleaseId = releaseid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ReleaseId = params['ReleaseId']
        end
      end

      # RetryRelease返回参数结构体
      class RetryReleaseResponse < TencentCloud::Common::AbstractModel
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

      # 角色配置
      class RoleConfig < TencentCloud::Common::AbstractModel
        # @param RoleDescription: 角色描述
        # @type RoleDescription: String

        attr_accessor :RoleDescription

        def initialize(roledescription=nil)
          @RoleDescription = roledescription
        end

        def deserialize(params)
          @RoleDescription = params['RoleDescription']
        end
      end

      # RollbackRelease请求参数结构体
      class RollbackReleaseRequest < TencentCloud::Common::AbstractModel
        # @param AppId: app_id
        # @type AppId: String
        # @param ReleaseId: release_id
        # @type ReleaseId: String

        attr_accessor :AppId, :ReleaseId

        def initialize(appid=nil, releaseid=nil)
          @AppId = appid
          @ReleaseId = releaseid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ReleaseId = params['ReleaseId']
        end
      end

      # RollbackRelease返回参数结构体
      class RollbackReleaseResponse < TencentCloud::Common::AbstractModel
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

      # 搜索资源状态信息
      class SearchResourceStatusInfo < TencentCloud::Common::AbstractModel
        # @param ResourceStatus: 搜索资源状态: AVAILABLE(1)=资源可用, EXHAUSTED(2)=资源已用尽。枚举值: 1:资源可用, 2:资源已用尽
        # @type ResourceStatus: Integer

        attr_accessor :ResourceStatus

        def initialize(resourcestatus=nil)
          @ResourceStatus = resourcestatus
        end

        def deserialize(params)
          @ResourceStatus = params['ResourceStatus']
        end
      end

      # 单工作流配置
      class SingleWorkflowConfig < TencentCloud::Common::AbstractModel
        # @param AsyncWorkflow: 是否开启异步工作流
        # @type AsyncWorkflow: Boolean
        # @param Status: 状态 发布状态(UNPUBLISHED: 待发布 PUBLISHING: 发布中 PUBLISHED: 已发布 PUBLISHED_FAIL:发布失败；DRAFT：待调试)
        # @type Status: String
        # @param WorkflowDescription: 工作流描述
        # @type WorkflowDescription: String
        # @param WorkflowId: 工作流Id
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String

        attr_accessor :AsyncWorkflow, :Status, :WorkflowDescription, :WorkflowId, :WorkflowName

        def initialize(asyncworkflow=nil, status=nil, workflowdescription=nil, workflowid=nil, workflowname=nil)
          @AsyncWorkflow = asyncworkflow
          @Status = status
          @WorkflowDescription = workflowdescription
          @WorkflowId = workflowid
          @WorkflowName = workflowname
        end

        def deserialize(params)
          @AsyncWorkflow = params['AsyncWorkflow']
          @Status = params['Status']
          @WorkflowDescription = params['WorkflowDescription']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
        end
      end

      # SkillAnalysisInfo Skill 安全扫描信息。
      class SkillAnalysisInfo < TencentCloud::Common::AbstractModel
        # @param AnalysisStatus: 安全检测状态

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 待检测 |
        # | 1 | 检测中 |
        # | 2 | 可用 |
        # | 3 | 不可用 |
        # | 4 | 检测失败 |
        # @type AnalysisStatus: Integer
        # @param RiskDescription: 风险描述
        # @type RiskDescription: String
        # @param RiskLevel: 风险等级

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 无风险 |
        # | 1 | 低风险 |
        # | 2 | 中风险 |
        # | 3 | 高风险 |
        # @type RiskLevel: Integer
        # @param SecurityReportUrl: 安全报告跳转url;
        # @type SecurityReportUrl: String

        attr_accessor :AnalysisStatus, :RiskDescription, :RiskLevel, :SecurityReportUrl

        def initialize(analysisstatus=nil, riskdescription=nil, risklevel=nil, securityreporturl=nil)
          @AnalysisStatus = analysisstatus
          @RiskDescription = riskdescription
          @RiskLevel = risklevel
          @SecurityReportUrl = securityreporturl
        end

        def deserialize(params)
          @AnalysisStatus = params['AnalysisStatus']
          @RiskDescription = params['RiskDescription']
          @RiskLevel = params['RiskLevel']
          @SecurityReportUrl = params['SecurityReportUrl']
        end
      end

      # SkillCategory Skill 分类信息。
      class SkillCategory < TencentCloud::Common::AbstractModel
        # @param CategoryKey: 分类标识
        # @type CategoryKey: String
        # @param CategoryName: 分类名称
        # @type CategoryName: String

        attr_accessor :CategoryKey, :CategoryName

        def initialize(categorykey=nil, categoryname=nil)
          @CategoryKey = categorykey
          @CategoryName = categoryname
        end

        def deserialize(params)
          @CategoryKey = params['CategoryKey']
          @CategoryName = params['CategoryName']
        end
      end

      # SkillClassification Skill 分类与来源信息。
      class SkillClassification < TencentCloud::Common::AbstractModel
        # @param BillingType: Skill 计费类型

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 免费 |
        # | 1 | 付费 |
        # @type BillingType: Integer
        # @param BuiltinSource: Skill 内置来源，仅在 create_type 为 SKILL_CREATE_TYPE_BUILTIN 时生效

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 占位 |
        # | 1 | ADP 专有 |
        # | 2 | 腾讯专有 |
        # | 3 | SkillHub |
        # | 99 | 其他 |
        # @type BuiltinSource: Integer
        # @param CategoryKey: Skill 分类
        # @type CategoryKey: String
        # @param CreateType: Skill 创建方式

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 占位 |
        # | 1 | 文件上传 |
        # | 2 | 由企业级共享流程生成 |
        # | 3 | AIGC 生成 |
        # | 99 | 内置 Skill |
        # @type CreateType: Integer
        # @param ProviderType: Skill 提供方类型

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 占位 |
        # | 1 | 官方 |
        # | 2 | 第三方 |
        # | 3 | 自定义 |
        # | 4 | 自定义企业级共享 |
        # @type ProviderType: Integer
        # @param SourceLink: Skill 来源链接
        # @type SourceLink: String

        attr_accessor :BillingType, :BuiltinSource, :CategoryKey, :CreateType, :ProviderType, :SourceLink

        def initialize(billingtype=nil, builtinsource=nil, categorykey=nil, createtype=nil, providertype=nil, sourcelink=nil)
          @BillingType = billingtype
          @BuiltinSource = builtinsource
          @CategoryKey = categorykey
          @CreateType = createtype
          @ProviderType = providertype
          @SourceLink = sourcelink
        end

        def deserialize(params)
          @BillingType = params['BillingType']
          @BuiltinSource = params['BuiltinSource']
          @CategoryKey = params['CategoryKey']
          @CreateType = params['CreateType']
          @ProviderType = params['ProviderType']
          @SourceLink = params['SourceLink']
        end
      end

      # Skill 异常通知。
      class SkillNotice < TencentCloud::Common::AbstractModel
        # @param Level: 通知级别

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 占位 |
        # | 1 | 成功，字符串面："success" |
        # | 2 | 警告，字符串面："warning" |
        # | 3 | 错误，字符串面："error" |
        # @type Level: Integer
        # @param NoticeContent: 文案（i18n 后字符串）
        # @type NoticeContent: String
        # @param TriggerVersionId: 触发本通知的 Skill 版本ID
        # @type TriggerVersionId: String
        # @param Type: 通知类型

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 占位 |
        # | 1 | 发布失败 |
        # | 2 | 共享审批被拒 |
        # @type Type: Integer

        attr_accessor :Level, :NoticeContent, :TriggerVersionId, :Type

        def initialize(level=nil, noticecontent=nil, triggerversionid=nil, type=nil)
          @Level = level
          @NoticeContent = noticecontent
          @TriggerVersionId = triggerversionid
          @Type = type
        end

        def deserialize(params)
          @Level = params['Level']
          @NoticeContent = params['NoticeContent']
          @TriggerVersionId = params['TriggerVersionId']
          @Type = params['Type']
        end
      end

      # SkillProfile Skill 基础展示信息。
      class SkillProfile < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间（Unix秒）
        # @type CreateTime: String
        # @param Creator: 创建者
        # @type Creator: String
        # @param Description: Skill 描述
        # @type Description: String
        # @param DisplayDescription: Skill 展示描述
        # @type DisplayDescription: String
        # @param DisplayName: Skill 展示名称
        # @type DisplayName: String
        # @param IconUrl: Skill 图标
        # @type IconUrl: String
        # @param Name: Skill 名称
        # @type Name: String
        # @param UpdateTime: 更新时间（Unix秒）
        # @type UpdateTime: String

        attr_accessor :CreateTime, :Creator, :Description, :DisplayDescription, :DisplayName, :IconUrl, :Name, :UpdateTime

        def initialize(createtime=nil, creator=nil, description=nil, displaydescription=nil, displayname=nil, iconurl=nil, name=nil, updatetime=nil)
          @CreateTime = createtime
          @Creator = creator
          @Description = description
          @DisplayDescription = displaydescription
          @DisplayName = displayname
          @IconUrl = iconurl
          @Name = name
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @Creator = params['Creator']
          @Description = params['Description']
          @DisplayDescription = params['DisplayDescription']
          @DisplayName = params['DisplayName']
          @IconUrl = params['IconUrl']
          @Name = params['Name']
          @UpdateTime = params['UpdateTime']
        end
      end

      # SkillShare Skill 企业共享信息。
      class SkillShare < TencentCloud::Common::AbstractModel
        # @param ApprovalId: 审批ID
        # @type ApprovalId: String
        # @param ShareSkillId: 共享后关联的新 skill_id
        # @type ShareSkillId: String
        # @param ShareVersion: 共享版本，如 1.0.0
        # @type ShareVersion: String
        # @param ShareVersionId: 共享版本ID
        # @type ShareVersionId: String
        # @param SkillId: 原 skill_id
        # @type SkillId: String
        # @param Status: 共享状态

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 未共享 |
        # | 1 | 已共享 |
        # | 2 | 审批中 |
        # @type Status: Integer

        attr_accessor :ApprovalId, :ShareSkillId, :ShareVersion, :ShareVersionId, :SkillId, :Status

        def initialize(approvalid=nil, shareskillid=nil, shareversion=nil, shareversionid=nil, skillid=nil, status=nil)
          @ApprovalId = approvalid
          @ShareSkillId = shareskillid
          @ShareVersion = shareversion
          @ShareVersionId = shareversionid
          @SkillId = skillid
          @Status = status
        end

        def deserialize(params)
          @ApprovalId = params['ApprovalId']
          @ShareSkillId = params['ShareSkillId']
          @ShareVersion = params['ShareVersion']
          @ShareVersionId = params['ShareVersionId']
          @SkillId = params['SkillId']
          @Status = params['Status']
        end
      end

      # SkillSummary 列表中的 Skill 摘要。
      class SkillSummary < TencentCloud::Common::AbstractModel
        # @param ClassificationInfo: 分类信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationInfo: :class:`Tencentcloud::Adp.v20260520.models.SkillClassification`
        # @param CurrentVersionInfo: 当前版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentVersionInfo: :class:`Tencentcloud::Adp.v20260520.models.SkillVersion`
        # @param IsFavorite: 当前用户是否收藏
        # @type IsFavorite: Boolean
        # @param Profile: 基础信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Profile: :class:`Tencentcloud::Adp.v20260520.models.SkillProfile`
        # @param SkillId: Skill ID
        # @type SkillId: String
        # @param NoticeList: Skill 异常通知列表
        # @type NoticeList: Array
        # @param PermissionIdList: 当前用户对该 Skill 的资源操作权限位列表；内置/共享 Skill 固定为空数组
        # @type PermissionIdList: Array
        # @param ShareList: 共享信息；可能有两条，一条是已共享的，一条是审核中的
        # @type ShareList: Array
        # @param SkillStatus: Skill状态

        # 枚举值:
        # | uint | 描述 |
        # | --- | --- |
        # | 0 | 初始化（无任何已发布版本，且最新版本处于 INITIALIZED/UNRELEASED） |
        # | 1 | 安全检测中（无任何已发布版本，且最新版本处于 AUDITING） |
        # | 2 | 待发布（无任何已发布版本，且最新版本处于 PENDING_RELEASE） |
        # | 3 | 已发布（存在任一 RELEASED 版本，吸收态） |
        # @type SkillStatus: Integer

        attr_accessor :ClassificationInfo, :CurrentVersionInfo, :IsFavorite, :Profile, :SkillId, :NoticeList, :PermissionIdList, :ShareList, :SkillStatus

        def initialize(classificationinfo=nil, currentversioninfo=nil, isfavorite=nil, profile=nil, skillid=nil, noticelist=nil, permissionidlist=nil, sharelist=nil, skillstatus=nil)
          @ClassificationInfo = classificationinfo
          @CurrentVersionInfo = currentversioninfo
          @IsFavorite = isfavorite
          @Profile = profile
          @SkillId = skillid
          @NoticeList = noticelist
          @PermissionIdList = permissionidlist
          @ShareList = sharelist
          @SkillStatus = skillstatus
        end

        def deserialize(params)
          unless params['ClassificationInfo'].nil?
            @ClassificationInfo = SkillClassification.new
            @ClassificationInfo.deserialize(params['ClassificationInfo'])
          end
          unless params['CurrentVersionInfo'].nil?
            @CurrentVersionInfo = SkillVersion.new
            @CurrentVersionInfo.deserialize(params['CurrentVersionInfo'])
          end
          @IsFavorite = params['IsFavorite']
          unless params['Profile'].nil?
            @Profile = SkillProfile.new
            @Profile.deserialize(params['Profile'])
          end
          @SkillId = params['SkillId']
          unless params['NoticeList'].nil?
            @NoticeList = []
            params['NoticeList'].each do |i|
              skillnotice_tmp = SkillNotice.new
              skillnotice_tmp.deserialize(i)
              @NoticeList << skillnotice_tmp
            end
          end
          @PermissionIdList = params['PermissionIdList']
          unless params['ShareList'].nil?
            @ShareList = []
            params['ShareList'].each do |i|
              skillshare_tmp = SkillShare.new
              skillshare_tmp.deserialize(i)
              @ShareList << skillshare_tmp
            end
          end
          @SkillStatus = params['SkillStatus']
        end
      end

      # SkillVersion Skill 版本信息。
      class SkillVersion < TencentCloud::Common::AbstractModel
        # @param AnalysisInfo: 检测信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisInfo: :class:`Tencentcloud::Adp.v20260520.models.SkillAnalysisInfo`
        # @param Version: 当前生效版本号
        # @type Version: String
        # @param VersionId: 当前生效版本ID
        # @type VersionId: String
        # @param VersionStatus:     Skill 版本发布流程状态：
        #       - 0 INITIALIZED      初始化（版本初始态）
        #       - 1 AUDITING         审核中（f_analysis_status ∈ {PENDING, RUNNING}）
        #       - 2 PENDING_RELEASE  待发布（低/中风险，等用户确认上架）
        #       - 3 RELEASED         已发布
        #       - 4 UNRELEASED       未发布（HIGH / UNAVAILABLE / FAILED / 用户放弃，含历史"不通过"语义）
        #     与 SkillAnalysisStatus 解耦：前者是用户视角发布生命周期，后者是安全检测阶段。
        # @type VersionStatus: Integer
        # @param SkillMd5: Skill包的md5信息
        # @type SkillMd5: String
        # @param SkillUrl: 版本包地址
        # @type SkillUrl: String
        # @param CreateTime: 版本创建时间（Unix秒）
        # @type CreateTime: String
        # @param SkillMarkdownUrl: skill md文档
        # @type SkillMarkdownUrl: String
        # @param UpdateDesc: 版本变更说明
        # @type UpdateDesc: String

        attr_accessor :AnalysisInfo, :Version, :VersionId, :VersionStatus, :SkillMd5, :SkillUrl, :CreateTime, :SkillMarkdownUrl, :UpdateDesc

        def initialize(analysisinfo=nil, version=nil, versionid=nil, versionstatus=nil, skillmd5=nil, skillurl=nil, createtime=nil, skillmarkdownurl=nil, updatedesc=nil)
          @AnalysisInfo = analysisinfo
          @Version = version
          @VersionId = versionid
          @VersionStatus = versionstatus
          @SkillMd5 = skillmd5
          @SkillUrl = skillurl
          @CreateTime = createtime
          @SkillMarkdownUrl = skillmarkdownurl
          @UpdateDesc = updatedesc
        end

        def deserialize(params)
          unless params['AnalysisInfo'].nil?
            @AnalysisInfo = SkillAnalysisInfo.new
            @AnalysisInfo.deserialize(params['AnalysisInfo'])
          end
          @Version = params['Version']
          @VersionId = params['VersionId']
          @VersionStatus = params['VersionStatus']
          @SkillMd5 = params['SkillMd5']
          @SkillUrl = params['SkillUrl']
          @CreateTime = params['CreateTime']
          @SkillMarkdownUrl = params['SkillMarkdownUrl']
          @UpdateDesc = params['UpdateDesc']
        end
      end

      # 空间信息
      class Space < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间id
        # @type SpaceId: String
        # @param Name: 空间名称
        # @type Name: String
        # @param Description: 空间描述
        # @type Description: String
        # @param PermissionIdList: 空间权限
        # @type PermissionIdList: Array

        attr_accessor :SpaceId, :Name, :Description, :PermissionIdList

        def initialize(spaceid=nil, name=nil, description=nil, permissionidlist=nil)
          @SpaceId = spaceid
          @Name = name
          @Description = description
          @PermissionIdList = permissionidlist
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @Name = params['Name']
          @Description = params['Description']
          @PermissionIdList = params['PermissionIdList']
        end
      end

      # 特殊状态信息
      class SpecialStatusInfo < TencentCloud::Common::AbstractModel
        # @param Status: 状态 (0-不在特殊状态中, 1-在特殊状态中)。枚举值: 1:在特殊状态中
        # @type Status: Integer

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 支持的文件类型
      class SupportedFileType < TencentCloud::Common::AbstractModel
        # @param Description: 文件类型描述(如"文本文档")
        # @type Description: String
        # @param FileExt: 文件类型(如 txt、pdf、jpg, 建议用扩展名)
        # @type FileExt: String
        # @param MaxSizeBytes: 文件大小限制(单位: 字节)
        # @type MaxSizeBytes: String

        attr_accessor :Description, :FileExt, :MaxSizeBytes

        def initialize(description=nil, fileext=nil, maxsizebytes=nil)
          @Description = description
          @FileExt = fileext
          @MaxSizeBytes = maxsizebytes
        end

        def deserialize(params)
          @Description = params['Description']
          @FileExt = params['FileExt']
          @MaxSizeBytes = params['MaxSizeBytes']
        end
      end

      # 系统变量
      class SystemVariable < TencentCloud::Common::AbstractModel
        # @param Description: 变量描述
        # @type Description: String
        # @param Name: 变量名称
        # @type Name: String

        attr_accessor :Description, :Name

        def initialize(description=nil, name=nil)
          @Description = description
          @Name = name
        end

        def deserialize(params)
          @Description = params['Description']
          @Name = params['Name']
        end
      end

      # 思考模型配置
      class ThinkModel < TencentCloud::Common::AbstractModel
        # @param Model: 思考模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Adp.v20260520.models.ModelDetailInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelDetailInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # Tool
      class Tool < TencentCloud::Common::AbstractModel
        # @param Billing: <p>工具计费信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Billing: :class:`Tencentcloud::Adp.v20260520.models.ToolBilling`
        # @param CallCount: <p>工具调用次数</p><p>单位：次数</p>
        # @type CallCount: Integer
        # @param Description: <p>工具描述信息</p>
        # @type Description: String
        # @param Name: <p>工具名称</p>
        # @type Name: String
        # @param PluginId: <p>插件ID</p>
        # @type PluginId: String
        # @param ToolAccessMode: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>TOOL_ACCESS_MODE_UNKNOWN</td><td>0</td><td>未指定</td></tr><tr><td>TOOL_ACCESS_MODE_READ_ONLY</td><td>1</td><td>只读</td></tr><tr><td>TOOL_ACCESS_MODE_WRITE_DELETE</td><td>2</td><td>写/删除</td></tr></tbody></table>
        # @type ToolAccessMode: Integer
        # @param ToolConfig: <p>工具配置信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolConfig: :class:`Tencentcloud::Adp.v20260520.models.ToolConfig`
        # @param ToolId: <p>工具ID</p>
        # @type ToolId: String

        attr_accessor :Billing, :CallCount, :Description, :Name, :PluginId, :ToolAccessMode, :ToolConfig, :ToolId

        def initialize(billing=nil, callcount=nil, description=nil, name=nil, pluginid=nil, toolaccessmode=nil, toolconfig=nil, toolid=nil)
          @Billing = billing
          @CallCount = callcount
          @Description = description
          @Name = name
          @PluginId = pluginid
          @ToolAccessMode = toolaccessmode
          @ToolConfig = toolconfig
          @ToolId = toolid
        end

        def deserialize(params)
          unless params['Billing'].nil?
            @Billing = ToolBilling.new
            @Billing.deserialize(params['Billing'])
          end
          @CallCount = params['CallCount']
          @Description = params['Description']
          @Name = params['Name']
          @PluginId = params['PluginId']
          @ToolAccessMode = params['ToolAccessMode']
          unless params['ToolConfig'].nil?
            @ToolConfig = ToolConfig.new
            @ToolConfig.deserialize(params['ToolConfig'])
          end
          @ToolId = params['ToolId']
        end
      end

      # ToolBilling
      class ToolBilling < TencentCloud::Common::AbstractModel
        # @param BasicBilling: <p>基础计费信息</p>
        # @type BasicBilling: :class:`Tencentcloud::Adp.v20260520.models.BasicBilling`
        # @param BillingType: <table><tbody><tr><td>枚举项</td><td>枚举值</td><td>描述</td></tr><tr><td>BILLING_TYPE_FREE</td><td>0</td><td>免费</td></tr><tr><td>BILLING_TYPE_LIMITED_FREE</td><td>1</td><td>限时免费</td></tr><tr><td>BILLING_TYPE_OFFICIAL_PAID</td><td>2</td><td>官方收费</td></tr><tr><td>BILLING_TYPE_OFFICIAL_PAID_OLD_FREE</td><td>3</td><td>官方收费（新/升级用户收费，存量老用户限时免费）</td></tr></tbody></table>
        # @type BillingType: Integer
        # @param ComplexBilling: <p>复合类型计费信息</p>
        # @type ComplexBilling: :class:`Tencentcloud::Adp.v20260520.models.ComplexBilling`
        # @param DuplexBilling: <p>双向计费信息</p>
        # @type DuplexBilling: :class:`Tencentcloud::Adp.v20260520.models.DuplexBilling`

        attr_accessor :BasicBilling, :BillingType, :ComplexBilling, :DuplexBilling

        def initialize(basicbilling=nil, billingtype=nil, complexbilling=nil, duplexbilling=nil)
          @BasicBilling = basicbilling
          @BillingType = billingtype
          @ComplexBilling = complexbilling
          @DuplexBilling = duplexbilling
        end

        def deserialize(params)
          unless params['BasicBilling'].nil?
            @BasicBilling = BasicBilling.new
            @BasicBilling.deserialize(params['BasicBilling'])
          end
          @BillingType = params['BillingType']
          unless params['ComplexBilling'].nil?
            @ComplexBilling = ComplexBilling.new
            @ComplexBilling.deserialize(params['ComplexBilling'])
          end
          unless params['DuplexBilling'].nil?
            @DuplexBilling = DuplexBilling.new
            @DuplexBilling.deserialize(params['DuplexBilling'])
          end
        end
      end

      # ToolConfig
      class ToolConfig < TencentCloud::Common::AbstractModel
        # @param ApiToolConfig: <p>API工具配置信息</p>
        # @type ApiToolConfig: :class:`Tencentcloud::Adp.v20260520.models.ApiToolConfig`
        # @param AppToolConfig: <p>应用配置信息</p>
        # @type AppToolConfig: :class:`Tencentcloud::Adp.v20260520.models.AppToolConfig`
        # @param CodeToolConfig: <p>代码工具配置信息</p>
        # @type CodeToolConfig: :class:`Tencentcloud::Adp.v20260520.models.CodeToolConfig`
        # @param MCPToolConfig: <p>MCP工具配置信息</p>
        # @type MCPToolConfig: :class:`Tencentcloud::Adp.v20260520.models.MCPToolConfig`

        attr_accessor :ApiToolConfig, :AppToolConfig, :CodeToolConfig, :MCPToolConfig

        def initialize(apitoolconfig=nil, apptoolconfig=nil, codetoolconfig=nil, mcptoolconfig=nil)
          @ApiToolConfig = apitoolconfig
          @AppToolConfig = apptoolconfig
          @CodeToolConfig = codetoolconfig
          @MCPToolConfig = mcptoolconfig
        end

        def deserialize(params)
          unless params['ApiToolConfig'].nil?
            @ApiToolConfig = ApiToolConfig.new
            @ApiToolConfig.deserialize(params['ApiToolConfig'])
          end
          unless params['AppToolConfig'].nil?
            @AppToolConfig = AppToolConfig.new
            @AppToolConfig.deserialize(params['AppToolConfig'])
          end
          unless params['CodeToolConfig'].nil?
            @CodeToolConfig = CodeToolConfig.new
            @CodeToolConfig.deserialize(params['CodeToolConfig'])
          end
          unless params['MCPToolConfig'].nil?
            @MCPToolConfig = MCPToolConfig.new
            @MCPToolConfig.deserialize(params['MCPToolConfig'])
          end
        end
      end

      # ToolExample
      class ToolExample < TencentCloud::Common::AbstractModel
        # @param Request: <p>请求参数</p>
        # @type Request: String
        # @param Response: <p>响应参数</p>
        # @type Response: String

        attr_accessor :Request, :Response

        def initialize(request=nil, response=nil)
          @Request = request
          @Response = response
        end

        def deserialize(params)
          @Request = params['Request']
          @Response = params['Response']
        end
      end

      # 变量信息
      class Variable < TencentCloud::Common::AbstractModel
        # @param DefaultFileName: 默认文件名称
        # @type DefaultFileName: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param Description: 变量描述
        # @type Description: String
        # @param ModuleType: 模块类型。枚举值: 1:环境参数, 2:应用参数, 3:系统参数, -1:所有参数
        # @type ModuleType: Integer
        # @param Name: 变量名称
        # @type Name: String
        # @param Type: 变量类型。枚举值: 1:字符串, 2:整数, 3:浮点数, 4:布尔值, 5:对象, 6:字符串数组, 7:整数数组, 8:浮点数数组, 9:布尔值数组, 10:对象数组, 11:文件, 12:文档, 13:图片, 14:音频, 15:视频, 16:文件数组, 17:文档数组, 18:图片数组, 19:音频数组, 20:视频数组, 21:数组的数组, 22:密钥/敏感信息, 99:空值
        # @type Type: Integer
        # @param VariableId: 变量ID
        # @type VariableId: String

        attr_accessor :DefaultFileName, :DefaultValue, :Description, :ModuleType, :Name, :Type, :VariableId

        def initialize(defaultfilename=nil, defaultvalue=nil, description=nil, moduletype=nil, name=nil, type=nil, variableid=nil)
          @DefaultFileName = defaultfilename
          @DefaultValue = defaultvalue
          @Description = description
          @ModuleType = moduletype
          @Name = name
          @Type = type
          @VariableId = variableid
        end

        def deserialize(params)
          @DefaultFileName = params['DefaultFileName']
          @DefaultValue = params['DefaultValue']
          @Description = params['Description']
          @ModuleType = params['ModuleType']
          @Name = params['Name']
          @Type = params['Type']
          @VariableId = params['VariableId']
        end
      end

      # VoiceConfig
      class VoiceConfig < TencentCloud::Common::AbstractModel
        # @param TimbreKey: 数智人音色key,需要和公有云音色id对齐
        # @type TimbreKey: String
        # @param VoiceName: 音色名称
        # @type VoiceName: String
        # @param VoiceType: 公有云音色id
        # @type VoiceType: Integer

        attr_accessor :TimbreKey, :VoiceName, :VoiceType

        def initialize(timbrekey=nil, voicename=nil, voicetype=nil)
          @TimbreKey = timbrekey
          @VoiceName = voicename
          @VoiceType = voicetype
        end

        def deserialize(params)
          @TimbreKey = params['TimbreKey']
          @VoiceName = params['VoiceName']
          @VoiceType = params['VoiceType']
        end
      end

    end
  end
end

