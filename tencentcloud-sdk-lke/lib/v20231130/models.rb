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
  module Lke
    module V20231130
      # 智能通话
      class AICallConfig < TencentCloud::Common::AbstractModel
        # @param EnableVoiceInteract: 启用语音互动功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableVoiceInteract: Boolean
        # @param EnableVoiceCall: 启用语音通话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableVoiceCall: Boolean
        # @param EnableDigitalHuman: 启用数智人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableDigitalHuman: Boolean
        # @param Voice: 音色配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Voice: :class:`Tencentcloud::Lke.v20231130.models.VoiceConfig`
        # @param DigitalHuman: 数智人配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DigitalHuman: :class:`Tencentcloud::Lke.v20231130.models.DigitalHumanConfig`

        attr_accessor :EnableVoiceInteract, :EnableVoiceCall, :EnableDigitalHuman, :Voice, :DigitalHuman

        def initialize(enablevoiceinteract=nil, enablevoicecall=nil, enabledigitalhuman=nil, voice=nil, digitalhuman=nil)
          @EnableVoiceInteract = enablevoiceinteract
          @EnableVoiceCall = enablevoicecall
          @EnableDigitalHuman = enabledigitalhuman
          @Voice = voice
          @DigitalHuman = digitalhuman
        end

        def deserialize(params)
          @EnableVoiceInteract = params['EnableVoiceInteract']
          @EnableVoiceCall = params['EnableVoiceCall']
          @EnableDigitalHuman = params['EnableDigitalHuman']
          unless params['Voice'].nil?
            @Voice = VoiceConfig.new
            @Voice.deserialize(params['Voice'])
          end
          unless params['DigitalHuman'].nil?
            @DigitalHuman = DigitalHumanConfig.new
            @DigitalHuman.deserialize(params['DigitalHuman'])
          end
        end
      end

      # Agent 的定义
      class Agent < TencentCloud::Common::AbstractModel
        # @param AgentId: AgentID
        # @type AgentId: String
        # @param WorkflowId: WorkflowID，非空则当前Agent从workflow转换而来
        # @type WorkflowId: String
        # @param Name: Agent名称，同一个应用内，Agent名称不能重复
        # @type Name: String
        # @param IconUrl: 插件图标url
        # @type IconUrl: String
        # @param Instructions: Agent指令；当该Agent被调用时，将作为“系统提示词”使用，描述Agent应执行的操作和响应方式
        # @type Instructions: String
        # @param HandoffDescription: 当Agent作为转交目标时的描述，用于让其他Agent的LLM理解其功能和转交时机
        # @type HandoffDescription: String
        # @param Handoffs: Agent可转交的子AgentId列表
        # @type Handoffs: Array
        # @param Model: Agent调用LLM时使用的模型配置
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AgentModelInfo`
        # @param Tools: Agent可使用的工具列表
        # @type Tools: Array
        # @param Plugins: Agent可使用的插件列表
        # @type Plugins: Array
        # @param IsStartingAgent: 当前Agent是否是启动Agent
        # @type IsStartingAgent: Boolean
        # @param AgentType: Agent类型; 0: 未指定类型; 1: 知识库检索Agent
        # @type AgentType: Integer

        attr_accessor :AgentId, :WorkflowId, :Name, :IconUrl, :Instructions, :HandoffDescription, :Handoffs, :Model, :Tools, :Plugins, :IsStartingAgent, :AgentType

        def initialize(agentid=nil, workflowid=nil, name=nil, iconurl=nil, instructions=nil, handoffdescription=nil, handoffs=nil, model=nil, tools=nil, plugins=nil, isstartingagent=nil, agenttype=nil)
          @AgentId = agentid
          @WorkflowId = workflowid
          @Name = name
          @IconUrl = iconurl
          @Instructions = instructions
          @HandoffDescription = handoffdescription
          @Handoffs = handoffs
          @Model = model
          @Tools = tools
          @Plugins = plugins
          @IsStartingAgent = isstartingagent
          @AgentType = agenttype
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @WorkflowId = params['WorkflowId']
          @Name = params['Name']
          @IconUrl = params['IconUrl']
          @Instructions = params['Instructions']
          @HandoffDescription = params['HandoffDescription']
          @Handoffs = params['Handoffs']
          unless params['Model'].nil?
            @Model = AgentModelInfo.new
            @Model.deserialize(params['Model'])
          end
          unless params['Tools'].nil?
            @Tools = []
            params['Tools'].each do |i|
              agenttoolinfo_tmp = AgentToolInfo.new
              agenttoolinfo_tmp.deserialize(i)
              @Tools << agenttoolinfo_tmp
            end
          end
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              agentplugininfo_tmp = AgentPluginInfo.new
              agentplugininfo_tmp.deserialize(i)
              @Plugins << agentplugininfo_tmp
            end
          end
          @IsStartingAgent = params['IsStartingAgent']
          @AgentType = params['AgentType']
        end
      end

      # Agent调试信息
      class AgentDebugInfo < TencentCloud::Common::AbstractModel
        # @param Input: 工具、大模型的输入信息，json
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: String
        # @param Output: 工具、大模型的输出信息，json
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String

        attr_accessor :Input, :Output

        def initialize(input=nil, output=nil)
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Input = params['Input']
          @Output = params['Output']
        end
      end

      # Agent输入值，支持直接赋值和引用
      class AgentInput < TencentCloud::Common::AbstractModel
        # @param InputType: 输入来源类型：0 用户输入，3 自定义变量（API参数）
        # @type InputType: Integer
        # @param UserInputValue: 用户手写输入
        # @type UserInputValue: :class:`Tencentcloud::Lke.v20231130.models.AgentInputUserInputValue`
        # @param CustomVarId: 自定义变量（API参数）
        # @type CustomVarId: String

        attr_accessor :InputType, :UserInputValue, :CustomVarId

        def initialize(inputtype=nil, userinputvalue=nil, customvarid=nil)
          @InputType = inputtype
          @UserInputValue = userinputvalue
          @CustomVarId = customvarid
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['UserInputValue'].nil?
            @UserInputValue = AgentInputUserInputValue.new
            @UserInputValue.deserialize(params['UserInputValue'])
          end
          @CustomVarId = params['CustomVarId']
        end
      end

      # 用户手写输入
      class AgentInputUserInputValue < TencentCloud::Common::AbstractModel
        # @param Values: 用户输入的值
        # @type Values: Array

        attr_accessor :Values

        def initialize(values=nil)
          @Values = values
        end

        def deserialize(params)
          @Values = params['Values']
        end
      end

      # Agent 知识库检索插件支持多知识库搜索
      class AgentKnowledge < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 知识库id
        # @type KnowledgeBizId: String
        # @param KnowledgeType: 0-应用内知识库
        # 1-共享知识库
        # @type KnowledgeType: Integer
        # @param Filter: 0-全部知识
        # 1-按文档和问答
        # 2-按标签
        # @type Filter: Integer
        # @param DocBizIds: 文档id
        # @type DocBizIds: Array
        # @param AllQa: true:包含所有问答
        # false:不包含问答
        # @type AllQa: Boolean
        # @param Tag: 文档标签过滤器
        # @type Tag: :class:`Tencentcloud::Lke.v20231130.models.AgentKnowledgeFilterTag`

        attr_accessor :KnowledgeBizId, :KnowledgeType, :Filter, :DocBizIds, :AllQa, :Tag

        def initialize(knowledgebizid=nil, knowledgetype=nil, filter=nil, docbizids=nil, allqa=nil, tag=nil)
          @KnowledgeBizId = knowledgebizid
          @KnowledgeType = knowledgetype
          @Filter = filter
          @DocBizIds = docbizids
          @AllQa = allqa
          @Tag = tag
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
          @KnowledgeType = params['KnowledgeType']
          @Filter = params['Filter']
          @DocBizIds = params['DocBizIds']
          @AllQa = params['AllQa']
          unless params['Tag'].nil?
            @Tag = AgentKnowledgeFilterTag.new
            @Tag.deserialize(params['Tag'])
          end
        end
      end

      # 标签过滤器
      class AgentKnowledgeAttrLabel < TencentCloud::Common::AbstractModel
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param Inputs: 标签值，标签值之间是或的关系，只有匹配的，才会进行知识检索，否则报检索不到
        # @type Inputs: Array

        attr_accessor :AttributeBizId, :Inputs

        def initialize(attributebizid=nil, inputs=nil)
          @AttributeBizId = attributebizid
          @Inputs = inputs
        end

        def deserialize(params)
          @AttributeBizId = params['AttributeBizId']
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              agentinput_tmp = AgentInput.new
              agentinput_tmp.deserialize(i)
              @Inputs << agentinput_tmp
            end
          end
        end
      end

      # 知识检索筛选范围
      class AgentKnowledgeFilter < TencentCloud::Common::AbstractModel
        # @param FilterType: 知识检索筛选方式; 0: 全部知识; 1:按文档和问答; 2: 按标签
        # @type FilterType: Integer
        # @param DocAndAnswer: 文档和问答过滤器
        # @type DocAndAnswer: :class:`Tencentcloud::Lke.v20231130.models.AgentKnowledgeFilterDocAndAnswer`
        # @param Tag: 标签过滤器
        # @type Tag: :class:`Tencentcloud::Lke.v20231130.models.AgentKnowledgeFilterTag`
        # @param KnowledgeList: 知识库列表
        # @type KnowledgeList: Array
        # @param AllKnowledge: 是否检索全部知识
        # @type AllKnowledge: Boolean

        attr_accessor :FilterType, :DocAndAnswer, :Tag, :KnowledgeList, :AllKnowledge

        def initialize(filtertype=nil, docandanswer=nil, tag=nil, knowledgelist=nil, allknowledge=nil)
          @FilterType = filtertype
          @DocAndAnswer = docandanswer
          @Tag = tag
          @KnowledgeList = knowledgelist
          @AllKnowledge = allknowledge
        end

        def deserialize(params)
          @FilterType = params['FilterType']
          unless params['DocAndAnswer'].nil?
            @DocAndAnswer = AgentKnowledgeFilterDocAndAnswer.new
            @DocAndAnswer.deserialize(params['DocAndAnswer'])
          end
          unless params['Tag'].nil?
            @Tag = AgentKnowledgeFilterTag.new
            @Tag.deserialize(params['Tag'])
          end
          unless params['KnowledgeList'].nil?
            @KnowledgeList = []
            params['KnowledgeList'].each do |i|
              agentknowledge_tmp = AgentKnowledge.new
              agentknowledge_tmp.deserialize(i)
              @KnowledgeList << agentknowledge_tmp
            end
          end
          @AllKnowledge = params['AllKnowledge']
        end
      end

      # 文档和问答过滤器
      class AgentKnowledgeFilterDocAndAnswer < TencentCloud::Common::AbstractModel
        # @param DocBizIds: 文档ID列表
        # @type DocBizIds: Array
        # @param AllQa: 问答
        # @type AllQa: Boolean

        attr_accessor :DocBizIds, :AllQa

        def initialize(docbizids=nil, allqa=nil)
          @DocBizIds = docbizids
          @AllQa = allqa
        end

        def deserialize(params)
          @DocBizIds = params['DocBizIds']
          @AllQa = params['AllQa']
        end
      end

      # 标签过滤器
      class AgentKnowledgeFilterTag < TencentCloud::Common::AbstractModel
        # @param Operator: 标签之间的关系;0:AND, 1:OR
        # @type Operator: Integer
        # @param Labels: 标签
        # @type Labels: Array

        attr_accessor :Operator, :Labels

        def initialize(operator=nil, labels=nil)
          @Operator = operator
          @Labels = labels
        end

        def deserialize(params)
          @Operator = params['Operator']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              agentknowledgeattrlabel_tmp = AgentKnowledgeAttrLabel.new
              agentknowledgeattrlabel_tmp.deserialize(i)
              @Labels << agentknowledgeattrlabel_tmp
            end
          end
        end
      end

      # 知识库问答插件
      class AgentKnowledgeQAPlugin < TencentCloud::Common::AbstractModel
        # @param Filter: 知识检索筛选范围
        # @type Filter: :class:`Tencentcloud::Lke.v20231130.models.AgentKnowledgeFilter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = AgentKnowledgeFilter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # mcp的服务信息
      class AgentMCPServerInfo < TencentCloud::Common::AbstractModel
        # @param McpServerUrl: mcp server URL地址
        # @type McpServerUrl: String
        # @param Headers: mcp server header信息
        # @type Headers: Array
        # @param Timeout: 超时时间，单位秒
        # @type Timeout: Integer
        # @param SseReadTimeout: sse服务超时时间，单位秒
        # @type SseReadTimeout: Integer

        attr_accessor :McpServerUrl, :Headers, :Timeout, :SseReadTimeout

        def initialize(mcpserverurl=nil, headers=nil, timeout=nil, ssereadtimeout=nil)
          @McpServerUrl = mcpserverurl
          @Headers = headers
          @Timeout = timeout
          @SseReadTimeout = ssereadtimeout
        end

        def deserialize(params)
          @McpServerUrl = params['McpServerUrl']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              agentpluginheader_tmp = AgentPluginHeader.new
              agentpluginheader_tmp.deserialize(i)
              @Headers << agentpluginheader_tmp
            end
          end
          @Timeout = params['Timeout']
          @SseReadTimeout = params['SseReadTimeout']
        end
      end

      # Agent 配置里面的模型定义
      class AgentModelInfo < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param ModelAliasName: 模型别名
        # @type ModelAliasName: String
        # @param Temperature: 模型温度
        # @type Temperature: Float
        # @param TopP: 模型TopP
        # @type TopP: Float
        # @param IsEnabled: 模型是否可用
        # @type IsEnabled: Boolean
        # @param HistoryLimit: 对话历史条数限制
        # @type HistoryLimit: Integer
        # @param ModelContextWordsLimit: 模型上下文长度字符限制
        # @type ModelContextWordsLimit: String
        # @param InstructionsWordsLimit: 指令长度字符限制
        # @type InstructionsWordsLimit: Integer
        # @param MaxReasoningRound: 单次会话最大推理轮数
        # @type MaxReasoningRound: Integer

        attr_accessor :ModelName, :ModelAliasName, :Temperature, :TopP, :IsEnabled, :HistoryLimit, :ModelContextWordsLimit, :InstructionsWordsLimit, :MaxReasoningRound

        def initialize(modelname=nil, modelaliasname=nil, temperature=nil, topp=nil, isenabled=nil, historylimit=nil, modelcontextwordslimit=nil, instructionswordslimit=nil, maxreasoninground=nil)
          @ModelName = modelname
          @ModelAliasName = modelaliasname
          @Temperature = temperature
          @TopP = topp
          @IsEnabled = isenabled
          @HistoryLimit = historylimit
          @ModelContextWordsLimit = modelcontextwordslimit
          @InstructionsWordsLimit = instructionswordslimit
          @MaxReasoningRound = maxreasoninground
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @ModelAliasName = params['ModelAliasName']
          @Temperature = params['Temperature']
          @TopP = params['TopP']
          @IsEnabled = params['IsEnabled']
          @HistoryLimit = params['HistoryLimit']
          @ModelContextWordsLimit = params['ModelContextWordsLimit']
          @InstructionsWordsLimit = params['InstructionsWordsLimit']
          @MaxReasoningRound = params['MaxReasoningRound']
        end
      end

      # 应用配置MCP插件header信息
      class AgentPluginHeader < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param ParamValue: 参数值
        # @type ParamValue: String
        # @param GlobalHidden: header参数配置是否隐藏不可见
        # @type GlobalHidden: Boolean
        # @param Input: 输入的值
        # @type Input: :class:`Tencentcloud::Lke.v20231130.models.AgentInput`
        # @param IsRequired: 参数是否可以为空
        # @type IsRequired: Boolean

        attr_accessor :ParamName, :ParamValue, :GlobalHidden, :Input, :IsRequired

        def initialize(paramname=nil, paramvalue=nil, globalhidden=nil, input=nil, isrequired=nil)
          @ParamName = paramname
          @ParamValue = paramvalue
          @GlobalHidden = globalhidden
          @Input = input
          @IsRequired = isrequired
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ParamValue = params['ParamValue']
          @GlobalHidden = params['GlobalHidden']
          unless params['Input'].nil?
            @Input = AgentInput.new
            @Input.deserialize(params['Input'])
          end
          @IsRequired = params['IsRequired']
        end
      end

      # Agent 的插件信息
      class AgentPluginInfo < TencentCloud::Common::AbstractModel
        # @param PluginId: 插件id
        # @type PluginId: String
        # @param Headers: 应用配置的插件header信息
        # @type Headers: Array
        # @param Model: 插件调用LLM时使用的模型配置，一般用于指定知识库问答插件的生成模型
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AgentModelInfo`
        # @param PluginInfoType: 插件信息类型; 0: 未指定类型; 1: 知识库问答插件
        # @type PluginInfoType: Integer
        # @param KnowledgeQa: 知识库问答插件配置
        # @type KnowledgeQa: :class:`Tencentcloud::Lke.v20231130.models.AgentKnowledgeQAPlugin`

        attr_accessor :PluginId, :Headers, :Model, :PluginInfoType, :KnowledgeQa

        def initialize(pluginid=nil, headers=nil, model=nil, plugininfotype=nil, knowledgeqa=nil)
          @PluginId = pluginid
          @Headers = headers
          @Model = model
          @PluginInfoType = plugininfotype
          @KnowledgeQa = knowledgeqa
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              agentpluginheader_tmp = AgentPluginHeader.new
              agentpluginheader_tmp.deserialize(i)
              @Headers << agentpluginheader_tmp
            end
          end
          unless params['Model'].nil?
            @Model = AgentModelInfo.new
            @Model.deserialize(params['Model'])
          end
          @PluginInfoType = params['PluginInfoType']
          unless params['KnowledgeQa'].nil?
            @KnowledgeQa = AgentKnowledgeQAPlugin.new
            @KnowledgeQa.deserialize(params['KnowledgeQa'])
          end
        end
      end

      # 思考事件过程信息
      class AgentProcedure < TencentCloud::Common::AbstractModel
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Name: 执行过程英语名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Title: 中文名, 用于展示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Status: 状态常量: 使用中: processing, 成功: success, 失败: failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Icon: 图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Icon: String
        # @param Debugging: Agent调试信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Debugging: :class:`Tencentcloud::Lke.v20231130.models.AgentProcedureDebugging`
        # @param Switch: 是否切换Agent，取值为"main"或者"workflow",不切换为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param Elapsed: 当前请求执行时间, 单位 ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Elapsed: Integer
        # @param NodeName: 工作流节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param ReplyIndex: 用于展示思考放在哪个回复气泡中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplyIndex: Integer
        # @param SourceAgentName: 主agent
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceAgentName: String
        # @param TargetAgentName: 挂号agent
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetAgentName: String
        # @param AgentIcon: Agent的图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentIcon: String

        attr_accessor :Index, :Name, :Title, :Status, :Icon, :Debugging, :Switch, :WorkflowName, :Elapsed, :NodeName, :ReplyIndex, :SourceAgentName, :TargetAgentName, :AgentIcon

        def initialize(index=nil, name=nil, title=nil, status=nil, icon=nil, debugging=nil, switch=nil, workflowname=nil, elapsed=nil, nodename=nil, replyindex=nil, sourceagentname=nil, targetagentname=nil, agenticon=nil)
          @Index = index
          @Name = name
          @Title = title
          @Status = status
          @Icon = icon
          @Debugging = debugging
          @Switch = switch
          @WorkflowName = workflowname
          @Elapsed = elapsed
          @NodeName = nodename
          @ReplyIndex = replyindex
          @SourceAgentName = sourceagentname
          @TargetAgentName = targetagentname
          @AgentIcon = agenticon
        end

        def deserialize(params)
          @Index = params['Index']
          @Name = params['Name']
          @Title = params['Title']
          @Status = params['Status']
          @Icon = params['Icon']
          unless params['Debugging'].nil?
            @Debugging = AgentProcedureDebugging.new
            @Debugging.deserialize(params['Debugging'])
          end
          @Switch = params['Switch']
          @WorkflowName = params['WorkflowName']
          @Elapsed = params['Elapsed']
          @NodeName = params['NodeName']
          @ReplyIndex = params['ReplyIndex']
          @SourceAgentName = params['SourceAgentName']
          @TargetAgentName = params['TargetAgentName']
          @AgentIcon = params['AgentIcon']
        end
      end

      # Agent思考过程调试信息
      class AgentProcedureDebugging < TencentCloud::Common::AbstractModel
        # @param Content: 模型思考内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param DisplayContent: 展示的具体文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayContent: String
        # @param DisplayType: 展示类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayType: Integer
        # @param QuoteInfos: 搜索引擎展示的索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuoteInfos: Array
        # @param References: 具体的参考来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type References: Array
        # @param DisplayStatus: 展示正在执行的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayStatus: String
        # @param SandboxUrl: 云桌面的URL地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SandboxUrl: String
        # @param DisplayUrl: 云桌面里面通过浏览器打开的URL地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayUrl: String

        attr_accessor :Content, :DisplayContent, :DisplayType, :QuoteInfos, :References, :DisplayStatus, :SandboxUrl, :DisplayUrl

        def initialize(content=nil, displaycontent=nil, displaytype=nil, quoteinfos=nil, references=nil, displaystatus=nil, sandboxurl=nil, displayurl=nil)
          @Content = content
          @DisplayContent = displaycontent
          @DisplayType = displaytype
          @QuoteInfos = quoteinfos
          @References = references
          @DisplayStatus = displaystatus
          @SandboxUrl = sandboxurl
          @DisplayUrl = displayurl
        end

        def deserialize(params)
          @Content = params['Content']
          @DisplayContent = params['DisplayContent']
          @DisplayType = params['DisplayType']
          unless params['QuoteInfos'].nil?
            @QuoteInfos = []
            params['QuoteInfos'].each do |i|
              quoteinfo_tmp = QuoteInfo.new
              quoteinfo_tmp.deserialize(i)
              @QuoteInfos << quoteinfo_tmp
            end
          end
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              agentreference_tmp = AgentReference.new
              agentreference_tmp.deserialize(i)
              @References << agentreference_tmp
            end
          end
          @DisplayStatus = params['DisplayStatus']
          @SandboxUrl = params['SandboxUrl']
          @DisplayUrl = params['DisplayUrl']
        end
      end

      # Agent中的参考来源
      class AgentReference < TencentCloud::Common::AbstractModel
        # @param DocId: 来源文档ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocId: String
        # @param Id: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Url: 链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param DocBizId: 文档业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocBizId: String
        # @param DocName: 文档名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocName: String
        # @param QaBizId: 问答业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaBizId: String
        # @param Index: 搜索引擎索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Title: 标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String

        attr_accessor :DocId, :Id, :Name, :Type, :Url, :DocBizId, :DocName, :QaBizId, :Index, :Title

        def initialize(docid=nil, id=nil, name=nil, type=nil, url=nil, docbizid=nil, docname=nil, qabizid=nil, index=nil, title=nil)
          @DocId = docid
          @Id = id
          @Name = name
          @Type = type
          @Url = url
          @DocBizId = docbizid
          @DocName = docname
          @QaBizId = qabizid
          @Index = index
          @Title = title
        end

        def deserialize(params)
          @DocId = params['DocId']
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Url = params['Url']
          @DocBizId = params['DocBizId']
          @DocName = params['DocName']
          @QaBizId = params['QaBizId']
          @Index = params['Index']
          @Title = params['Title']
        end
      end

      # Agent的思考过程
      class AgentThought < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param RequestId: 请求 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestId: String
        # @param RecordId: 对应哪条会话, 会话 ID, 用于回答的消息存储使用, 可提前生成, 保存消息时使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordId: String
        # @param Elapsed: 当前请求执行时间, 单位 ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Elapsed: Integer
        # @param IsWorkflow: 当前是否为工作流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWorkflow: Boolean
        # @param WorkflowName: 如果当前是工作流，工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param Procedures: 具体思考过程详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procedures: Array
        # @param TraceId: TraceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceId: String
        # @param Files: 文件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Files: Array

        attr_accessor :SessionId, :RequestId, :RecordId, :Elapsed, :IsWorkflow, :WorkflowName, :Procedures, :TraceId, :Files

        def initialize(sessionid=nil, requestid=nil, recordid=nil, elapsed=nil, isworkflow=nil, workflowname=nil, procedures=nil, traceid=nil, files=nil)
          @SessionId = sessionid
          @RequestId = requestid
          @RecordId = recordid
          @Elapsed = elapsed
          @IsWorkflow = isworkflow
          @WorkflowName = workflowname
          @Procedures = procedures
          @TraceId = traceid
          @Files = files
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
          @RecordId = params['RecordId']
          @Elapsed = params['Elapsed']
          @IsWorkflow = params['IsWorkflow']
          @WorkflowName = params['WorkflowName']
          unless params['Procedures'].nil?
            @Procedures = []
            params['Procedures'].each do |i|
              agentprocedure_tmp = AgentProcedure.new
              agentprocedure_tmp.deserialize(i)
              @Procedures << agentprocedure_tmp
            end
          end
          @TraceId = params['TraceId']
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @Files << fileinfo_tmp
            end
          end
        end
      end

      # Agent的工具信息
      class AgentToolInfo < TencentCloud::Common::AbstractModel
        # @param PluginId: 插件id
        # @type PluginId: String
        # @param PluginName: 插件名称
        # @type PluginName: String
        # @param IconUrl: 插件图标url
        # @type IconUrl: String
        # @param PluginType: 0 自定义插件
        # 1 官方插件
        # 2 第三方插件 目前用于第三方实现的mcp server
        # @type PluginType: Integer
        # @param ToolId: 工具id
        # @type ToolId: String
        # @param ToolName: 工具名称
        # @type ToolName: String
        # @param ToolDesc: 工具描述
        # @type ToolDesc: String
        # @param Inputs: 输入参数
        # @type Inputs: Array
        # @param Outputs: 输出参数
        # @type Outputs: Array
        # @param CreateType: 创建方式，0:服务创建，1:代码创建，2:MCP创建
        # @type CreateType: Integer
        # @param McpServer: MCP插件的配置信息
        # @type McpServer: :class:`Tencentcloud::Lke.v20231130.models.AgentMCPServerInfo`
        # @param IsBindingKnowledge: 该工具是否和知识库绑定
        # @type IsBindingKnowledge: Boolean
        # @param Status: 插件状态，1:可用，2:不可用
        # @type Status: Integer
        # @param Headers: header信息
        # @type Headers: Array
        # @param CallingMethod: NON_STREAMING: 非流式  STREAMIN: 流式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallingMethod: String

        attr_accessor :PluginId, :PluginName, :IconUrl, :PluginType, :ToolId, :ToolName, :ToolDesc, :Inputs, :Outputs, :CreateType, :McpServer, :IsBindingKnowledge, :Status, :Headers, :CallingMethod

        def initialize(pluginid=nil, pluginname=nil, iconurl=nil, plugintype=nil, toolid=nil, toolname=nil, tooldesc=nil, inputs=nil, outputs=nil, createtype=nil, mcpserver=nil, isbindingknowledge=nil, status=nil, headers=nil, callingmethod=nil)
          @PluginId = pluginid
          @PluginName = pluginname
          @IconUrl = iconurl
          @PluginType = plugintype
          @ToolId = toolid
          @ToolName = toolname
          @ToolDesc = tooldesc
          @Inputs = inputs
          @Outputs = outputs
          @CreateType = createtype
          @McpServer = mcpserver
          @IsBindingKnowledge = isbindingknowledge
          @Status = status
          @Headers = headers
          @CallingMethod = callingmethod
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @PluginName = params['PluginName']
          @IconUrl = params['IconUrl']
          @PluginType = params['PluginType']
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @ToolDesc = params['ToolDesc']
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              agenttoolreqparam_tmp = AgentToolReqParam.new
              agenttoolreqparam_tmp.deserialize(i)
              @Inputs << agenttoolreqparam_tmp
            end
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              agenttoolrspparam_tmp = AgentToolRspParam.new
              agenttoolrspparam_tmp.deserialize(i)
              @Outputs << agenttoolrspparam_tmp
            end
          end
          @CreateType = params['CreateType']
          unless params['McpServer'].nil?
            @McpServer = AgentMCPServerInfo.new
            @McpServer.deserialize(params['McpServer'])
          end
          @IsBindingKnowledge = params['IsBindingKnowledge']
          @Status = params['Status']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              agentpluginheader_tmp = AgentPluginHeader.new
              agentpluginheader_tmp.deserialize(i)
              @Headers << agentpluginheader_tmp
            end
          end
          @CallingMethod = params['CallingMethod']
        end
      end

      # Agent工具的请求参数定义
      class AgentToolReqParam < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param Desc: 参数描述
        # @type Desc: String
        # @param Type: 参数类型，0:string, 1:int, 2:float，3:bool 4:object 5:array_string, 6:array_int, 7:array_float, 8:array_bool, 9:array_object
        # @type Type: Integer
        # @param IsRequired: 参数是否必填
        # @type IsRequired: Boolean
        # @param DefaultValue: 参数默认值
        # @type DefaultValue: String
        # @param SubParams: 子参数,ParamType 是OBJECT 或 ARRAY<>类型有用
        # @type SubParams: Array
        # @param GlobalHidden: 是否隐藏不可见
        # @type GlobalHidden: Boolean
        # @param AgentHidden: agent模式下模型是否可见
        # @type AgentHidden: Boolean
        # @param AnyOf: 其中任意
        # @type AnyOf: Array
        # @param OneOf: 其中一个
        # @type OneOf: Array
        # @param Input: 输入
        # @type Input: :class:`Tencentcloud::Lke.v20231130.models.AgentInput`

        attr_accessor :Name, :Desc, :Type, :IsRequired, :DefaultValue, :SubParams, :GlobalHidden, :AgentHidden, :AnyOf, :OneOf, :Input

        def initialize(name=nil, desc=nil, type=nil, isrequired=nil, defaultvalue=nil, subparams=nil, globalhidden=nil, agenthidden=nil, anyof=nil, oneof=nil, input=nil)
          @Name = name
          @Desc = desc
          @Type = type
          @IsRequired = isrequired
          @DefaultValue = defaultvalue
          @SubParams = subparams
          @GlobalHidden = globalhidden
          @AgentHidden = agenthidden
          @AnyOf = anyof
          @OneOf = oneof
          @Input = input
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Type = params['Type']
          @IsRequired = params['IsRequired']
          @DefaultValue = params['DefaultValue']
          unless params['SubParams'].nil?
            @SubParams = []
            params['SubParams'].each do |i|
              agenttoolreqparam_tmp = AgentToolReqParam.new
              agenttoolreqparam_tmp.deserialize(i)
              @SubParams << agenttoolreqparam_tmp
            end
          end
          @GlobalHidden = params['GlobalHidden']
          @AgentHidden = params['AgentHidden']
          unless params['AnyOf'].nil?
            @AnyOf = []
            params['AnyOf'].each do |i|
              agenttoolreqparam_tmp = AgentToolReqParam.new
              agenttoolreqparam_tmp.deserialize(i)
              @AnyOf << agenttoolreqparam_tmp
            end
          end
          unless params['OneOf'].nil?
            @OneOf = []
            params['OneOf'].each do |i|
              agenttoolreqparam_tmp = AgentToolReqParam.new
              agenttoolreqparam_tmp.deserialize(i)
              @OneOf << agenttoolreqparam_tmp
            end
          end
          unless params['Input'].nil?
            @Input = AgentInput.new
            @Input.deserialize(params['Input'])
          end
        end
      end

      # Agent工具的响应参数定义
      class AgentToolRspParam < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param Desc: 参数描述
        # @type Desc: String
        # @param Type: 参数类型，0:string, 1:int, 2:float，3:bool 4:object 5:array_string, 6:array_int, 7:array_float, 8:array_bool, 9:array_object
        # @type Type: Integer
        # @param SubParams: 子参数,ParamType 是OBJECT 或 ARRAY<>类型有用
        # @type SubParams: Array
        # @param AgentHidden: agent模式下模型是否可见
        # @type AgentHidden: Boolean
        # @param GlobalHidden: 是否隐藏不可见
        # @type GlobalHidden: Boolean
        # @param AnalysisMethod: COVER: 覆盖解析 INCREMENT:增量解析
        # @type AnalysisMethod: String

        attr_accessor :Name, :Desc, :Type, :SubParams, :AgentHidden, :GlobalHidden, :AnalysisMethod

        def initialize(name=nil, desc=nil, type=nil, subparams=nil, agenthidden=nil, globalhidden=nil, analysismethod=nil)
          @Name = name
          @Desc = desc
          @Type = type
          @SubParams = subparams
          @AgentHidden = agenthidden
          @GlobalHidden = globalhidden
          @AnalysisMethod = analysismethod
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Type = params['Type']
          unless params['SubParams'].nil?
            @SubParams = []
            params['SubParams'].each do |i|
              agenttoolrspparam_tmp = AgentToolRspParam.new
              agenttoolrspparam_tmp.deserialize(i)
              @SubParams << agenttoolrspparam_tmp
            end
          end
          @AgentHidden = params['AgentHidden']
          @GlobalHidden = params['GlobalHidden']
          @AnalysisMethod = params['AnalysisMethod']
        end
      end

      # 自定义变量和标签关系数据
      class ApiVarAttrInfo < TencentCloud::Common::AbstractModel
        # @param ApiVarId: 自定义变量id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiVarId: String
        # @param AttrBizId: 标签id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrBizId: String

        attr_accessor :ApiVarId, :AttrBizId

        def initialize(apivarid=nil, attrbizid=nil)
          @ApiVarId = apivarid
          @AttrBizId = attrbizid
        end

        def deserialize(params)
          @ApiVarId = params['ApiVarId']
          @AttrBizId = params['AttrBizId']
        end
      end

      # 应用基础信息
      class AppBaseInfo < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param AppName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String

        attr_accessor :AppBizId, :AppName

        def initialize(appbizid=nil, appname=nil)
          @AppBizId = appbizid
          @AppName = appname
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppName = params['AppName']
        end
      end

      # 应用配置
      class AppConfig < TencentCloud::Common::AbstractModel
        # @param KnowledgeQa: 知识问答管理应用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KnowledgeQa: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeQaConfig`
        # @param Summary: 知识摘要应用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Summary: :class:`Tencentcloud::Lke.v20231130.models.SummaryConfig`
        # @param Classify: 标签提取应用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Classify: :class:`Tencentcloud::Lke.v20231130.models.ClassifyConfig`

        attr_accessor :KnowledgeQa, :Summary, :Classify

        def initialize(knowledgeqa=nil, summary=nil, classify=nil)
          @KnowledgeQa = knowledgeqa
          @Summary = summary
          @Classify = classify
        end

        def deserialize(params)
          unless params['KnowledgeQa'].nil?
            @KnowledgeQa = KnowledgeQaConfig.new
            @KnowledgeQa.deserialize(params['KnowledgeQa'])
          end
          unless params['Summary'].nil?
            @Summary = SummaryConfig.new
            @Summary.deserialize(params['Summary'])
          end
          unless params['Classify'].nil?
            @Classify = ClassifyConfig.new
            @Classify.deserialize(params['Classify'])
          end
        end
      end

      # 应用详情
      class AppInfo < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppType: String
        # @param AppTypeDesc: 应用类型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppTypeDesc: String
        # @param AppBizId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppBizId: String
        # @param Name: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Avatar: 应用头像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param Desc: 应用描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param AppStatus: 应用状态，1：未上线，2：运行中，3：停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppStatus: Integer
        # @param AppStatusDesc: 状态说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppStatusDesc: String
        # @param UpdateTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Operator: 最后修改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param ModelAliasName: 生成模型别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAliasName: String
        # @param Pattern: 应用模式 standard:标准模式, agent: agent模式，single_workflow：单工作流模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pattern: String
        # @param ThoughtModelAliasName: 思考模型别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThoughtModelAliasName: String

        attr_accessor :AppType, :AppTypeDesc, :AppBizId, :Name, :Avatar, :Desc, :AppStatus, :AppStatusDesc, :UpdateTime, :Operator, :ModelName, :ModelAliasName, :Pattern, :ThoughtModelAliasName

        def initialize(apptype=nil, apptypedesc=nil, appbizid=nil, name=nil, avatar=nil, desc=nil, appstatus=nil, appstatusdesc=nil, updatetime=nil, operator=nil, modelname=nil, modelaliasname=nil, pattern=nil, thoughtmodelaliasname=nil)
          @AppType = apptype
          @AppTypeDesc = apptypedesc
          @AppBizId = appbizid
          @Name = name
          @Avatar = avatar
          @Desc = desc
          @AppStatus = appstatus
          @AppStatusDesc = appstatusdesc
          @UpdateTime = updatetime
          @Operator = operator
          @ModelName = modelname
          @ModelAliasName = modelaliasname
          @Pattern = pattern
          @ThoughtModelAliasName = thoughtmodelaliasname
        end

        def deserialize(params)
          @AppType = params['AppType']
          @AppTypeDesc = params['AppTypeDesc']
          @AppBizId = params['AppBizId']
          @Name = params['Name']
          @Avatar = params['Avatar']
          @Desc = params['Desc']
          @AppStatus = params['AppStatus']
          @AppStatusDesc = params['AppStatusDesc']
          @UpdateTime = params['UpdateTime']
          @Operator = params['Operator']
          @ModelName = params['ModelName']
          @ModelAliasName = params['ModelAliasName']
          @Pattern = params['Pattern']
          @ThoughtModelAliasName = params['ThoughtModelAliasName']
        end
      end

      # 应用模型配置
      class AppModel < TencentCloud::Common::AbstractModel
        # @param Name: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Desc: 模型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param ContextLimit: 上下文指代轮次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextLimit: Integer
        # @param AliasName: 模型别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String
        # @param TokenBalance: token余量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenBalance: Float
        # @param IsUseContext: 是否使用上下文指代轮次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUseContext: Boolean
        # @param HistoryLimit: 上下文记忆轮数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistoryLimit: Integer
        # @param UsageType: 使用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsageType: String
        # @param Temperature: 模型温度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Temperature: String
        # @param TopP: 模型TopP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopP: String
        # @param ResourceStatus: 模型资源状态 1：资源可用；2：资源已用尽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceStatus: Integer

        attr_accessor :Name, :Desc, :ContextLimit, :AliasName, :TokenBalance, :IsUseContext, :HistoryLimit, :UsageType, :Temperature, :TopP, :ResourceStatus

        def initialize(name=nil, desc=nil, contextlimit=nil, aliasname=nil, tokenbalance=nil, isusecontext=nil, historylimit=nil, usagetype=nil, temperature=nil, topp=nil, resourcestatus=nil)
          @Name = name
          @Desc = desc
          @ContextLimit = contextlimit
          @AliasName = aliasname
          @TokenBalance = tokenbalance
          @IsUseContext = isusecontext
          @HistoryLimit = historylimit
          @UsageType = usagetype
          @Temperature = temperature
          @TopP = topp
          @ResourceStatus = resourcestatus
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @ContextLimit = params['ContextLimit']
          @AliasName = params['AliasName']
          @TokenBalance = params['TokenBalance']
          @IsUseContext = params['IsUseContext']
          @HistoryLimit = params['HistoryLimit']
          @UsageType = params['UsageType']
          @Temperature = params['Temperature']
          @TopP = params['TopP']
          @ResourceStatus = params['ResourceStatus']
        end
      end

      # 标签详情信息
      class AttrLabel < TencentCloud::Common::AbstractModel
        # @param Source: 标签来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param AttrBizId: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrBizId: String
        # @param AttrKey: 标签标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrKey: String
        # @param AttrName: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrName: String
        # @param Labels: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array

        attr_accessor :Source, :AttrBizId, :AttrKey, :AttrName, :Labels

        def initialize(source=nil, attrbizid=nil, attrkey=nil, attrname=nil, labels=nil)
          @Source = source
          @AttrBizId = attrbizid
          @AttrKey = attrkey
          @AttrName = attrname
          @Labels = labels
        end

        def deserialize(params)
          @Source = params['Source']
          @AttrBizId = params['AttrBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
        end
      end

      # 标签详情
      class AttrLabelDetail < TencentCloud::Common::AbstractModel
        # @param AttrBizId: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrBizId: String
        # @param AttrKey: 标签标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrKey: String
        # @param AttrName: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrName: String
        # @param LabelNames: 标签值名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelNames: Array
        # @param IsUpdating: 标签是否在更新中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdating: Boolean
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param LabelTotalCount: 标签值总数
        # @type LabelTotalCount: String

        attr_accessor :AttrBizId, :AttrKey, :AttrName, :LabelNames, :IsUpdating, :Status, :StatusDesc, :LabelTotalCount

        def initialize(attrbizid=nil, attrkey=nil, attrname=nil, labelnames=nil, isupdating=nil, status=nil, statusdesc=nil, labeltotalcount=nil)
          @AttrBizId = attrbizid
          @AttrKey = attrkey
          @AttrName = attrname
          @LabelNames = labelnames
          @IsUpdating = isupdating
          @Status = status
          @StatusDesc = statusdesc
          @LabelTotalCount = labeltotalcount
        end

        def deserialize(params)
          @AttrBizId = params['AttrBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          @LabelNames = params['LabelNames']
          @IsUpdating = params['IsUpdating']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @LabelTotalCount = params['LabelTotalCount']
        end
      end

      # 标签引用信息
      class AttrLabelRefer < TencentCloud::Common::AbstractModel
        # @param Source: 标签来源，1：标签
        # @type Source: Integer
        # @param AttributeBizId: 标签ID
        # @type AttributeBizId: String
        # @param LabelBizIds: 标签值ID
        # @type LabelBizIds: Array

        attr_accessor :Source, :AttributeBizId, :LabelBizIds

        def initialize(source=nil, attributebizid=nil, labelbizids=nil)
          @Source = source
          @AttributeBizId = attributebizid
          @LabelBizIds = labelbizids
        end

        def deserialize(params)
          @Source = params['Source']
          @AttributeBizId = params['AttributeBizId']
          @LabelBizIds = params['LabelBizIds']
        end
      end

      # 导出知识标签过滤器
      class AttributeFilters < TencentCloud::Common::AbstractModel
        # @param Query: 检索，属性或标签名称
        # @type Query: String

        attr_accessor :Query

        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # 标签值
      class AttributeLabel < TencentCloud::Common::AbstractModel
        # @param LabelBizId: 标准词ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelBizId: String
        # @param LabelName: 标准词名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelName: String
        # @param SimilarLabels: 同义词名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SimilarLabels: Array

        attr_accessor :LabelBizId, :LabelName, :SimilarLabels

        def initialize(labelbizid=nil, labelname=nil, similarlabels=nil)
          @LabelBizId = labelbizid
          @LabelName = labelname
          @SimilarLabels = similarlabels
        end

        def deserialize(params)
          @LabelBizId = params['LabelBizId']
          @LabelName = params['LabelName']
          @SimilarLabels = params['SimilarLabels']
        end
      end

      # 标签值引用的工作流详情
      class AttributeLabelRefByWorkflow < TencentCloud::Common::AbstractModel
        # @param AttributeLabelBizId: 标签值id
        # @type AttributeLabelBizId: String
        # @param WorkflowList: 标签值引用的工作流列表
        # @type WorkflowList: Array

        attr_accessor :AttributeLabelBizId, :WorkflowList

        def initialize(attributelabelbizid=nil, workflowlist=nil)
          @AttributeLabelBizId = attributelabelbizid
          @WorkflowList = workflowlist
        end

        def deserialize(params)
          @AttributeLabelBizId = params['AttributeLabelBizId']
          unless params['WorkflowList'].nil?
            @WorkflowList = []
            params['WorkflowList'].each do |i|
              workflowref_tmp = WorkflowRef.new
              workflowref_tmp.deserialize(i)
              @WorkflowList << workflowref_tmp
            end
          end
        end
      end

      # 背景图相关配置
      class BackgroundImageConfig < TencentCloud::Common::AbstractModel
        # @param LandscapeImageUrl: 横图(pc)
        # @type LandscapeImageUrl: String
        # @param OriginalImageUrl: 原始图
        # @type OriginalImageUrl: String
        # @param PortraitImageUrl: 长图(手机)
        # @type PortraitImageUrl: String
        # @param ThemeColor: 主题色
        # @type ThemeColor: String
        # @param Brightness: 亮度值
        # @type Brightness: Integer

        attr_accessor :LandscapeImageUrl, :OriginalImageUrl, :PortraitImageUrl, :ThemeColor, :Brightness

        def initialize(landscapeimageurl=nil, originalimageurl=nil, portraitimageurl=nil, themecolor=nil, brightness=nil)
          @LandscapeImageUrl = landscapeimageurl
          @OriginalImageUrl = originalimageurl
          @PortraitImageUrl = portraitimageurl
          @ThemeColor = themecolor
          @Brightness = brightness
        end

        def deserialize(params)
          @LandscapeImageUrl = params['LandscapeImageUrl']
          @OriginalImageUrl = params['OriginalImageUrl']
          @PortraitImageUrl = params['PortraitImageUrl']
          @ThemeColor = params['ThemeColor']
          @Brightness = params['Brightness']
        end
      end

      # 应用基础配置
      class BaseConfig < TencentCloud::Common::AbstractModel
        # @param Name: 应用名称
        # @type Name: String
        # @param Avatar: 应用头像url，在CreateApp和ModifyApp中作为入参必填。
        # 作为入参传入说明：
        # 1. 传入的url图片限制为jpeg和png，大小限制为500KB，url链接需允许head请求。
        # 2. 如果用户没有对象存储，可使用“获取文件上传临时密钥”(DescribeStorageCredential)接口，获取cos临时密钥和上传路径，自行上传头像至cos中并获取访问链接。
        # @type Avatar: String
        # @param Desc: 应用描述
        # @type Desc: String

        attr_accessor :Name, :Avatar, :Desc

        def initialize(name=nil, avatar=nil, desc=nil)
          @Name = name
          @Avatar = avatar
          @Desc = desc
        end

        def deserialize(params)
          @Name = params['Name']
          @Avatar = params['Avatar']
          @Desc = params['Desc']
        end
      end

      # 调用类型
      class CallDetail < TencentCloud::Common::AbstractModel
        # @param Id: 关联ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param CallTime: 调用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallTime: String
        # @param TotalTokenUsage: 总token消耗
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTokenUsage: Float
        # @param InputTokenUsage: 输入token消耗
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputTokenUsage: Float
        # @param OutputTokenUsage: 输出token消耗
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputTokenUsage: Float
        # @param SearchUsage: 搜索服务调用次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchUsage: Integer
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param CallType: 调用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallType: String
        # @param UinAccount: 账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UinAccount: String
        # @param AppName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param PageUsage: 总消耗页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageUsage: Integer
        # @param SubScene: 筛选子场景
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubScene: String
        # @param BillingTag: 账单明细对应的自定义tag
        # @type BillingTag: String

        attr_accessor :Id, :CallTime, :TotalTokenUsage, :InputTokenUsage, :OutputTokenUsage, :SearchUsage, :ModelName, :CallType, :UinAccount, :AppName, :PageUsage, :SubScene, :BillingTag

        def initialize(id=nil, calltime=nil, totaltokenusage=nil, inputtokenusage=nil, outputtokenusage=nil, searchusage=nil, modelname=nil, calltype=nil, uinaccount=nil, appname=nil, pageusage=nil, subscene=nil, billingtag=nil)
          @Id = id
          @CallTime = calltime
          @TotalTokenUsage = totaltokenusage
          @InputTokenUsage = inputtokenusage
          @OutputTokenUsage = outputtokenusage
          @SearchUsage = searchusage
          @ModelName = modelname
          @CallType = calltype
          @UinAccount = uinaccount
          @AppName = appname
          @PageUsage = pageusage
          @SubScene = subscene
          @BillingTag = billingtag
        end

        def deserialize(params)
          @Id = params['Id']
          @CallTime = params['CallTime']
          @TotalTokenUsage = params['TotalTokenUsage']
          @InputTokenUsage = params['InputTokenUsage']
          @OutputTokenUsage = params['OutputTokenUsage']
          @SearchUsage = params['SearchUsage']
          @ModelName = params['ModelName']
          @CallType = params['CallType']
          @UinAccount = params['UinAccount']
          @AppName = params['AppName']
          @PageUsage = params['PageUsage']
          @SubScene = params['SubScene']
          @BillingTag = params['BillingTag']
        end
      end

      # 分类信息
      class CateInfo < TencentCloud::Common::AbstractModel
        # @param CateBizId: 分类ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CateBizId: String
        # @param Name: 分类名称

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Total: 分类下的Record（如文档、同义词等）数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param CanAdd: 是否可新增

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanAdd: Boolean
        # @param CanEdit: 是否可编辑

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanEdit: Boolean
        # @param CanDelete: 是否可删除

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanDelete: Boolean
        # @param Children: 子分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array

        attr_accessor :CateBizId, :Name, :Total, :CanAdd, :CanEdit, :CanDelete, :Children

        def initialize(catebizid=nil, name=nil, total=nil, canadd=nil, canedit=nil, candelete=nil, children=nil)
          @CateBizId = catebizid
          @Name = name
          @Total = total
          @CanAdd = canadd
          @CanEdit = canedit
          @CanDelete = candelete
          @Children = children
        end

        def deserialize(params)
          @CateBizId = params['CateBizId']
          @Name = params['Name']
          @Total = params['Total']
          @CanAdd = params['CanAdd']
          @CanEdit = params['CanEdit']
          @CanDelete = params['CanDelete']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              cateinfo_tmp = CateInfo.new
              cateinfo_tmp.deserialize(i)
              @Children << cateinfo_tmp
            end
          end
        end
      end

      # CheckAttributeLabelExist请求参数结构体
      class CheckAttributeLabelExistRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param LabelName: 属性名称
        # @type LabelName: String
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param LastLabelBizId: 滚动加载，最后一个属性标签ID
        # @type LastLabelBizId: String

        attr_accessor :BotBizId, :LabelName, :AttributeBizId, :LoginUin, :LoginSubAccountUin, :LastLabelBizId

        def initialize(botbizid=nil, labelname=nil, attributebizid=nil, loginuin=nil, loginsubaccountuin=nil, lastlabelbizid=nil)
          @BotBizId = botbizid
          @LabelName = labelname
          @AttributeBizId = attributebizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @LastLabelBizId = lastlabelbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @LabelName = params['LabelName']
          @AttributeBizId = params['AttributeBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LastLabelBizId = params['LastLabelBizId']
        end
      end

      # CheckAttributeLabelExist返回参数结构体
      class CheckAttributeLabelExistResponse < TencentCloud::Common::AbstractModel
        # @param IsExist: 是否存在
        # @type IsExist: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsExist, :RequestId

        def initialize(isexist=nil, requestid=nil)
          @IsExist = isexist
          @RequestId = requestid
        end

        def deserialize(params)
          @IsExist = params['IsExist']
          @RequestId = params['RequestId']
        end
      end

      # CheckAttributeLabelRefer请求参数结构体
      class CheckAttributeLabelReferRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param LabelBizId: 属性标签
        # @type LabelBizId: String
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: Array

        attr_accessor :BotBizId, :LoginUin, :LoginSubAccountUin, :LabelBizId, :AttributeBizId

        def initialize(botbizid=nil, loginuin=nil, loginsubaccountuin=nil, labelbizid=nil, attributebizid=nil)
          @BotBizId = botbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @LabelBizId = labelbizid
          @AttributeBizId = attributebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LabelBizId = params['LabelBizId']
          @AttributeBizId = params['AttributeBizId']
        end
      end

      # CheckAttributeLabelRefer返回参数结构体
      class CheckAttributeLabelReferResponse < TencentCloud::Common::AbstractModel
        # @param IsRefer: 是否引用
        # @type IsRefer: Boolean
        # @param List: 引用的工作流详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsRefer, :List, :RequestId

        def initialize(isrefer=nil, list=nil, requestid=nil)
          @IsRefer = isrefer
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @IsRefer = params['IsRefer']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              attributelabelrefbyworkflow_tmp = AttributeLabelRefByWorkflow.new
              attributelabelrefbyworkflow_tmp.deserialize(i)
              @List << attributelabelrefbyworkflow_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签提取配置
      class ClassifyConfig < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AppModel`
        # @param Labels: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param Greeting: 欢迎语，200字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Greeting: String

        attr_accessor :Model, :Labels, :Greeting

        def initialize(model=nil, labels=nil, greeting=nil)
          @Model = model
          @Labels = labels
          @Greeting = greeting
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = AppModel.new
            @Model.deserialize(params['Model'])
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              classifylabel_tmp = ClassifyLabel.new
              classifylabel_tmp.deserialize(i)
              @Labels << classifylabel_tmp
            end
          end
          @Greeting = params['Greeting']
        end
      end

      # 标签信息
      class ClassifyLabel < TencentCloud::Common::AbstractModel
        # @param Name: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 标签描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Values: 标签取值范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Name, :Description, :Values

        def initialize(name=nil, description=nil, values=nil)
          @Name = name
          @Description = description
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Values = params['Values']
        end
      end

      # 获取不满意回复上下文响
      class Context < TencentCloud::Common::AbstractModel
        # @param RecordBizId: 消息记录ID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordBizId: String
        # @param IsVisitor: 是否为用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVisitor: Boolean
        # @param NickName: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param Avatar: 头像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param Content: 消息内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param FileInfos: 文档信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileInfos: Array
        # @param ReplyMethod: 回复方式，15：澄清确认回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplyMethod: Integer

        attr_accessor :RecordBizId, :IsVisitor, :NickName, :Avatar, :Content, :FileInfos, :ReplyMethod

        def initialize(recordbizid=nil, isvisitor=nil, nickname=nil, avatar=nil, content=nil, fileinfos=nil, replymethod=nil)
          @RecordBizId = recordbizid
          @IsVisitor = isvisitor
          @NickName = nickname
          @Avatar = avatar
          @Content = content
          @FileInfos = fileinfos
          @ReplyMethod = replymethod
        end

        def deserialize(params)
          @RecordBizId = params['RecordBizId']
          @IsVisitor = params['IsVisitor']
          @NickName = params['NickName']
          @Avatar = params['Avatar']
          @Content = params['Content']
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              msgfileinfo_tmp = MsgFileInfo.new
              msgfileinfo_tmp.deserialize(i)
              @FileInfos << msgfileinfo_tmp
            end
          end
          @ReplyMethod = params['ReplyMethod']
        end
      end

      # CreateAgent请求参数结构体
      class CreateAgentRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param Agent: 要增加的Agent的信息
        # @type Agent: :class:`Tencentcloud::Lke.v20231130.models.Agent`

        attr_accessor :AppBizId, :Agent

        def initialize(appbizid=nil, agent=nil)
          @AppBizId = appbizid
          @Agent = agent
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateAgent返回参数结构体
      class CreateAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: 新建的AgentID
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
        # @param AppType: 应用类型；knowledge_qa-知识问答管理
        # @type AppType: String
        # @param BaseConfig: 应用基础配置
        # @type BaseConfig: :class:`Tencentcloud::Lke.v20231130.models.BaseConfig`
        # @param Pattern: 应用模式 standard:标准模式, agent: agent模式，single_workflow：单工作流模式
        # @type Pattern: String

        attr_accessor :AppType, :BaseConfig, :Pattern

        def initialize(apptype=nil, baseconfig=nil, pattern=nil)
          @AppType = apptype
          @BaseConfig = baseconfig
          @Pattern = pattern
        end

        def deserialize(params)
          @AppType = params['AppType']
          unless params['BaseConfig'].nil?
            @BaseConfig = BaseConfig.new
            @BaseConfig.deserialize(params['BaseConfig'])
          end
          @Pattern = params['Pattern']
        end
      end

      # CreateApp返回参数结构体
      class CreateAppResponse < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppBizId: String
        # @param IsCustomList: 判断账户应用列表权限是否是自定义的，用户交互提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCustomList: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppBizId, :IsCustomList, :RequestId

        def initialize(appbizid=nil, iscustomlist=nil, requestid=nil)
          @AppBizId = appbizid
          @IsCustomList = iscustomlist
          @RequestId = requestid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @IsCustomList = params['IsCustomList']
          @RequestId = params['RequestId']
        end
      end

      # CreateAttributeLabel请求参数结构体
      class CreateAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param AttrName: 标签名
        # @type AttrName: String
        # @param Labels: 标签值
        # @type Labels: Array
        # @param AttrKey: 标签标识（不生效，无需填写） 已作废
        # @type AttrKey: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :AttrName, :Labels, :AttrKey, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, attrname=nil, labels=nil, attrkey=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @AttrName = attrname
          @Labels = labels
          @AttrKey = attrkey
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttrName = params['AttrName']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabel_tmp = AttributeLabel.new
              attributelabel_tmp.deserialize(i)
              @Labels << attributelabel_tmp
            end
          end
          @AttrKey = params['AttrKey']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # CreateAttributeLabel返回参数结构体
      class CreateAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param AttrBizId: 标签ID
        # @type AttrBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttrBizId, :RequestId

        def initialize(attrbizid=nil, requestid=nil)
          @AttrBizId = attrbizid
          @RequestId = requestid
        end

        def deserialize(params)
          @AttrBizId = params['AttrBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDocCate请求参数结构体
      class CreateDocCateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param ParentBizId: 父级业务ID
        # @type ParentBizId: String
        # @param Name: 分类名称
        # @type Name: String

        attr_accessor :BotBizId, :ParentBizId, :Name

        def initialize(botbizid=nil, parentbizid=nil, name=nil)
          @BotBizId = botbizid
          @ParentBizId = parentbizid
          @Name = name
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ParentBizId = params['ParentBizId']
          @Name = params['Name']
        end
      end

      # CreateDocCate返回参数结构体
      class CreateDocCateResponse < TencentCloud::Common::AbstractModel
        # @param CanAdd: 是否可新增
        # @type CanAdd: Boolean
        # @param CanEdit: 是否可编辑
        # @type CanEdit: Boolean
        # @param CanDelete: 是否可删除
        # @type CanDelete: Boolean
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CanAdd, :CanEdit, :CanDelete, :CateBizId, :RequestId

        def initialize(canadd=nil, canedit=nil, candelete=nil, catebizid=nil, requestid=nil)
          @CanAdd = canadd
          @CanEdit = canedit
          @CanDelete = candelete
          @CateBizId = catebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @CanAdd = params['CanAdd']
          @CanEdit = params['CanEdit']
          @CanDelete = params['CanDelete']
          @CateBizId = params['CateBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateQACate请求参数结构体
      class CreateQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param ParentBizId: 父级业务ID，创建顶级分类时传字符串"0"
        # @type ParentBizId: String
        # @param Name: 分类名称
        # @type Name: String

        attr_accessor :BotBizId, :ParentBizId, :Name

        def initialize(botbizid=nil, parentbizid=nil, name=nil)
          @BotBizId = botbizid
          @ParentBizId = parentbizid
          @Name = name
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ParentBizId = params['ParentBizId']
          @Name = params['Name']
        end
      end

      # CreateQACate返回参数结构体
      class CreateQACateResponse < TencentCloud::Common::AbstractModel
        # @param CanAdd: 是否可新增
        # @type CanAdd: Boolean
        # @param CanEdit: 是否可编辑
        # @type CanEdit: Boolean
        # @param CanDelete: 是否可删除
        # @type CanDelete: Boolean
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CanAdd, :CanEdit, :CanDelete, :CateBizId, :RequestId

        def initialize(canadd=nil, canedit=nil, candelete=nil, catebizid=nil, requestid=nil)
          @CanAdd = canadd
          @CanEdit = canedit
          @CanDelete = candelete
          @CateBizId = catebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @CanAdd = params['CanAdd']
          @CanEdit = params['CanEdit']
          @CanDelete = params['CanDelete']
          @CateBizId = params['CateBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateQA请求参数结构体
      class CreateQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param AttrRange: 标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param CustomParam: 自定义参数
        # @type CustomParam: String
        # @param AttrLabels: 标签引用
        # @type AttrLabels: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param SimilarQuestions: 相似问内容
        # @type SimilarQuestions: Array
        # @param QuestionDesc: 问题描述
        # @type QuestionDesc: String

        attr_accessor :BotBizId, :Question, :Answer, :AttrRange, :CustomParam, :AttrLabels, :DocBizId, :CateBizId, :ExpireStart, :ExpireEnd, :SimilarQuestions, :QuestionDesc

        def initialize(botbizid=nil, question=nil, answer=nil, attrrange=nil, customparam=nil, attrlabels=nil, docbizid=nil, catebizid=nil, expirestart=nil, expireend=nil, similarquestions=nil, questiondesc=nil)
          @BotBizId = botbizid
          @Question = question
          @Answer = answer
          @AttrRange = attrrange
          @CustomParam = customparam
          @AttrLabels = attrlabels
          @DocBizId = docbizid
          @CateBizId = catebizid
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @SimilarQuestions = similarquestions
          @QuestionDesc = questiondesc
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @AttrRange = params['AttrRange']
          @CustomParam = params['CustomParam']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @DocBizId = params['DocBizId']
          @CateBizId = params['CateBizId']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          @SimilarQuestions = params['SimilarQuestions']
          @QuestionDesc = params['QuestionDesc']
        end
      end

      # CreateQA返回参数结构体
      class CreateQAResponse < TencentCloud::Common::AbstractModel
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QaBizId, :RequestId

        def initialize(qabizid=nil, requestid=nil)
          @QaBizId = qabizid
          @RequestId = requestid
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRejectedQuestion请求参数结构体
      class CreateRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param Question: 拒答问题

        # @type Question: String
        # @param BusinessSource: 拒答问题来源的数据源唯一id， - 拒答来源于不满意回复  2 - 拒答来源于手动添加
        # @type BusinessSource: Integer
        # @param BusinessId: 拒答问题来源的数据源唯一id

        # @type BusinessId: String

        attr_accessor :BotBizId, :Question, :BusinessSource, :BusinessId

        def initialize(botbizid=nil, question=nil, businesssource=nil, businessid=nil)
          @BotBizId = botbizid
          @Question = question
          @BusinessSource = businesssource
          @BusinessId = businessid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Question = params['Question']
          @BusinessSource = params['BusinessSource']
          @BusinessId = params['BusinessId']
        end
      end

      # CreateRejectedQuestion返回参数结构体
      class CreateRejectedQuestionResponse < TencentCloud::Common::AbstractModel
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

      # CreateRelease请求参数结构体
      class CreateReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param Desc: 发布描述
        # @type Desc: String
        # @param ChannelBizIds: 渠道业务ID
        # @type ChannelBizIds: Array

        attr_accessor :BotBizId, :Desc, :ChannelBizIds

        def initialize(botbizid=nil, desc=nil, channelbizids=nil)
          @BotBizId = botbizid
          @Desc = desc
          @ChannelBizIds = channelbizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Desc = params['Desc']
          @ChannelBizIds = params['ChannelBizIds']
        end
      end

      # CreateRelease返回参数结构体
      class CreateReleaseResponse < TencentCloud::Common::AbstractModel
        # @param ReleaseBizId: 发布ID
        # @type ReleaseBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReleaseBizId, :RequestId

        def initialize(releasebizid=nil, requestid=nil)
          @ReleaseBizId = releasebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReleaseBizId = params['ReleaseBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSharedKnowledge请求参数结构体
      class CreateSharedKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeName: 共享知识库名称，字符数量范围：[1, 50]
        # @type KnowledgeName: String
        # @param KnowledgeDescription: 共享知识库描述，字符数量上限2000
        # @type KnowledgeDescription: String
        # @param EmbeddingModel: Embedding模型，字符数量上限128
        # @type EmbeddingModel: String

        attr_accessor :KnowledgeName, :KnowledgeDescription, :EmbeddingModel

        def initialize(knowledgename=nil, knowledgedescription=nil, embeddingmodel=nil)
          @KnowledgeName = knowledgename
          @KnowledgeDescription = knowledgedescription
          @EmbeddingModel = embeddingmodel
        end

        def deserialize(params)
          @KnowledgeName = params['KnowledgeName']
          @KnowledgeDescription = params['KnowledgeDescription']
          @EmbeddingModel = params['EmbeddingModel']
        end
      end

      # CreateSharedKnowledge返回参数结构体
      class CreateSharedKnowledgeResponse < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库业务ID
        # @type KnowledgeBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KnowledgeBizId, :RequestId

        def initialize(knowledgebizid=nil, requestid=nil)
          @KnowledgeBizId = knowledgebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateVar请求参数结构体
      class CreateVarRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param VarName: 变量名称，不允许重复，最大支持50个字符
        # @type VarName: String
        # @param VarDesc: 变量描述，最大支持120个字符
        # @type VarDesc: String
        # @param VarType: 变量类型定义，支持类型如下：(STRING,INT,FLOAT,BOOL,OBJECT,ARRAY_STRING,ARRAY_INT,ARRAY_FLOAT,ARRAY_BOOL,ARRAY_OBJECT,FILE,DOCUMENT,IMAGE,AUDIO);传输过程是json字符串，标签中仅支持"STRING"类型使用
        # @type VarType: String
        # @param VarDefaultValue: 自定义变量默认值
        # @type VarDefaultValue: String
        # @param VarDefaultFileName: 自定义变量文件默认名称
        # @type VarDefaultFileName: String

        attr_accessor :AppBizId, :VarName, :VarDesc, :VarType, :VarDefaultValue, :VarDefaultFileName

        def initialize(appbizid=nil, varname=nil, vardesc=nil, vartype=nil, vardefaultvalue=nil, vardefaultfilename=nil)
          @AppBizId = appbizid
          @VarName = varname
          @VarDesc = vardesc
          @VarType = vartype
          @VarDefaultValue = vardefaultvalue
          @VarDefaultFileName = vardefaultfilename
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @VarName = params['VarName']
          @VarDesc = params['VarDesc']
          @VarType = params['VarType']
          @VarDefaultValue = params['VarDefaultValue']
          @VarDefaultFileName = params['VarDefaultFileName']
        end
      end

      # CreateVar返回参数结构体
      class CreateVarResponse < TencentCloud::Common::AbstractModel
        # @param VarId: 变量ID
        # @type VarId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VarId, :RequestId

        def initialize(varid=nil, requestid=nil)
          @VarId = varid
          @RequestId = requestid
        end

        def deserialize(params)
          @VarId = params['VarId']
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkflowRun请求参数结构体
      class CreateWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param RunEnv: 运行环境。0: 测试环境； 1: 正式环境
        # @type RunEnv: Integer
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param Query: 用户输入的内容
        # @type Query: String
        # @param CustomVariables: API参数配置
        # @type CustomVariables: Array

        attr_accessor :RunEnv, :AppBizId, :Query, :CustomVariables

        def initialize(runenv=nil, appbizid=nil, query=nil, customvariables=nil)
          @RunEnv = runenv
          @AppBizId = appbizid
          @Query = query
          @CustomVariables = customvariables
        end

        def deserialize(params)
          @RunEnv = params['RunEnv']
          @AppBizId = params['AppBizId']
          @Query = params['Query']
          unless params['CustomVariables'].nil?
            @CustomVariables = []
            params['CustomVariables'].each do |i|
              customvariable_tmp = CustomVariable.new
              customvariable_tmp.deserialize(i)
              @CustomVariables << customvariable_tmp
            end
          end
        end
      end

      # CreateWorkflowRun返回参数结构体
      class CreateWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param WorkflowRunId: 工作流运行实例的ID
        # @type WorkflowRunId: String
        # @param RunEnv: 运行环境。0: 测试环境； 1: 正式环境
        # @type RunEnv: Integer
        # @param Query: 用户输入的内容
        # @type Query: String
        # @param CustomVariables: API参数配置
        # @type CustomVariables: Array
        # @param CreateTime: 创建时间（毫秒时间戳）
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppBizId, :WorkflowRunId, :RunEnv, :Query, :CustomVariables, :CreateTime, :RequestId

        def initialize(appbizid=nil, workflowrunid=nil, runenv=nil, query=nil, customvariables=nil, createtime=nil, requestid=nil)
          @AppBizId = appbizid
          @WorkflowRunId = workflowrunid
          @RunEnv = runenv
          @Query = query
          @CustomVariables = customvariables
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @WorkflowRunId = params['WorkflowRunId']
          @RunEnv = params['RunEnv']
          @Query = params['Query']
          unless params['CustomVariables'].nil?
            @CustomVariables = []
            params['CustomVariables'].each do |i|
              customvariable_tmp = CustomVariable.new
              customvariable_tmp.deserialize(i)
              @CustomVariables << customvariable_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # 临时密钥结构
      class Credentials < TencentCloud::Common::AbstractModel
        # @param Token: token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param TmpSecretId: 临时证书密钥ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时证书密钥Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String
        # @param AppId: 临时证书appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer

        attr_accessor :Token, :TmpSecretId, :TmpSecretKey, :AppId

        def initialize(token=nil, tmpsecretid=nil, tmpsecretkey=nil, appid=nil)
          @Token = token
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @AppId = appid
        end

        def deserialize(params)
          @Token = params['Token']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @AppId = params['AppId']
        end
      end

      # 工作流的API参数
      class CustomVariable < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param Value: 参数的值
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

      # DeleteAgent请求参数结构体
      class DeleteAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent的ID
        # @type AgentId: String
        # @param AppBizId: 应用ID
        # @type AppBizId: String

        attr_accessor :AgentId, :AppBizId

        def initialize(agentid=nil, appbizid=nil)
          @AgentId = agentid
          @AppBizId = appbizid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AppBizId = params['AppBizId']
        end
      end

      # DeleteAgent返回参数结构体
      class DeleteAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent的ID
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

      # DeleteApp请求参数结构体
      class DeleteAppRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String

        attr_accessor :AppBizId, :AppType

        def initialize(appbizid=nil, apptype=nil)
          @AppBizId = appbizid
          @AppType = apptype
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
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

      # DeleteAttributeLabel请求参数结构体
      class DeleteAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param AttributeBizIds: 标签ID
        # @type AttributeBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :AttributeBizIds, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, attributebizids=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @AttributeBizIds = attributebizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttributeBizIds = params['AttributeBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # DeleteAttributeLabel返回参数结构体
      class DeleteAttributeLabelResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDocCate请求参数结构体
      class DeleteDocCateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :CateBizId

        def initialize(botbizid=nil, catebizid=nil)
          @BotBizId = botbizid
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @CateBizId = params['CateBizId']
        end
      end

      # DeleteDocCate返回参数结构体
      class DeleteDocCateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDoc请求参数结构体
      class DeleteDocRequest < TencentCloud::Common::AbstractModel
        # @param DocBizIds: 文档业务ID列表
        # @type DocBizIds: Array
        # @param BotBizId: 应用ID
        # @type BotBizId: String

        attr_accessor :DocBizIds, :BotBizId

        def initialize(docbizids=nil, botbizid=nil)
          @DocBizIds = docbizids
          @BotBizId = botbizid
        end

        def deserialize(params)
          @DocBizIds = params['DocBizIds']
          @BotBizId = params['BotBizId']
        end
      end

      # DeleteDoc返回参数结构体
      class DeleteDocResponse < TencentCloud::Common::AbstractModel
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

      # DeleteQACate请求参数结构体
      class DeleteQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :CateBizId

        def initialize(botbizid=nil, catebizid=nil)
          @BotBizId = botbizid
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @CateBizId = params['CateBizId']
        end
      end

      # DeleteQACate返回参数结构体
      class DeleteQACateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteQA请求参数结构体
      class DeleteQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param QaBizIds: 问答ID
        # @type QaBizIds: Array

        attr_accessor :BotBizId, :QaBizIds

        def initialize(botbizid=nil, qabizids=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
        end
      end

      # DeleteQA返回参数结构体
      class DeleteQAResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRejectedQuestion请求参数结构体
      class DeleteRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param RejectedBizIds: 拒答问题来源的数据源唯一id


        # @type RejectedBizIds: Array

        attr_accessor :BotBizId, :RejectedBizIds

        def initialize(botbizid=nil, rejectedbizids=nil)
          @BotBizId = botbizid
          @RejectedBizIds = rejectedbizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @RejectedBizIds = params['RejectedBizIds']
        end
      end

      # DeleteRejectedQuestion返回参数结构体
      class DeleteRejectedQuestionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSharedKnowledge请求参数结构体
      class DeleteSharedKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库业务ID
        # @type KnowledgeBizId: String

        attr_accessor :KnowledgeBizId

        def initialize(knowledgebizid=nil)
          @KnowledgeBizId = knowledgebizid
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
        end
      end

      # DeleteSharedKnowledge返回参数结构体
      class DeleteSharedKnowledgeResponse < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库业务ID
        # @type KnowledgeBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KnowledgeBizId, :RequestId

        def initialize(knowledgebizid=nil, requestid=nil)
          @KnowledgeBizId = knowledgebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteVar请求参数结构体
      class DeleteVarRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param VarId: 变量ID
        # @type VarId: String

        attr_accessor :AppBizId, :VarId

        def initialize(appbizid=nil, varid=nil)
          @AppBizId = appbizid
          @VarId = varid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @VarId = params['VarId']
        end
      end

      # DeleteVar返回参数结构体
      class DeleteVarResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAppAgentList请求参数结构体
      class DescribeAppAgentListRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String

        attr_accessor :AppBizId

        def initialize(appbizid=nil)
          @AppBizId = appbizid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
        end
      end

      # DescribeAppAgentList返回参数结构体
      class DescribeAppAgentListResponse < TencentCloud::Common::AbstractModel
        # @param StaringAgentId: 入口启动AgentID
        # @type StaringAgentId: String
        # @param Agents: 应用Agent信息列表
        # @type Agents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StaringAgentId, :Agents, :RequestId

        def initialize(staringagentid=nil, agents=nil, requestid=nil)
          @StaringAgentId = staringagentid
          @Agents = agents
          @RequestId = requestid
        end

        def deserialize(params)
          @StaringAgentId = params['StaringAgentId']
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              agent_tmp = Agent.new
              agent_tmp.deserialize(i)
              @Agents << agent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApp请求参数结构体
      class DescribeAppRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param IsRelease: 是否发布后的配置
        # @type IsRelease: Boolean

        attr_accessor :AppBizId, :AppType, :IsRelease

        def initialize(appbizid=nil, apptype=nil, isrelease=nil)
          @AppBizId = appbizid
          @AppType = apptype
          @IsRelease = isrelease
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
          @IsRelease = params['IsRelease']
        end
      end

      # DescribeApp返回参数结构体
      class DescribeAppResponse < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用 ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param AppTypeDesc: 应用类型说明
        # @type AppTypeDesc: String
        # @param BaseConfig: 应用类型说明
        # @type BaseConfig: :class:`Tencentcloud::Lke.v20231130.models.BaseConfig`
        # @param AppConfig: 应用配置
        # @type AppConfig: :class:`Tencentcloud::Lke.v20231130.models.AppConfig`
        # @param AvatarInAppeal: 头像是否在申诉中
        # @type AvatarInAppeal: Boolean
        # @param RoleInAppeal: 角色描述是否在申诉中
        # @type RoleInAppeal: Boolean
        # @param NameInAppeal: 名称是否在申诉中
        # @type NameInAppeal: Boolean
        # @param GreetingInAppeal: 欢迎语是否在申诉中
        # @type GreetingInAppeal: Boolean
        # @param BareAnswerInAppeal: 未知问题回复语是否在申诉中
        # @type BareAnswerInAppeal: Boolean
        # @param AppKey: 应用appKey
        # @type AppKey: String
        # @param AppStatus: 应用状态，1：未上线，2：运行中，3：停用
        # @type AppStatus: Integer
        # @param AppStatusDesc: 状态说明
        # @type AppStatusDesc: String
        # @param IsCopying: 应用是否在复制中
        # @type IsCopying: Boolean
        # @param AgentType: 智能体类型 dialogue 对话式智能体，wechat 公众号智能体
        # @type AgentType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppBizId, :AppType, :AppTypeDesc, :BaseConfig, :AppConfig, :AvatarInAppeal, :RoleInAppeal, :NameInAppeal, :GreetingInAppeal, :BareAnswerInAppeal, :AppKey, :AppStatus, :AppStatusDesc, :IsCopying, :AgentType, :RequestId

        def initialize(appbizid=nil, apptype=nil, apptypedesc=nil, baseconfig=nil, appconfig=nil, avatarinappeal=nil, roleinappeal=nil, nameinappeal=nil, greetinginappeal=nil, bareanswerinappeal=nil, appkey=nil, appstatus=nil, appstatusdesc=nil, iscopying=nil, agenttype=nil, requestid=nil)
          @AppBizId = appbizid
          @AppType = apptype
          @AppTypeDesc = apptypedesc
          @BaseConfig = baseconfig
          @AppConfig = appconfig
          @AvatarInAppeal = avatarinappeal
          @RoleInAppeal = roleinappeal
          @NameInAppeal = nameinappeal
          @GreetingInAppeal = greetinginappeal
          @BareAnswerInAppeal = bareanswerinappeal
          @AppKey = appkey
          @AppStatus = appstatus
          @AppStatusDesc = appstatusdesc
          @IsCopying = iscopying
          @AgentType = agenttype
          @RequestId = requestid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
          @AppTypeDesc = params['AppTypeDesc']
          unless params['BaseConfig'].nil?
            @BaseConfig = BaseConfig.new
            @BaseConfig.deserialize(params['BaseConfig'])
          end
          unless params['AppConfig'].nil?
            @AppConfig = AppConfig.new
            @AppConfig.deserialize(params['AppConfig'])
          end
          @AvatarInAppeal = params['AvatarInAppeal']
          @RoleInAppeal = params['RoleInAppeal']
          @NameInAppeal = params['NameInAppeal']
          @GreetingInAppeal = params['GreetingInAppeal']
          @BareAnswerInAppeal = params['BareAnswerInAppeal']
          @AppKey = params['AppKey']
          @AppStatus = params['AppStatus']
          @AppStatusDesc = params['AppStatusDesc']
          @IsCopying = params['IsCopying']
          @AgentType = params['AgentType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttributeLabel请求参数结构体
      class DescribeAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param Limit: 每次加载的数量
        # @type Limit: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Query: 查询标签或相似标签
        # @type Query: String
        # @param LastLabelBizId: 滚动加载游标的标签ID
        # @type LastLabelBizId: String
        # @param QueryScope: 查询范围 all(或者传空):标准词和相似词 standard:标准词 similar:相似词
        # @type QueryScope: String

        attr_accessor :BotBizId, :AttributeBizId, :Limit, :LoginUin, :LoginSubAccountUin, :Query, :LastLabelBizId, :QueryScope

        def initialize(botbizid=nil, attributebizid=nil, limit=nil, loginuin=nil, loginsubaccountuin=nil, query=nil, lastlabelbizid=nil, queryscope=nil)
          @BotBizId = botbizid
          @AttributeBizId = attributebizid
          @Limit = limit
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Query = query
          @LastLabelBizId = lastlabelbizid
          @QueryScope = queryscope
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttributeBizId = params['AttributeBizId']
          @Limit = params['Limit']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @Query = params['Query']
          @LastLabelBizId = params['LastLabelBizId']
          @QueryScope = params['QueryScope']
        end
      end

      # DescribeAttributeLabel返回参数结构体
      class DescribeAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param AttrKey: 属性标识
        # @type AttrKey: String
        # @param AttrName: 属性名称
        # @type AttrName: String
        # @param LabelNumber: 标签数量
        # @type LabelNumber: String
        # @param Labels: 标签名称
        # @type Labels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttributeBizId, :AttrKey, :AttrName, :LabelNumber, :Labels, :RequestId

        def initialize(attributebizid=nil, attrkey=nil, attrname=nil, labelnumber=nil, labels=nil, requestid=nil)
          @AttributeBizId = attributebizid
          @AttrKey = attrkey
          @AttrName = attrname
          @LabelNumber = labelnumber
          @Labels = labels
          @RequestId = requestid
        end

        def deserialize(params)
          @AttributeBizId = params['AttributeBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          @LabelNumber = params['LabelNumber']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabel_tmp = AttributeLabel.new
              attributelabel_tmp.deserialize(i)
              @Labels << attributelabel_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallStatsGraph请求参数结构体
      class DescribeCallStatsGraphRequest < TencentCloud::Common::AbstractModel
        # @param UinAccount: uin
        # @type UinAccount: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param SubBizType: 子业务类型
        # @type SubBizType: String
        # @param ModelName: 模型标识
        # @type ModelName: String
        # @param StartTime: 开始时间戳, 单位为秒
        # @type StartTime: String
        # @param EndTime: 结束时间戳, 单位为秒
        # @type EndTime: String
        # @param AppBizIds: 应用id列表
        # @type AppBizIds: Array
        # @param SubScenes: 筛选子场景(文档解析场景使用)
        # @type SubScenes: Array
        # @param AppType: 应用类型(knowledge_qa应用管理， shared_knowlege 共享知识库)
        # @type AppType: String

        attr_accessor :UinAccount, :LoginUin, :LoginSubAccountUin, :SubBizType, :ModelName, :StartTime, :EndTime, :AppBizIds, :SubScenes, :AppType

        def initialize(uinaccount=nil, loginuin=nil, loginsubaccountuin=nil, subbiztype=nil, modelname=nil, starttime=nil, endtime=nil, appbizids=nil, subscenes=nil, apptype=nil)
          @UinAccount = uinaccount
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @SubBizType = subbiztype
          @ModelName = modelname
          @StartTime = starttime
          @EndTime = endtime
          @AppBizIds = appbizids
          @SubScenes = subscenes
          @AppType = apptype
        end

        def deserialize(params)
          @UinAccount = params['UinAccount']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @SubBizType = params['SubBizType']
          @ModelName = params['ModelName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppBizIds = params['AppBizIds']
          @SubScenes = params['SubScenes']
          @AppType = params['AppType']
        end
      end

      # DescribeCallStatsGraph返回参数结构体
      class DescribeCallStatsGraphResponse < TencentCloud::Common::AbstractModel
        # @param List: 接口调用次数统计信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              stat_tmp = Stat.new
              stat_tmp.deserialize(i)
              @List << stat_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConcurrencyUsageGraph请求参数结构体
      class DescribeConcurrencyUsageGraphRequest < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型标识
        # @type ModelName: String
        # @param StartTime: 开始时间戳, 单位为秒
        # @type StartTime: String
        # @param EndTime: 结束时间戳, 单位为秒
        # @type EndTime: String
        # @param UinAccount: uin
        # @type UinAccount: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param SubBizType: 子业务类型
        # @type SubBizType: String
        # @param AppBizIds: 应用id列表
        # @type AppBizIds: Array

        attr_accessor :ModelName, :StartTime, :EndTime, :UinAccount, :LoginUin, :LoginSubAccountUin, :SubBizType, :AppBizIds

        def initialize(modelname=nil, starttime=nil, endtime=nil, uinaccount=nil, loginuin=nil, loginsubaccountuin=nil, subbiztype=nil, appbizids=nil)
          @ModelName = modelname
          @StartTime = starttime
          @EndTime = endtime
          @UinAccount = uinaccount
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @SubBizType = subbiztype
          @AppBizIds = appbizids
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UinAccount = params['UinAccount']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @SubBizType = params['SubBizType']
          @AppBizIds = params['AppBizIds']
        end
      end

      # DescribeConcurrencyUsageGraph返回参数结构体
      class DescribeConcurrencyUsageGraphResponse < TencentCloud::Common::AbstractModel
        # @param X: X轴: 时间区域；根据查询条件的粒度返回“分/小时/日”两种区间范围
        # @type X: Array
        # @param AvailableY: 可用并发y轴坐标
        # @type AvailableY: Array
        # @param SuccessCallY: 成功调用并发y轴坐标
        # @type SuccessCallY: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :X, :AvailableY, :SuccessCallY, :RequestId

        def initialize(x=nil, availabley=nil, successcally=nil, requestid=nil)
          @X = x
          @AvailableY = availabley
          @SuccessCallY = successcally
          @RequestId = requestid
        end

        def deserialize(params)
          @X = params['X']
          @AvailableY = params['AvailableY']
          @SuccessCallY = params['SuccessCallY']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConcurrencyUsage请求参数结构体
      class DescribeConcurrencyUsageRequest < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型标识
        # @type ModelName: String
        # @param StartTime: 开始时间戳, 单位为秒
        # @type StartTime: String
        # @param EndTime: 结束时间戳, 单位为秒
        # @type EndTime: String
        # @param AppBizIds: 应用id列表
        # @type AppBizIds: Array

        attr_accessor :ModelName, :StartTime, :EndTime, :AppBizIds

        def initialize(modelname=nil, starttime=nil, endtime=nil, appbizids=nil)
          @ModelName = modelname
          @StartTime = starttime
          @EndTime = endtime
          @AppBizIds = appbizids
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppBizIds = params['AppBizIds']
        end
      end

      # DescribeConcurrencyUsage返回参数结构体
      class DescribeConcurrencyUsageResponse < TencentCloud::Common::AbstractModel
        # @param AvailableConcurrency: 可用并发数上限
        # @type AvailableConcurrency: Integer
        # @param ConcurrencyPeak: 并发峰值
        # @type ConcurrencyPeak: Integer
        # @param ExceedUsageTime: 超出可用并发数上限的次数
        # @type ExceedUsageTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableConcurrency, :ConcurrencyPeak, :ExceedUsageTime, :RequestId

        def initialize(availableconcurrency=nil, concurrencypeak=nil, exceedusagetime=nil, requestid=nil)
          @AvailableConcurrency = availableconcurrency
          @ConcurrencyPeak = concurrencypeak
          @ExceedUsageTime = exceedusagetime
          @RequestId = requestid
        end

        def deserialize(params)
          @AvailableConcurrency = params['AvailableConcurrency']
          @ConcurrencyPeak = params['ConcurrencyPeak']
          @ExceedUsageTime = params['ExceedUsageTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDoc请求参数结构体
      class DescribeDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # DescribeDoc返回参数结构体
      class DescribeDocResponse < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param CosUrl: cos路径
        # @type CosUrl: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 文档状态： 1-未生成 2-生成中 3-生成成功 4-生成失败 5-删除中 6-删除成功 7-审核中 8-审核失败 9-审核成功 10-待发布 11-发布中 12-已发布 13-学习中 14-学习失败 15-更新中 16-更新失败 17-解析中 18-解析失败 19-导入失败 20-已过期 21-超量失效 22-超量失效恢复
        # @type Status: Integer
        # @param StatusDesc: 文档状态描述
        # @type StatusDesc: String
        # @param Reason: 生成失败原因
        # @type Reason: String
        # @param IsRefer: 答案中是否引用
        # @type IsRefer: Boolean
        # @param QaNum: 问答对数量
        # @type QaNum: Integer
        # @param IsDeleted: 是否删除
        # @type IsDeleted: Boolean
        # @param Source: 文档来源
        # @type Source: Integer
        # @param SourceDesc: 文档来源描述
        # @type SourceDesc: String
        # @param IsAllowRestart: 是否允许重新生成
        # @type IsAllowRestart: Boolean
        # @param IsDeletedQa: qa是否已删除
        # @type IsDeletedQa: Boolean
        # @param IsCreatingQa: 问答是否生成中
        # @type IsCreatingQa: Boolean
        # @param IsAllowDelete: 是否允许删除
        # @type IsAllowDelete: Boolean
        # @param IsAllowRefer: 是否允许操作引用开关
        # @type IsAllowRefer: Boolean
        # @param IsCreatedQa: 是否生成过问答
        # @type IsCreatedQa: Boolean
        # @param DocCharSize: 文档字符量
        # @type DocCharSize: String
        # @param IsAllowEdit: 是否允许编辑
        # @type IsAllowEdit: Boolean
        # @param AttrRange: 标签适用范围 1：全部，2：按条件范围
        # @type AttrRange: Integer
        # @param AttrLabels: 标签
        # @type AttrLabels: Array
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param IsDisabled: 文档是否停用，false:未停用，true:已停用
        # @type IsDisabled: Boolean
        # @param IsDownload: 是否支持下载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDownload: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocBizId, :FileName, :FileType, :CosUrl, :UpdateTime, :Status, :StatusDesc, :Reason, :IsRefer, :QaNum, :IsDeleted, :Source, :SourceDesc, :IsAllowRestart, :IsDeletedQa, :IsCreatingQa, :IsAllowDelete, :IsAllowRefer, :IsCreatedQa, :DocCharSize, :IsAllowEdit, :AttrRange, :AttrLabels, :CateBizId, :IsDisabled, :IsDownload, :RequestId

        def initialize(docbizid=nil, filename=nil, filetype=nil, cosurl=nil, updatetime=nil, status=nil, statusdesc=nil, reason=nil, isrefer=nil, qanum=nil, isdeleted=nil, source=nil, sourcedesc=nil, isallowrestart=nil, isdeletedqa=nil, iscreatingqa=nil, isallowdelete=nil, isallowrefer=nil, iscreatedqa=nil, doccharsize=nil, isallowedit=nil, attrrange=nil, attrlabels=nil, catebizid=nil, isdisabled=nil, isdownload=nil, requestid=nil)
          @DocBizId = docbizid
          @FileName = filename
          @FileType = filetype
          @CosUrl = cosurl
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @Reason = reason
          @IsRefer = isrefer
          @QaNum = qanum
          @IsDeleted = isdeleted
          @Source = source
          @SourceDesc = sourcedesc
          @IsAllowRestart = isallowrestart
          @IsDeletedQa = isdeletedqa
          @IsCreatingQa = iscreatingqa
          @IsAllowDelete = isallowdelete
          @IsAllowRefer = isallowrefer
          @IsCreatedQa = iscreatedqa
          @DocCharSize = doccharsize
          @IsAllowEdit = isallowedit
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @CateBizId = catebizid
          @IsDisabled = isdisabled
          @IsDownload = isdownload
          @RequestId = requestid
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Reason = params['Reason']
          @IsRefer = params['IsRefer']
          @QaNum = params['QaNum']
          @IsDeleted = params['IsDeleted']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @IsAllowRestart = params['IsAllowRestart']
          @IsDeletedQa = params['IsDeletedQa']
          @IsCreatingQa = params['IsCreatingQa']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowRefer = params['IsAllowRefer']
          @IsCreatedQa = params['IsCreatedQa']
          @DocCharSize = params['DocCharSize']
          @IsAllowEdit = params['IsAllowEdit']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabel_tmp = AttrLabel.new
              attrlabel_tmp.deserialize(i)
              @AttrLabels << attrlabel_tmp
            end
          end
          @CateBizId = params['CateBizId']
          @IsDisabled = params['IsDisabled']
          @IsDownload = params['IsDownload']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKnowledgeUsagePieGraph请求参数结构体
      class DescribeKnowledgeUsagePieGraphRequest < TencentCloud::Common::AbstractModel
        # @param AppBizIds: 应用ID数组
        # @type AppBizIds: Array

        attr_accessor :AppBizIds

        def initialize(appbizids=nil)
          @AppBizIds = appbizids
        end

        def deserialize(params)
          @AppBizIds = params['AppBizIds']
        end
      end

      # DescribeKnowledgeUsagePieGraph返回参数结构体
      class DescribeKnowledgeUsagePieGraphResponse < TencentCloud::Common::AbstractModel
        # @param AvailableCharSize: 所有应用已用的字符总数
        # @type AvailableCharSize: String
        # @param List: 应用饼图详情列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableCharSize, :List, :RequestId

        def initialize(availablecharsize=nil, list=nil, requestid=nil)
          @AvailableCharSize = availablecharsize
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @AvailableCharSize = params['AvailableCharSize']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              knowledgecapacitypiegraphdetail_tmp = KnowledgeCapacityPieGraphDetail.new
              knowledgecapacitypiegraphdetail_tmp.deserialize(i)
              @List << knowledgecapacitypiegraphdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKnowledgeUsage请求参数结构体
      class DescribeKnowledgeUsageRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeKnowledgeUsage返回参数结构体
      class DescribeKnowledgeUsageResponse < TencentCloud::Common::AbstractModel
        # @param AvailableCharSize: 可用字符数上限
        # @type AvailableCharSize: String
        # @param ExceedCharSize: 超过可用字符数上限的字符数
        # @type ExceedCharSize: String
        # @param UsedCharSize: 知识库使用字符总数
        # @type UsedCharSize: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableCharSize, :ExceedCharSize, :UsedCharSize, :RequestId

        def initialize(availablecharsize=nil, exceedcharsize=nil, usedcharsize=nil, requestid=nil)
          @AvailableCharSize = availablecharsize
          @ExceedCharSize = exceedcharsize
          @UsedCharSize = usedcharsize
          @RequestId = requestid
        end

        def deserialize(params)
          @AvailableCharSize = params['AvailableCharSize']
          @ExceedCharSize = params['ExceedCharSize']
          @UsedCharSize = params['UsedCharSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodeRun请求参数结构体
      class DescribeNodeRunRequest < TencentCloud::Common::AbstractModel
        # @param NodeRunId: 节点运行实例ID
        # @type NodeRunId: String

        attr_accessor :NodeRunId

        def initialize(noderunid=nil)
          @NodeRunId = noderunid
        end

        def deserialize(params)
          @NodeRunId = params['NodeRunId']
        end
      end

      # DescribeNodeRun返回参数结构体
      class DescribeNodeRunResponse < TencentCloud::Common::AbstractModel
        # @param NodeRun: 节点运行实例详情
        # @type NodeRun: :class:`Tencentcloud::Lke.v20231130.models.NodeRunDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeRun, :RequestId

        def initialize(noderun=nil, requestid=nil)
          @NodeRun = noderun
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodeRun'].nil?
            @NodeRun = NodeRunDetail.new
            @NodeRun.deserialize(params['NodeRun'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQA请求参数结构体
      class DescribeQARequest < TencentCloud::Common::AbstractModel
        # @param QaBizId: QA业务ID
        # @type QaBizId: String
        # @param BotBizId: 应用ID
        # @type BotBizId: String

        attr_accessor :QaBizId, :BotBizId

        def initialize(qabizid=nil, botbizid=nil)
          @QaBizId = qabizid
          @BotBizId = botbizid
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @BotBizId = params['BotBizId']
        end
      end

      # DescribeQA返回参数结构体
      class DescribeQAResponse < TencentCloud::Common::AbstractModel
        # @param QaBizId: QA业务ID
        # @type QaBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param CustomParam: 自定义参数
        # @type CustomParam: String
        # @param Source: 来源 1-文档生成问答对  2-批量导入问答对  3-单条手动录入问答对
        # @type Source: Integer
        # @param SourceDesc: 来源描述
        # @type SourceDesc: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态 <br>1-未校验  2-未发布 3-发布中 4-已发布  5-发布失败 6-不采纳 7-审核中  8-审核失败  9-审核失败申诉后人工审核中  11-审核失败申诉后人工审核不通过  12-已过期  13-超量失效  14-超量失效恢复 19-学习中  20-学习失败
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param IsAllowAccept: 是否允许校验
        # @type IsAllowAccept: Boolean
        # @param IsAllowDelete: 是否允许删除
        # @type IsAllowDelete: Boolean
        # @param IsAllowEdit: 是否允许编辑
        # @type IsAllowEdit: Boolean
        # @param DocBizId: 文档id
        # @type DocBizId: String
        # @param FileName: 文档名称
        # @type FileName: String
        # @param FileType: 文档类型
        # @type FileType: String
        # @param SegmentBizId: 分片ID
        # @type SegmentBizId: String
        # @param PageContent: 分片内容
        # @type PageContent: String
        # @param Highlights: 分片高亮内容
        # @type Highlights: Array
        # @param OrgData: 分片内容
        # @type OrgData: String
        # @param AttrRange: 标签适用范围
        # @type AttrRange: Integer
        # @param AttrLabels: 标签
        # @type AttrLabels: Array
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param SimilarQuestions: 相似问列表信息
        # @type SimilarQuestions: Array
        # @param QaAuditStatus: 问题和答案文本审核状态 1审核失败
        # @type QaAuditStatus: Integer
        # @param PicAuditStatus: 答案中的图片审核状态 1审核失败
        # @type PicAuditStatus: Integer
        # @param VideoAuditStatus: 答案中的视频审核状态 1审核失败
        # @type VideoAuditStatus: Integer
        # @param QuestionDesc: 问题描述
        # @type QuestionDesc: String
        # @param IsDisabled: 问答是否停用，false:未停用，true已停用
        # @type IsDisabled: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QaBizId, :Question, :Answer, :CustomParam, :Source, :SourceDesc, :UpdateTime, :Status, :StatusDesc, :CateBizId, :IsAllowAccept, :IsAllowDelete, :IsAllowEdit, :DocBizId, :FileName, :FileType, :SegmentBizId, :PageContent, :Highlights, :OrgData, :AttrRange, :AttrLabels, :ExpireStart, :ExpireEnd, :SimilarQuestions, :QaAuditStatus, :PicAuditStatus, :VideoAuditStatus, :QuestionDesc, :IsDisabled, :RequestId

        def initialize(qabizid=nil, question=nil, answer=nil, customparam=nil, source=nil, sourcedesc=nil, updatetime=nil, status=nil, statusdesc=nil, catebizid=nil, isallowaccept=nil, isallowdelete=nil, isallowedit=nil, docbizid=nil, filename=nil, filetype=nil, segmentbizid=nil, pagecontent=nil, highlights=nil, orgdata=nil, attrrange=nil, attrlabels=nil, expirestart=nil, expireend=nil, similarquestions=nil, qaauditstatus=nil, picauditstatus=nil, videoauditstatus=nil, questiondesc=nil, isdisabled=nil, requestid=nil)
          @QaBizId = qabizid
          @Question = question
          @Answer = answer
          @CustomParam = customparam
          @Source = source
          @SourceDesc = sourcedesc
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @CateBizId = catebizid
          @IsAllowAccept = isallowaccept
          @IsAllowDelete = isallowdelete
          @IsAllowEdit = isallowedit
          @DocBizId = docbizid
          @FileName = filename
          @FileType = filetype
          @SegmentBizId = segmentbizid
          @PageContent = pagecontent
          @Highlights = highlights
          @OrgData = orgdata
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @SimilarQuestions = similarquestions
          @QaAuditStatus = qaauditstatus
          @PicAuditStatus = picauditstatus
          @VideoAuditStatus = videoauditstatus
          @QuestionDesc = questiondesc
          @IsDisabled = isdisabled
          @RequestId = requestid
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @CustomParam = params['CustomParam']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CateBizId = params['CateBizId']
          @IsAllowAccept = params['IsAllowAccept']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowEdit = params['IsAllowEdit']
          @DocBizId = params['DocBizId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @SegmentBizId = params['SegmentBizId']
          @PageContent = params['PageContent']
          unless params['Highlights'].nil?
            @Highlights = []
            params['Highlights'].each do |i|
              highlight_tmp = Highlight.new
              highlight_tmp.deserialize(i)
              @Highlights << highlight_tmp
            end
          end
          @OrgData = params['OrgData']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabel_tmp = AttrLabel.new
              attrlabel_tmp.deserialize(i)
              @AttrLabels << attrlabel_tmp
            end
          end
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          unless params['SimilarQuestions'].nil?
            @SimilarQuestions = []
            params['SimilarQuestions'].each do |i|
              similarquestion_tmp = SimilarQuestion.new
              similarquestion_tmp.deserialize(i)
              @SimilarQuestions << similarquestion_tmp
            end
          end
          @QaAuditStatus = params['QaAuditStatus']
          @PicAuditStatus = params['PicAuditStatus']
          @VideoAuditStatus = params['VideoAuditStatus']
          @QuestionDesc = params['QuestionDesc']
          @IsDisabled = params['IsDisabled']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRefer请求参数结构体
      class DescribeReferRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param ReferBizIds: 引用ID
        # @type ReferBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :ReferBizIds, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, referbizids=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @ReferBizIds = referbizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReferBizIds = params['ReferBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # DescribeRefer返回参数结构体
      class DescribeReferResponse < TencentCloud::Common::AbstractModel
        # @param List: 引用列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              referdetail_tmp = ReferDetail.new
              referdetail_tmp.deserialize(i)
              @List << referdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseInfo请求参数结构体
      class DescribeReleaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String

        attr_accessor :BotBizId

        def initialize(botbizid=nil)
          @BotBizId = botbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
        end
      end

      # DescribeReleaseInfo返回参数结构体
      class DescribeReleaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param LastTime: 最后发布时间
        # @type LastTime: String
        # @param Status: 发布状态 ， 1-待发布 , 2-发布中 , 3-发布成功 , 4-发布失败 , 5-审核中 , 6-审核成功 , 7-审核失败 , 8-发布成功回调处理中 , 9-发布暂停 , 10-申诉审核中 , 11-申诉审核通过 , 12-申诉审核不通过
        # @type Status: Integer
        # @param IsUpdated: 是否编辑过, 当为true的时候表示可以发布
        # @type IsUpdated: Boolean
        # @param Msg: 失败原因
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LastTime, :Status, :IsUpdated, :Msg, :RequestId

        def initialize(lasttime=nil, status=nil, isupdated=nil, msg=nil, requestid=nil)
          @LastTime = lasttime
          @Status = status
          @IsUpdated = isupdated
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @LastTime = params['LastTime']
          @Status = params['Status']
          @IsUpdated = params['IsUpdated']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelease请求参数结构体
      class DescribeReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param ReleaseBizId: 发布详情
        # @type ReleaseBizId: String

        attr_accessor :BotBizId, :ReleaseBizId

        def initialize(botbizid=nil, releasebizid=nil)
          @BotBizId = botbizid
          @ReleaseBizId = releasebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReleaseBizId = params['ReleaseBizId']
        end
      end

      # DescribeRelease返回参数结构体
      class DescribeReleaseResponse < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Description: 发布描述
        # @type Description: String
        # @param Status: 发布状态(1待发布 2发布中 3发布成功 4发布失败 5发布中(审核中) 6发布中(审核完成) 7发布失败(审核失败) 9发布暂停)
        # @type Status: Integer
        # @param StatusDesc: 发布状态描述
        # @type StatusDesc: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreateTime, :Description, :Status, :StatusDesc, :RequestId

        def initialize(createtime=nil, description=nil, status=nil, statusdesc=nil, requestid=nil)
          @CreateTime = createtime
          @Description = description
          @Status = status
          @StatusDesc = statusdesc
          @RequestId = requestid
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRobotBizIDByAppKey请求参数结构体
      class DescribeRobotBizIDByAppKeyRequest < TencentCloud::Common::AbstractModel
        # @param AppKey: 应用appkey
        # @type AppKey: String

        attr_accessor :AppKey

        def initialize(appkey=nil)
          @AppKey = appkey
        end

        def deserialize(params)
          @AppKey = params['AppKey']
        end
      end

      # DescribeRobotBizIDByAppKey返回参数结构体
      class DescribeRobotBizIDByAppKeyResponse < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用业务ID
        # @type BotBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BotBizId, :RequestId

        def initialize(botbizid=nil, requestid=nil)
          @BotBizId = botbizid
          @RequestId = requestid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchStatsGraph请求参数结构体
      class DescribeSearchStatsGraphRequest < TencentCloud::Common::AbstractModel
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param UinAccount: uin列表
        # @type UinAccount: Array
        # @param SubBizType: 子业务类型
        # @type SubBizType: String
        # @param ModelName: 模型标识
        # @type ModelName: String
        # @param StartTime: 开始时间戳, 单位为秒
        # @type StartTime: String
        # @param EndTime: 结束时间戳, 单位为秒
        # @type EndTime: String
        # @param AppBizIds: 应用id列表
        # @type AppBizIds: Array

        attr_accessor :LoginUin, :LoginSubAccountUin, :UinAccount, :SubBizType, :ModelName, :StartTime, :EndTime, :AppBizIds

        def initialize(loginuin=nil, loginsubaccountuin=nil, uinaccount=nil, subbiztype=nil, modelname=nil, starttime=nil, endtime=nil, appbizids=nil)
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @UinAccount = uinaccount
          @SubBizType = subbiztype
          @ModelName = modelname
          @StartTime = starttime
          @EndTime = endtime
          @AppBizIds = appbizids
        end

        def deserialize(params)
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @UinAccount = params['UinAccount']
          @SubBizType = params['SubBizType']
          @ModelName = params['ModelName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppBizIds = params['AppBizIds']
        end
      end

      # DescribeSearchStatsGraph返回参数结构体
      class DescribeSearchStatsGraphResponse < TencentCloud::Common::AbstractModel
        # @param List: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              stat_tmp = Stat.new
              stat_tmp.deserialize(i)
              @List << stat_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSegments请求参数结构体
      class DescribeSegmentsRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param SegBizId: 文档片段ID
        # @type SegBizId: Array

        attr_accessor :BotBizId, :SegBizId

        def initialize(botbizid=nil, segbizid=nil)
          @BotBizId = botbizid
          @SegBizId = segbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @SegBizId = params['SegBizId']
        end
      end

      # DescribeSegments返回参数结构体
      class DescribeSegmentsResponse < TencentCloud::Common::AbstractModel
        # @param List: 片段列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              docsegment_tmp = DocSegment.new
              docsegment_tmp.deserialize(i)
              @List << docsegment_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSharedKnowledge请求参数结构体
      class DescribeSharedKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库业务ID
        # @type KnowledgeBizId: String

        attr_accessor :KnowledgeBizId

        def initialize(knowledgebizid=nil)
          @KnowledgeBizId = knowledgebizid
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
        end
      end

      # DescribeSharedKnowledge返回参数结构体
      class DescribeSharedKnowledgeResponse < TencentCloud::Common::AbstractModel
        # @param Info: 知识库列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeDetailInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Info, :RequestId

        def initialize(info=nil, requestid=nil)
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Info'].nil?
            @Info = KnowledgeDetailInfo.new
            @Info.deserialize(params['Info'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStorageCredential请求参数结构体
      class DescribeStorageCredentialRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID，参数非必填不代表不需要填写，下面不同的参数组合会获取到不同的权限，具体请参考 https://cloud.tencent.com/document/product/1759/116238
        # @type BotBizId: String
        # @param FileType: 文件类型,正常的文件名类型后缀，例如 xlsx、pdf、 docx、png 等
        # @type FileType: String
        # @param IsPublic: IsPublic用于上传文件或图片时选择场景，当上传对话端图片时IsPublic为true，上传文件（包括文档库文件/图片等和对话端文件）时IsPublic为false
        # @type IsPublic: Boolean
        # @param TypeKey: 存储类型: offline:离线文件，realtime:实时文件；为空默认为offline
        # @type TypeKey: String

        attr_accessor :BotBizId, :FileType, :IsPublic, :TypeKey

        def initialize(botbizid=nil, filetype=nil, ispublic=nil, typekey=nil)
          @BotBizId = botbizid
          @FileType = filetype
          @IsPublic = ispublic
          @TypeKey = typekey
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @FileType = params['FileType']
          @IsPublic = params['IsPublic']
          @TypeKey = params['TypeKey']
        end
      end

      # DescribeStorageCredential返回参数结构体
      class DescribeStorageCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 密钥信息
        # @type Credentials: :class:`Tencentcloud::Lke.v20231130.models.Credentials`
        # @param ExpiredTime: 失效时间
        # @type ExpiredTime: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Bucket: 对象存储桶
        # @type Bucket: String
        # @param Region: 对象存储可用区
        # @type Region: String
        # @param FilePath: 文件存储目录
        # @type FilePath: String
        # @param Type: 存储类型
        # @type Type: String
        # @param CorpUin: 主号
        # @type CorpUin: String
        # @param ImagePath: 图片存储目录
        # @type ImagePath: String
        # @param UploadPath: 上传存储路径，到具体文件
        # @type UploadPath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :ExpiredTime, :StartTime, :Bucket, :Region, :FilePath, :Type, :CorpUin, :ImagePath, :UploadPath, :RequestId

        def initialize(credentials=nil, expiredtime=nil, starttime=nil, bucket=nil, region=nil, filepath=nil, type=nil, corpuin=nil, imagepath=nil, uploadpath=nil, requestid=nil)
          @Credentials = credentials
          @ExpiredTime = expiredtime
          @StartTime = starttime
          @Bucket = bucket
          @Region = region
          @FilePath = filepath
          @Type = type
          @CorpUin = corpuin
          @ImagePath = imagepath
          @UploadPath = uploadpath
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @ExpiredTime = params['ExpiredTime']
          @StartTime = params['StartTime']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @FilePath = params['FilePath']
          @Type = params['Type']
          @CorpUin = params['CorpUin']
          @ImagePath = params['ImagePath']
          @UploadPath = params['UploadPath']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenUsageGraph请求参数结构体
      class DescribeTokenUsageGraphRequest < TencentCloud::Common::AbstractModel
        # @param UinAccount: 腾讯云主账号
        # @type UinAccount: Array
        # @param SubBizType: 知识引擎子业务类型:  FileParse(文档解析)、Embedding、Rewrite(多轮改写)、 Concurrency(并发)、KnowledgeSummary(知识总结)   KnowledgeQA(知识问答)、KnowledgeCapacity(知识库容量)、SearchEngine(搜索引擎)
        # @type SubBizType: String
        # @param ModelName: 模型标识
        # @type ModelName: String
        # @param StartTime: 开始时间戳, 单位为秒
        # @type StartTime: String
        # @param EndTime: 结束时间戳, 单位为秒
        # @type EndTime: String
        # @param AppBizIds: 应用id列表
        # @type AppBizIds: Array
        # @param AppType: 应用类型(knowledge_qa应用管理， shared_knowlege 共享知识库)
        # @type AppType: String

        attr_accessor :UinAccount, :SubBizType, :ModelName, :StartTime, :EndTime, :AppBizIds, :AppType

        def initialize(uinaccount=nil, subbiztype=nil, modelname=nil, starttime=nil, endtime=nil, appbizids=nil, apptype=nil)
          @UinAccount = uinaccount
          @SubBizType = subbiztype
          @ModelName = modelname
          @StartTime = starttime
          @EndTime = endtime
          @AppBizIds = appbizids
          @AppType = apptype
        end

        def deserialize(params)
          @UinAccount = params['UinAccount']
          @SubBizType = params['SubBizType']
          @ModelName = params['ModelName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppBizIds = params['AppBizIds']
          @AppType = params['AppType']
        end
      end

      # DescribeTokenUsageGraph返回参数结构体
      class DescribeTokenUsageGraphResponse < TencentCloud::Common::AbstractModel
        # @param Total: Token消耗总量
        # @type Total: Array
        # @param Input: 输入Token消耗量
        # @type Input: Array
        # @param Output: 输出Token消耗量
        # @type Output: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Input, :Output, :RequestId

        def initialize(total=nil, input=nil, output=nil, requestid=nil)
          @Total = total
          @Input = input
          @Output = output
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Total'].nil?
            @Total = []
            params['Total'].each do |i|
              stat_tmp = Stat.new
              stat_tmp.deserialize(i)
              @Total << stat_tmp
            end
          end
          unless params['Input'].nil?
            @Input = []
            params['Input'].each do |i|
              stat_tmp = Stat.new
              stat_tmp.deserialize(i)
              @Input << stat_tmp
            end
          end
          unless params['Output'].nil?
            @Output = []
            params['Output'].each do |i|
              stat_tmp = Stat.new
              stat_tmp.deserialize(i)
              @Output << stat_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenUsage请求参数结构体
      class DescribeTokenUsageRequest < TencentCloud::Common::AbstractModel
        # @param UinAccount: 腾讯云主账号
        # @type UinAccount: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param SubBizType: 知识引擎子业务类型:  FileParse(文档解析)、Embedding、Rewrite(多轮改写)、 Concurrency(并发)、KnowledgeSummary(知识总结)   KnowledgeQA(知识问答)、KnowledgeCapacity(知识库容量)、SearchEngine(搜索引擎)
        # @type SubBizType: String
        # @param ModelName: 模型标识
        # @type ModelName: String
        # @param StartTime: 开始时间戳, 单位为秒(默认值0)
        # @type StartTime: String
        # @param EndTime: 结束时间戳, 单位为秒(默认值0， 必须大于开始时间戳)
        # @type EndTime: String
        # @param AppBizIds: 应用id列表
        # @type AppBizIds: Array
        # @param SubScenes: 筛选子场景(文档解析场景使用)
        # @type SubScenes: Array
        # @param AppType: 应用类型(knowledge_qa应用管理， shared_knowlege 共享知识库)
        # @type AppType: String

        attr_accessor :UinAccount, :LoginUin, :LoginSubAccountUin, :SubBizType, :ModelName, :StartTime, :EndTime, :AppBizIds, :SubScenes, :AppType

        def initialize(uinaccount=nil, loginuin=nil, loginsubaccountuin=nil, subbiztype=nil, modelname=nil, starttime=nil, endtime=nil, appbizids=nil, subscenes=nil, apptype=nil)
          @UinAccount = uinaccount
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @SubBizType = subbiztype
          @ModelName = modelname
          @StartTime = starttime
          @EndTime = endtime
          @AppBizIds = appbizids
          @SubScenes = subscenes
          @AppType = apptype
        end

        def deserialize(params)
          @UinAccount = params['UinAccount']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @SubBizType = params['SubBizType']
          @ModelName = params['ModelName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppBizIds = params['AppBizIds']
          @SubScenes = params['SubScenes']
          @AppType = params['AppType']
        end
      end

      # DescribeTokenUsage返回参数结构体
      class DescribeTokenUsageResponse < TencentCloud::Common::AbstractModel
        # @param TotalTokenUsage: 总token消耗量
        # @type TotalTokenUsage: Float
        # @param InputTokenUsage: 输入token消耗
        # @type InputTokenUsage: Float
        # @param OutputTokenUsage: 输出token消耗
        # @type OutputTokenUsage: Float
        # @param ApiCallStats: 接口调用次数
        # @type ApiCallStats: Integer
        # @param SearchUsage: 搜索服务调用次数
        # @type SearchUsage: Float
        # @param PageUsage: 文档解析消耗页数
        # @type PageUsage: Integer
        # @param SplitTokenUsage: 拆分token消耗量
        # @type SplitTokenUsage: Float
        # @param RagSearchUsage: Rag检索次数
        # @type RagSearchUsage: Float
        # @param InternetSearchUsage: 联网搜索次数
        # @type InternetSearchUsage: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalTokenUsage, :InputTokenUsage, :OutputTokenUsage, :ApiCallStats, :SearchUsage, :PageUsage, :SplitTokenUsage, :RagSearchUsage, :InternetSearchUsage, :RequestId

        def initialize(totaltokenusage=nil, inputtokenusage=nil, outputtokenusage=nil, apicallstats=nil, searchusage=nil, pageusage=nil, splittokenusage=nil, ragsearchusage=nil, internetsearchusage=nil, requestid=nil)
          @TotalTokenUsage = totaltokenusage
          @InputTokenUsage = inputtokenusage
          @OutputTokenUsage = outputtokenusage
          @ApiCallStats = apicallstats
          @SearchUsage = searchusage
          @PageUsage = pageusage
          @SplitTokenUsage = splittokenusage
          @RagSearchUsage = ragsearchusage
          @InternetSearchUsage = internetsearchusage
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalTokenUsage = params['TotalTokenUsage']
          @InputTokenUsage = params['InputTokenUsage']
          @OutputTokenUsage = params['OutputTokenUsage']
          @ApiCallStats = params['ApiCallStats']
          @SearchUsage = params['SearchUsage']
          @PageUsage = params['PageUsage']
          @SplitTokenUsage = params['SplitTokenUsage']
          @RagSearchUsage = params['RagSearchUsage']
          @InternetSearchUsage = params['InternetSearchUsage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnsatisfiedReplyContext请求参数结构体
      class DescribeUnsatisfiedReplyContextRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param ReplyBizId: 回复ID
        # @type ReplyBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :ReplyBizId, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, replybizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @ReplyBizId = replybizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReplyBizId = params['ReplyBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # DescribeUnsatisfiedReplyContext返回参数结构体
      class DescribeUnsatisfiedReplyContextResponse < TencentCloud::Common::AbstractModel
        # @param List: 不满意回复上下文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              context_tmp = Context.new
              context_tmp.deserialize(i)
              @List << context_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkflowRun请求参数结构体
      class DescribeWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowRunId: 工作流运行实例ID
        # @type WorkflowRunId: String

        attr_accessor :WorkflowRunId

        def initialize(workflowrunid=nil)
          @WorkflowRunId = workflowrunid
        end

        def deserialize(params)
          @WorkflowRunId = params['WorkflowRunId']
        end
      end

      # DescribeWorkflowRun返回参数结构体
      class DescribeWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param WorkflowRun: 总数
        # @type WorkflowRun: :class:`Tencentcloud::Lke.v20231130.models.WorkflowRunDetail`
        # @param NodeRuns: 节点列表
        # @type NodeRuns: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkflowRun, :NodeRuns, :RequestId

        def initialize(workflowrun=nil, noderuns=nil, requestid=nil)
          @WorkflowRun = workflowrun
          @NodeRuns = noderuns
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkflowRun'].nil?
            @WorkflowRun = WorkflowRunDetail.new
            @WorkflowRun.deserialize(params['WorkflowRun'])
          end
          unless params['NodeRuns'].nil?
            @NodeRuns = []
            params['NodeRuns'].each do |i|
              noderunbase_tmp = NodeRunBase.new
              noderunbase_tmp.deserialize(i)
              @NodeRuns << noderunbase_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 数智人配置
      class DigitalHumanConfig < TencentCloud::Common::AbstractModel
        # @param AssetKey: 数智人资产key
        # @type AssetKey: String
        # @param Name: 数智人名称
        # @type Name: String
        # @param Avatar: 图像
        # @type Avatar: String
        # @param PreviewUrl: 预览图
        # @type PreviewUrl: String

        attr_accessor :AssetKey, :Name, :Avatar, :PreviewUrl

        def initialize(assetkey=nil, name=nil, avatar=nil, previewurl=nil)
          @AssetKey = assetkey
          @Name = name
          @Avatar = avatar
          @PreviewUrl = previewurl
        end

        def deserialize(params)
          @AssetKey = params['AssetKey']
          @Name = params['Name']
          @Avatar = params['Avatar']
          @PreviewUrl = params['PreviewUrl']
        end
      end

      # 文档列表筛选标识位
      class DocFilterFlag < TencentCloud::Common::AbstractModel
        # @param Flag: 标识位
        # @type Flag: String
        # @param Value: 标识值
        # @type Value: Boolean

        attr_accessor :Flag, :Value

        def initialize(flag=nil, value=nil)
          @Flag = flag
          @Value = value
        end

        def deserialize(params)
          @Flag = params['Flag']
          @Value = params['Value']
        end
      end

      # 文档片段
      class DocSegment < TencentCloud::Common::AbstractModel
        # @param Id: 片段ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param BusinessId: 业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param FileType: 文件类型(markdown,word,txt)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param SegmentType: 文档切片类型(segment-文档切片 table-表格)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentType: String
        # @param Title: 标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param PageContent: 段落内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageContent: String
        # @param OrgData: 段落原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgData: String
        # @param DocId: 文章ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocId: String
        # @param DocBizId: 文档业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocBizId: String
        # @param DocUrl: 文档链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocUrl: String
        # @param WebUrl: 文档的自定义链接
        # @type WebUrl: String
        # @param PageInfos: 页码信息
        # @type PageInfos: Array

        attr_accessor :Id, :BusinessId, :FileType, :SegmentType, :Title, :PageContent, :OrgData, :DocId, :DocBizId, :DocUrl, :WebUrl, :PageInfos

        def initialize(id=nil, businessid=nil, filetype=nil, segmenttype=nil, title=nil, pagecontent=nil, orgdata=nil, docid=nil, docbizid=nil, docurl=nil, weburl=nil, pageinfos=nil)
          @Id = id
          @BusinessId = businessid
          @FileType = filetype
          @SegmentType = segmenttype
          @Title = title
          @PageContent = pagecontent
          @OrgData = orgdata
          @DocId = docid
          @DocBizId = docbizid
          @DocUrl = docurl
          @WebUrl = weburl
          @PageInfos = pageinfos
        end

        def deserialize(params)
          @Id = params['Id']
          @BusinessId = params['BusinessId']
          @FileType = params['FileType']
          @SegmentType = params['SegmentType']
          @Title = params['Title']
          @PageContent = params['PageContent']
          @OrgData = params['OrgData']
          @DocId = params['DocId']
          @DocBizId = params['DocBizId']
          @DocUrl = params['DocUrl']
          @WebUrl = params['WebUrl']
          @PageInfos = params['PageInfos']
        end
      end

      # ExportAttributeLabel请求参数结构体
      class ExportAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param AttributeBizIds: 属性ID
        # @type AttributeBizIds: Array
        # @param Filters: 根据筛选数据导出
        # @type Filters: :class:`Tencentcloud::Lke.v20231130.models.AttributeFilters`

        attr_accessor :BotBizId, :LoginUin, :LoginSubAccountUin, :AttributeBizIds, :Filters

        def initialize(botbizid=nil, loginuin=nil, loginsubaccountuin=nil, attributebizids=nil, filters=nil)
          @BotBizId = botbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @AttributeBizIds = attributebizids
          @Filters = filters
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @AttributeBizIds = params['AttributeBizIds']
          unless params['Filters'].nil?
            @Filters = AttributeFilters.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # ExportAttributeLabel返回参数结构体
      class ExportAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出任务ID
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

      # ExportQAList请求参数结构体
      class ExportQAListRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param QaBizIds: QA业务ID
        # @type QaBizIds: Array
        # @param Filters: 查询参数
        # @type Filters: :class:`Tencentcloud::Lke.v20231130.models.QAQuery`

        attr_accessor :BotBizId, :QaBizIds, :Filters

        def initialize(botbizid=nil, qabizids=nil, filters=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
          @Filters = filters
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
          unless params['Filters'].nil?
            @Filters = QAQuery.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # ExportQAList返回参数结构体
      class ExportQAListResponse < TencentCloud::Common::AbstractModel
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

      # ExportUnsatisfiedReply请求参数结构体
      class ExportUnsatisfiedReplyRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param ReplyBizIds: 勾选导出ID列表
        # @type ReplyBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Filters: 检索过滤器
        # @type Filters: :class:`Tencentcloud::Lke.v20231130.models.Filters`

        attr_accessor :BotBizId, :ReplyBizIds, :LoginUin, :LoginSubAccountUin, :Filters

        def initialize(botbizid=nil, replybizids=nil, loginuin=nil, loginsubaccountuin=nil, filters=nil)
          @BotBizId = botbizid
          @ReplyBizIds = replybizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Filters = filters
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReplyBizIds = params['ReplyBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          unless params['Filters'].nil?
            @Filters = Filters.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # ExportUnsatisfiedReply返回参数结构体
      class ExportUnsatisfiedReplyResponse < TencentCloud::Common::AbstractModel
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

      # 扩展信息
      class ExtraInfo < TencentCloud::Common::AbstractModel
        # @param EChartsInfo: ECharts信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EChartsInfo: Array

        attr_accessor :EChartsInfo

        def initialize(echartsinfo=nil)
          @EChartsInfo = echartsinfo
        end

        def deserialize(params)
          @EChartsInfo = params['EChartsInfo']
        end
      end

      # 实时上传的文件信息
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileSize: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: String
        # @param FileUrl: 文件的URL地址，COS地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileUrl: String
        # @param FileType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param DocId: 解析后返回的DocID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocId: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String

        attr_accessor :FileName, :FileSize, :FileUrl, :FileType, :DocId, :CreatedAt

        def initialize(filename=nil, filesize=nil, fileurl=nil, filetype=nil, docid=nil, createdat=nil)
          @FileName = filename
          @FileSize = filesize
          @FileUrl = fileurl
          @FileType = filetype
          @DocId = docid
          @CreatedAt = createdat
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
          @DocId = params['DocId']
          @CreatedAt = params['CreatedAt']
        end
      end

      # 不满意回复检索过滤
      class Filters < TencentCloud::Common::AbstractModel
        # @param Query: 检索，用户问题或答案
        # @type Query: String
        # @param Reasons: 错误类型检索
        # @type Reasons: Array

        attr_accessor :Query, :Reasons

        def initialize(query=nil, reasons=nil)
          @Query = query
          @Reasons = reasons
        end

        def deserialize(params)
          @Query = params['Query']
          @Reasons = params['Reasons']
        end
      end

      # GenerateQA请求参数结构体
      class GenerateQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizIds: 文档ID
        # @type DocBizIds: Array

        attr_accessor :BotBizId, :DocBizIds

        def initialize(botbizid=nil, docbizids=nil)
          @BotBizId = botbizid
          @DocBizIds = docbizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizIds = params['DocBizIds']
        end
      end

      # GenerateQA返回参数结构体
      class GenerateQAResponse < TencentCloud::Common::AbstractModel
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

      # GetAnswerTypeDataCount请求参数结构体
      class GetAnswerTypeDataCountRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始日期
        # @type StartTime: Integer
        # @param EndTime: 结束日期
        # @type EndTime: Integer
        # @param AppBizId: 应用id
        # @type AppBizId: Array
        # @param Type: 消息来源(1、分享用户端  2、对话API  3、对话测试  4、应用评测)
        # @type Type: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :StartTime, :EndTime, :AppBizId, :Type, :LoginUin, :LoginSubAccountUin

        def initialize(starttime=nil, endtime=nil, appbizid=nil, type=nil, loginuin=nil, loginsubaccountuin=nil)
          @StartTime = starttime
          @EndTime = endtime
          @AppBizId = appbizid
          @Type = type
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppBizId = params['AppBizId']
          @Type = params['Type']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # GetAnswerTypeDataCount返回参数结构体
      class GetAnswerTypeDataCountResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总消息数
        # @type Total: Integer
        # @param ModelReplyCount: 大模型直接回复总数
        # @type ModelReplyCount: Integer
        # @param KnowledgeCount: 知识型回复总数
        # @type KnowledgeCount: Integer
        # @param TaskFlowCount: 任务流回复总数
        # @type TaskFlowCount: Integer
        # @param SearchEngineCount: 搜索引擎回复总数
        # @type SearchEngineCount: Integer
        # @param ImageUnderstandingCount: 图片理解回复总数
        # @type ImageUnderstandingCount: Integer
        # @param RejectCount: 拒答回复总数
        # @type RejectCount: Integer
        # @param SensitiveCount: 敏感回复总数
        # @type SensitiveCount: Integer
        # @param ConcurrentLimitCount: 并发超限回复总数
        # @type ConcurrentLimitCount: Integer
        # @param UnknownIssuesCount: 未知问题回复总数
        # @type UnknownIssuesCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ModelReplyCount, :KnowledgeCount, :TaskFlowCount, :SearchEngineCount, :ImageUnderstandingCount, :RejectCount, :SensitiveCount, :ConcurrentLimitCount, :UnknownIssuesCount, :RequestId

        def initialize(total=nil, modelreplycount=nil, knowledgecount=nil, taskflowcount=nil, searchenginecount=nil, imageunderstandingcount=nil, rejectcount=nil, sensitivecount=nil, concurrentlimitcount=nil, unknownissuescount=nil, requestid=nil)
          @Total = total
          @ModelReplyCount = modelreplycount
          @KnowledgeCount = knowledgecount
          @TaskFlowCount = taskflowcount
          @SearchEngineCount = searchenginecount
          @ImageUnderstandingCount = imageunderstandingcount
          @RejectCount = rejectcount
          @SensitiveCount = sensitivecount
          @ConcurrentLimitCount = concurrentlimitcount
          @UnknownIssuesCount = unknownissuescount
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @ModelReplyCount = params['ModelReplyCount']
          @KnowledgeCount = params['KnowledgeCount']
          @TaskFlowCount = params['TaskFlowCount']
          @SearchEngineCount = params['SearchEngineCount']
          @ImageUnderstandingCount = params['ImageUnderstandingCount']
          @RejectCount = params['RejectCount']
          @SensitiveCount = params['SensitiveCount']
          @ConcurrentLimitCount = params['ConcurrentLimitCount']
          @UnknownIssuesCount = params['UnknownIssuesCount']
          @RequestId = params['RequestId']
        end
      end

      # GetAppKnowledgeCount请求参数结构体
      class GetAppKnowledgeCountRequest < TencentCloud::Common::AbstractModel
        # @param Type: 类型：doc-文档；qa-问答对
        # @type Type: String
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :Type, :AppBizId, :LoginUin, :LoginSubAccountUin

        def initialize(type=nil, appbizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @Type = type
          @AppBizId = appbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @Type = params['Type']
          @AppBizId = params['AppBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # GetAppKnowledgeCount返回参数结构体
      class GetAppKnowledgeCountResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RequestId

        def initialize(total=nil, requestid=nil)
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetAppSecret请求参数结构体
      class GetAppSecretRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String

        attr_accessor :AppBizId

        def initialize(appbizid=nil)
          @AppBizId = appbizid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
        end
      end

      # GetAppSecret返回参数结构体
      class GetAppSecretResponse < TencentCloud::Common::AbstractModel
        # @param AppKey: 应用密钥
        # @type AppKey: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsRelease: 是否发布
        # @type IsRelease: Boolean
        # @param HasPermission: 是否有查看权限
        # @type HasPermission: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppKey, :CreateTime, :IsRelease, :HasPermission, :RequestId

        def initialize(appkey=nil, createtime=nil, isrelease=nil, haspermission=nil, requestid=nil)
          @AppKey = appkey
          @CreateTime = createtime
          @IsRelease = isrelease
          @HasPermission = haspermission
          @RequestId = requestid
        end

        def deserialize(params)
          @AppKey = params['AppKey']
          @CreateTime = params['CreateTime']
          @IsRelease = params['IsRelease']
          @HasPermission = params['HasPermission']
          @RequestId = params['RequestId']
        end
      end

      # GetDocPreview请求参数结构体
      class GetDocPreviewRequest < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档BizID
        # @type DocBizId: String
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param TypeKey: 存储类型: offline:离线文件，realtime:实时文件；为空默认为offline
        # @type TypeKey: String

        attr_accessor :DocBizId, :BotBizId, :TypeKey

        def initialize(docbizid=nil, botbizid=nil, typekey=nil)
          @DocBizId = docbizid
          @BotBizId = botbizid
          @TypeKey = typekey
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @BotBizId = params['BotBizId']
          @TypeKey = params['TypeKey']
        end
      end

      # GetDocPreview返回参数结构体
      class GetDocPreviewResponse < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名, 发布端固定使用这个名称
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param CosUrl: cos路径
        # @type CosUrl: String
        # @param Url: cos临时地址
        # @type Url: String
        # @param Bucket: cos桶
        # @type Bucket: String
        # @param NewName: 存在文档重命名情况下的新名称, 评测端优先使用这个名称
        # @type NewName: String
        # @param ParseResultCosUrl: 文件md结果cos临时地址
        # @type ParseResultCosUrl: String
        # @param IsDownload: 是否可下载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDownload: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileName, :FileType, :CosUrl, :Url, :Bucket, :NewName, :ParseResultCosUrl, :IsDownload, :RequestId

        def initialize(filename=nil, filetype=nil, cosurl=nil, url=nil, bucket=nil, newname=nil, parseresultcosurl=nil, isdownload=nil, requestid=nil)
          @FileName = filename
          @FileType = filetype
          @CosUrl = cosurl
          @Url = url
          @Bucket = bucket
          @NewName = newname
          @ParseResultCosUrl = parseresultcosurl
          @IsDownload = isdownload
          @RequestId = requestid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @Url = params['Url']
          @Bucket = params['Bucket']
          @NewName = params['NewName']
          @ParseResultCosUrl = params['ParseResultCosUrl']
          @IsDownload = params['IsDownload']
          @RequestId = params['RequestId']
        end
      end

      # GetLikeDataCount请求参数结构体
      class GetLikeDataCountRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始日期
        # @type StartTime: Integer
        # @param EndTime: 结束日期
        # @type EndTime: Integer
        # @param AppBizId: 应用id
        # @type AppBizId: Array
        # @param Type: 消息来源(1、分享用户端  2、对话API)
        # @type Type: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :StartTime, :EndTime, :AppBizId, :Type, :LoginUin, :LoginSubAccountUin

        def initialize(starttime=nil, endtime=nil, appbizid=nil, type=nil, loginuin=nil, loginsubaccountuin=nil)
          @StartTime = starttime
          @EndTime = endtime
          @AppBizId = appbizid
          @Type = type
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppBizId = params['AppBizId']
          @Type = params['Type']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # GetLikeDataCount返回参数结构体
      class GetLikeDataCountResponse < TencentCloud::Common::AbstractModel
        # @param Total: 可评价消息数
        # @type Total: Integer
        # @param AppraisalTotal: 评价数
        # @type AppraisalTotal: Integer
        # @param ParticipationRate: 参评率
        # @type ParticipationRate: Float
        # @param LikeTotal: 点赞数
        # @type LikeTotal: Integer
        # @param LikeRate: 点赞率
        # @type LikeRate: Float
        # @param DislikeTotal: 点踩数
        # @type DislikeTotal: Integer
        # @param DislikeRate: 点踩率
        # @type DislikeRate: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AppraisalTotal, :ParticipationRate, :LikeTotal, :LikeRate, :DislikeTotal, :DislikeRate, :RequestId

        def initialize(total=nil, appraisaltotal=nil, participationrate=nil, liketotal=nil, likerate=nil, disliketotal=nil, dislikerate=nil, requestid=nil)
          @Total = total
          @AppraisalTotal = appraisaltotal
          @ParticipationRate = participationrate
          @LikeTotal = liketotal
          @LikeRate = likerate
          @DislikeTotal = disliketotal
          @DislikeRate = dislikerate
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @AppraisalTotal = params['AppraisalTotal']
          @ParticipationRate = params['ParticipationRate']
          @LikeTotal = params['LikeTotal']
          @LikeRate = params['LikeRate']
          @DislikeTotal = params['DislikeTotal']
          @DislikeRate = params['DislikeRate']
          @RequestId = params['RequestId']
        end
      end

      # GetMsgRecord请求参数结构体
      class GetMsgRecordRequest < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: Integer
        # @param Count: 数量,  数量需大于2, 最大1000
        # @type Count: Integer
        # @param SessionId: 会话sessionid
        # @type SessionId: String
        # @param BotAppKey: 应用AppKey, 当Type=5[API访客]时, 该字段必填  :</br>  获取方式:</br>   1、应用发布后在应用页面[发布管理]-[调用信息]-[API管理]处获取</br>   2、参考 https://cloud.tencent.com/document/product/1759/109469 第二项
        # @type BotAppKey: String
        # @param Scene: 场景, 体验: 1; 正式: 2
        # @type Scene: Integer
        # @param LastRecordId: 最后一条记录ID， 消息从后往前获取

        # MidRecordId与LastRecordId只能选择一个
        # @type LastRecordId: String
        # @param MidRecordId: 传该值，代表拉取该记录id的前后总共count条消息记录

        # MidRecordId与LastRecordId只能选择一个
        # @type MidRecordId: String

        attr_accessor :Type, :Count, :SessionId, :BotAppKey, :Scene, :LastRecordId, :MidRecordId

        def initialize(type=nil, count=nil, sessionid=nil, botappkey=nil, scene=nil, lastrecordid=nil, midrecordid=nil)
          @Type = type
          @Count = count
          @SessionId = sessionid
          @BotAppKey = botappkey
          @Scene = scene
          @LastRecordId = lastrecordid
          @MidRecordId = midrecordid
        end

        def deserialize(params)
          @Type = params['Type']
          @Count = params['Count']
          @SessionId = params['SessionId']
          @BotAppKey = params['BotAppKey']
          @Scene = params['Scene']
          @LastRecordId = params['LastRecordId']
          @MidRecordId = params['MidRecordId']
        end
      end

      # GetMsgRecord返回参数结构体
      class GetMsgRecordResponse < TencentCloud::Common::AbstractModel
        # @param Records: 会话记录
        # @type Records: Array
        # @param SessionDisassociatedTimestamp: session 清除关联上下文时间, 单位 ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionDisassociatedTimestamp: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Records, :SessionDisassociatedTimestamp, :RequestId

        def initialize(records=nil, sessiondisassociatedtimestamp=nil, requestid=nil)
          @Records = records
          @SessionDisassociatedTimestamp = sessiondisassociatedtimestamp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              msgrecord_tmp = MsgRecord.new
              msgrecord_tmp.deserialize(i)
              @Records << msgrecord_tmp
            end
          end
          @SessionDisassociatedTimestamp = params['SessionDisassociatedTimestamp']
          @RequestId = params['RequestId']
        end
      end

      # GetTaskStatus请求参数结构体
      class GetTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param BotBizId: 应用ID
        # @type BotBizId: String

        attr_accessor :TaskId, :TaskType, :BotBizId

        def initialize(taskid=nil, tasktype=nil, botbizid=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @BotBizId = botbizid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @BotBizId = params['BotBizId']
        end
      end

      # GetTaskStatus返回参数结构体
      class GetTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Message: 任务消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Params: 任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: :class:`Tencentcloud::Lke.v20231130.models.TaskParams`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskType, :Status, :Message, :Params, :RequestId

        def initialize(taskid=nil, tasktype=nil, status=nil, message=nil, params=nil, requestid=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @Status = status
          @Message = message
          @Params = params
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @Status = params['Status']
          @Message = params['Message']
          unless params['Params'].nil?
            @Params = TaskParams.new
            @Params.deserialize(params['Params'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetVarList请求参数结构体
      class GetVarListRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param VarIds: 变量ID数组
        # @type VarIds: Array
        # @param Keyword: 按变量名称关键词搜索
        # @type Keyword: String
        # @param Offset: 起始偏移量（默认0）
        # @type Offset: Integer
        # @param Limit: 限定数量（默认15）
        # @type Limit: Integer
        # @param VarType: 按变量类型过滤，默认查询所有类型(STRING,INT,FLOAT,BOOL,OBJECT,ARRAY_STRING,ARRAY_INT,ARRAY_FLOAT,ARRAY_BOOL,ARRAY_OBJECT,FILE,DOCUMENT,IMAGE,AUDIO)
        # @type VarType: String
        # @param NeedInternalVar: 是否需要内部变量(默认false)
        # @type NeedInternalVar: Boolean

        attr_accessor :AppBizId, :VarIds, :Keyword, :Offset, :Limit, :VarType, :NeedInternalVar

        def initialize(appbizid=nil, varids=nil, keyword=nil, offset=nil, limit=nil, vartype=nil, needinternalvar=nil)
          @AppBizId = appbizid
          @VarIds = varids
          @Keyword = keyword
          @Offset = offset
          @Limit = limit
          @VarType = vartype
          @NeedInternalVar = needinternalvar
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @VarIds = params['VarIds']
          @Keyword = params['Keyword']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @VarType = params['VarType']
          @NeedInternalVar = params['NeedInternalVar']
        end
      end

      # GetVarList返回参数结构体
      class GetVarListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 变量总数
        # @type Total: Integer
        # @param List: 变量信息列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              taskflowvar_tmp = TaskFLowVar.new
              taskflowvar_tmp.deserialize(i)
              @List << taskflowvar_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取ws token label
      class GetWsTokenReq_Label < TencentCloud::Common::AbstractModel
        # @param Name: 标签名
        # @type Name: String
        # @param Values: 标签值
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

      # GetWsToken请求参数结构体
      class GetWsTokenRequest < TencentCloud::Common::AbstractModel
        # @param Type: 接入类型， 5-API 访客
        # @type Type: Integer
        # @param BotAppKey:   应用AppKey </br>   获取方式:</br>   1、应用发布后在应用页面[发布管理]-[调用信息]-[API管理]处获取</br>   2、参考 https://cloud.tencent.com/document/product/1759/109469 第二项
        # @type BotAppKey: String
        # @param VisitorBizId: 访客ID（外部输入，建议唯一，标识当前接入会话的用户）
        # 长度限制： string(64)
        # @type VisitorBizId: String
        # @param VisitorLabels: 知识标签，用于知识库中知识的检索过滤。该字段即将下线，请使用对话端接口中的 custom_variables 字段替代该字段。
        # @type VisitorLabels: Array

        attr_accessor :Type, :BotAppKey, :VisitorBizId, :VisitorLabels

        def initialize(type=nil, botappkey=nil, visitorbizid=nil, visitorlabels=nil)
          @Type = type
          @BotAppKey = botappkey
          @VisitorBizId = visitorbizid
          @VisitorLabels = visitorlabels
        end

        def deserialize(params)
          @Type = params['Type']
          @BotAppKey = params['BotAppKey']
          @VisitorBizId = params['VisitorBizId']
          unless params['VisitorLabels'].nil?
            @VisitorLabels = []
            params['VisitorLabels'].each do |i|
              getwstokenreq_label_tmp = GetWsTokenReq_Label.new
              getwstokenreq_label_tmp.deserialize(i)
              @VisitorLabels << getwstokenreq_label_tmp
            end
          end
        end
      end

      # GetWsToken返回参数结构体
      class GetWsTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: token值（有效期60s，仅一次有效，多次校验会报错）
        # @type Token: String
        # @param Balance: 余额; 余额大于 0 时表示有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Balance: Float
        # @param InputLenLimit: 对话窗输入字符限制
        # @type InputLenLimit: Integer
        # @param Pattern: 应用模式，standard:标准模式, agent: agent模式，single_workflow：单工作流模式
        # @type Pattern: String
        # @param SingleWorkflow: SingleWorkflow
        # @type SingleWorkflow: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeQaSingleWorkflow`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :Balance, :InputLenLimit, :Pattern, :SingleWorkflow, :RequestId

        def initialize(token=nil, balance=nil, inputlenlimit=nil, pattern=nil, singleworkflow=nil, requestid=nil)
          @Token = token
          @Balance = balance
          @InputLenLimit = inputlenlimit
          @Pattern = pattern
          @SingleWorkflow = singleworkflow
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @Balance = params['Balance']
          @InputLenLimit = params['InputLenLimit']
          @Pattern = params['Pattern']
          unless params['SingleWorkflow'].nil?
            @SingleWorkflow = KnowledgeQaSingleWorkflow.new
            @SingleWorkflow.deserialize(params['SingleWorkflow'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GroupDoc请求参数结构体
      class GroupDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param BizIds: 操作对象的业务ID列表
        # @type BizIds: Array
        # @param CateBizId: 分组 ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :BizIds, :CateBizId

        def initialize(botbizid=nil, bizids=nil, catebizid=nil)
          @BotBizId = botbizid
          @BizIds = bizids
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @BizIds = params['BizIds']
          @CateBizId = params['CateBizId']
        end
      end

      # GroupDoc返回参数结构体
      class GroupDocResponse < TencentCloud::Common::AbstractModel
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

      # GroupQA请求参数结构体
      class GroupQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param QaBizIds: QaBizID列表
        # @type QaBizIds: Array
        # @param CateBizId: 分组 ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :QaBizIds, :CateBizId

        def initialize(botbizid=nil, qabizids=nil, catebizid=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
          @CateBizId = params['CateBizId']
        end
      end

      # GroupQA返回参数结构体
      class GroupQAResponse < TencentCloud::Common::AbstractModel
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

      # 分片高亮内容
      class Highlight < TencentCloud::Common::AbstractModel
        # @param StartPos: 高亮起始位置

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartPos: String
        # @param EndPos: 高亮结束位置

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPos: String
        # @param Text: 高亮子文本

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :StartPos, :EndPos, :Text

        def initialize(startpos=nil, endpos=nil, text=nil)
          @StartPos = startpos
          @EndPos = endpos
          @Text = text
        end

        def deserialize(params)
          @StartPos = params['StartPos']
          @EndPos = params['EndPos']
          @Text = params['Text']
        end
      end

      # 多轮历史信息
      class HistorySummary < TencentCloud::Common::AbstractModel
        # @param Assistant: 助手
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Assistant: String
        # @param User: 用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String

        attr_accessor :Assistant, :User

        def initialize(assistant=nil, user=nil)
          @Assistant = assistant
          @User = user
        end

        def deserialize(params)
          @Assistant = params['Assistant']
          @User = params['User']
        end
      end

      # IgnoreUnsatisfiedReply请求参数结构体
      class IgnoreUnsatisfiedReplyRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param ReplyBizIds: 不满意回复ID
        # @type ReplyBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :ReplyBizIds, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, replybizids=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @ReplyBizIds = replybizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReplyBizIds = params['ReplyBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # IgnoreUnsatisfiedReply返回参数结构体
      class IgnoreUnsatisfiedReplyResponse < TencentCloud::Common::AbstractModel
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

      # 意图达成方式
      class IntentAchievement < TencentCloud::Common::AbstractModel
        # @param Name: 意图达成方式，qa:问答回复、doc：文档回复、workflow：工作流回复，llm：大模型回复
        # @type Name: String
        # @param Desc: 意图达成方式描述
        # @type Desc: String

        attr_accessor :Name, :Desc

        def initialize(name=nil, desc=nil)
          @Name = name
          @Desc = desc
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
        end
      end

      # 请求的API信息
      class InvokeAPI < TencentCloud::Common::AbstractModel
        # @param Method: 请求方法，如GET/POST等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param Url: 请求地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param HeaderValues: header参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderValues: Array
        # @param QueryValues: 入参Query
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryValues: Array
        # @param RequestPostBody: Post请求的原始数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestPostBody: String
        # @param ResponseBody: 返回的原始数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseBody: String
        # @param ResponseValues: 出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseValues: Array
        # @param FailMessage: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailMessage: String

        attr_accessor :Method, :Url, :HeaderValues, :QueryValues, :RequestPostBody, :ResponseBody, :ResponseValues, :FailMessage

        def initialize(method=nil, url=nil, headervalues=nil, queryvalues=nil, requestpostbody=nil, responsebody=nil, responsevalues=nil, failmessage=nil)
          @Method = method
          @Url = url
          @HeaderValues = headervalues
          @QueryValues = queryvalues
          @RequestPostBody = requestpostbody
          @ResponseBody = responsebody
          @ResponseValues = responsevalues
          @FailMessage = failmessage
        end

        def deserialize(params)
          @Method = params['Method']
          @Url = params['Url']
          unless params['HeaderValues'].nil?
            @HeaderValues = []
            params['HeaderValues'].each do |i|
              strvalue_tmp = StrValue.new
              strvalue_tmp.deserialize(i)
              @HeaderValues << strvalue_tmp
            end
          end
          unless params['QueryValues'].nil?
            @QueryValues = []
            params['QueryValues'].each do |i|
              strvalue_tmp = StrValue.new
              strvalue_tmp.deserialize(i)
              @QueryValues << strvalue_tmp
            end
          end
          @RequestPostBody = params['RequestPostBody']
          @ResponseBody = params['ResponseBody']
          unless params['ResponseValues'].nil?
            @ResponseValues = []
            params['ResponseValues'].each do |i|
              valueinfo_tmp = ValueInfo.new
              valueinfo_tmp.deserialize(i)
              @ResponseValues << valueinfo_tmp
            end
          end
          @FailMessage = params['FailMessage']
        end
      end

      # IsTransferIntent请求参数结构体
      class IsTransferIntentRequest < TencentCloud::Common::AbstractModel
        # @param Content: 内容
        # @type Content: String
        # @param BotAppKey: 应用appKey
        # @type BotAppKey: String

        attr_accessor :Content, :BotAppKey

        def initialize(content=nil, botappkey=nil)
          @Content = content
          @BotAppKey = botappkey
        end

        def deserialize(params)
          @Content = params['Content']
          @BotAppKey = params['BotAppKey']
        end
      end

      # IsTransferIntent返回参数结构体
      class IsTransferIntentResponse < TencentCloud::Common::AbstractModel
        # @param Hit: 是否意图转人工
        # @type Hit: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Hit, :RequestId

        def initialize(hit=nil, requestid=nil)
          @Hit = hit
          @RequestId = requestid
        end

        def deserialize(params)
          @Hit = params['Hit']
          @RequestId = params['RequestId']
        end
      end

      # 共享知识库基础信息
      class KnowledgeBaseInfo < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库业务ID
        # @type KnowledgeBizId: String
        # @param KnowledgeName: 共享知识库名称
        # @type KnowledgeName: String
        # @param KnowledgeDescription: 共享知识库描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KnowledgeDescription: String
        # @param EmbeddingModel: Embedding模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmbeddingModel: String
        # @param QaExtractModel: 问答提取模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaExtractModel: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :KnowledgeBizId, :KnowledgeName, :KnowledgeDescription, :EmbeddingModel, :QaExtractModel, :UpdateTime

        def initialize(knowledgebizid=nil, knowledgename=nil, knowledgedescription=nil, embeddingmodel=nil, qaextractmodel=nil, updatetime=nil)
          @KnowledgeBizId = knowledgebizid
          @KnowledgeName = knowledgename
          @KnowledgeDescription = knowledgedescription
          @EmbeddingModel = embeddingmodel
          @QaExtractModel = qaextractmodel
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
          @KnowledgeName = params['KnowledgeName']
          @KnowledgeDescription = params['KnowledgeDescription']
          @EmbeddingModel = params['EmbeddingModel']
          @QaExtractModel = params['QaExtractModel']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 知识库容量饼图详情
      class KnowledgeCapacityPieGraphDetail < TencentCloud::Common::AbstractModel
        # @param AppName: 当前应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param UsedCharSize: 当前应用使用的字符数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedCharSize: String
        # @param Proportion: 当前应用对于总用量的占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Proportion: Float
        # @param KnowledgeType: 知识库类型:0默认1共享
        # @type KnowledgeType: Integer

        attr_accessor :AppName, :UsedCharSize, :Proportion, :KnowledgeType

        def initialize(appname=nil, usedcharsize=nil, proportion=nil, knowledgetype=nil)
          @AppName = appname
          @UsedCharSize = usedcharsize
          @Proportion = proportion
          @KnowledgeType = knowledgetype
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UsedCharSize = params['UsedCharSize']
          @Proportion = params['Proportion']
          @KnowledgeType = params['KnowledgeType']
        end
      end

      # 应用使用知识库容量详情
      class KnowledgeDetail < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param UsedCharSize: 已用字符数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedCharSize: String
        # @param Proportion: 使用占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Proportion: Float
        # @param ExceedCharSize: 超量字符数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceedCharSize: String
        # @param IsSharedKnowledge: 废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSharedKnowledge: Boolean
        # @param KnowledgeType: 知识库类型:0默认1共享
        # @type KnowledgeType: Integer

        attr_accessor :AppName, :UsedCharSize, :Proportion, :ExceedCharSize, :IsSharedKnowledge, :KnowledgeType

        def initialize(appname=nil, usedcharsize=nil, proportion=nil, exceedcharsize=nil, issharedknowledge=nil, knowledgetype=nil)
          @AppName = appname
          @UsedCharSize = usedcharsize
          @Proportion = proportion
          @ExceedCharSize = exceedcharsize
          @IsSharedKnowledge = issharedknowledge
          @KnowledgeType = knowledgetype
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UsedCharSize = params['UsedCharSize']
          @Proportion = params['Proportion']
          @ExceedCharSize = params['ExceedCharSize']
          @IsSharedKnowledge = params['IsSharedKnowledge']
          @KnowledgeType = params['KnowledgeType']
        end
      end

      # 知识库详情信息
      class KnowledgeDetailInfo < TencentCloud::Common::AbstractModel
        # @param Knowledge: 知识库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Knowledge: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeBaseInfo`
        # @param AppList: 应用列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppList: Array
        # @param User: 用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: :class:`Tencentcloud::Lke.v20231130.models.UserBaseInfo`

        attr_accessor :Knowledge, :AppList, :User

        def initialize(knowledge=nil, applist=nil, user=nil)
          @Knowledge = knowledge
          @AppList = applist
          @User = user
        end

        def deserialize(params)
          unless params['Knowledge'].nil?
            @Knowledge = KnowledgeBaseInfo.new
            @Knowledge.deserialize(params['Knowledge'])
          end
          unless params['AppList'].nil?
            @AppList = []
            params['AppList'].each do |i|
              appbaseinfo_tmp = AppBaseInfo.new
              appbaseinfo_tmp.deserialize(i)
              @AppList << appbaseinfo_tmp
            end
          end
          unless params['User'].nil?
            @User = UserBaseInfo.new
            @User.deserialize(params['User'])
          end
        end
      end

      # 知识问答配置
      class KnowledgeQaConfig < TencentCloud::Common::AbstractModel
        # @param Greeting: 欢迎语，200字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Greeting: String
        # @param RoleDescription: 角色描述，4000字符以内。通过填写描述，设定应用的 #角色名称、 #风格特点 及可达成的#意图。建议按照下面的模板填写，且自定义意图建议不超过5个。

        # #角色名称：
        # #风格特点：
        # #输出要求：
        # #能力限制：

        # 能够达成以下用户意图
        # ##意图名称：
        # ##意图描述：
        # ##意图示例：
        # ##意图实现：

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleDescription: String
        # @param Model: 生成模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AppModel`
        # @param Search: 知识搜索配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Search: Array
        # @param Output: 知识管理输出配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeQaOutput`
        # @param Workflow: 工作流程配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Workflow: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeWorkflow`
        # @param SearchRange: 检索范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchRange: :class:`Tencentcloud::Lke.v20231130.models.SearchRange`
        # @param Pattern: 应用模式，standard:标准模式, agent: agent模式，single_workflow：单工作流模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pattern: String
        # @param SearchStrategy: 检索策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchStrategy: :class:`Tencentcloud::Lke.v20231130.models.SearchStrategy`
        # @param SingleWorkflow: 单工作流ID，Pattern为single_workflow时传入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SingleWorkflow: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeQaSingleWorkflow`
        # @param Plugins: 应用关联插件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plugins: Array
        # @param ThoughtModel: 思考模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThoughtModel: :class:`Tencentcloud::Lke.v20231130.models.AppModel`
        # @param IntentAchievements: 意图达成方式优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentAchievements: Array
        # @param ImageTextRetrieval: 是否开启图文检索
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTextRetrieval: Boolean
        # @param AiCall: 配置语音通话参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiCall: :class:`Tencentcloud::Lke.v20231130.models.AICallConfig`
        # @param ShareKnowledgeBases: 共享知识库关联配置
        # @type ShareKnowledgeBases: Array
        # @param BackgroundImage: 背景图相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackgroundImage: :class:`Tencentcloud::Lke.v20231130.models.BackgroundImageConfig`
        # @param OpeningQuestions: 开场问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpeningQuestions: Array

        attr_accessor :Greeting, :RoleDescription, :Model, :Search, :Output, :Workflow, :SearchRange, :Pattern, :SearchStrategy, :SingleWorkflow, :Plugins, :ThoughtModel, :IntentAchievements, :ImageTextRetrieval, :AiCall, :ShareKnowledgeBases, :BackgroundImage, :OpeningQuestions

        def initialize(greeting=nil, roledescription=nil, model=nil, search=nil, output=nil, workflow=nil, searchrange=nil, pattern=nil, searchstrategy=nil, singleworkflow=nil, plugins=nil, thoughtmodel=nil, intentachievements=nil, imagetextretrieval=nil, aicall=nil, shareknowledgebases=nil, backgroundimage=nil, openingquestions=nil)
          @Greeting = greeting
          @RoleDescription = roledescription
          @Model = model
          @Search = search
          @Output = output
          @Workflow = workflow
          @SearchRange = searchrange
          @Pattern = pattern
          @SearchStrategy = searchstrategy
          @SingleWorkflow = singleworkflow
          @Plugins = plugins
          @ThoughtModel = thoughtmodel
          @IntentAchievements = intentachievements
          @ImageTextRetrieval = imagetextretrieval
          @AiCall = aicall
          @ShareKnowledgeBases = shareknowledgebases
          @BackgroundImage = backgroundimage
          @OpeningQuestions = openingquestions
        end

        def deserialize(params)
          @Greeting = params['Greeting']
          @RoleDescription = params['RoleDescription']
          unless params['Model'].nil?
            @Model = AppModel.new
            @Model.deserialize(params['Model'])
          end
          unless params['Search'].nil?
            @Search = []
            params['Search'].each do |i|
              knowledgeqasearch_tmp = KnowledgeQaSearch.new
              knowledgeqasearch_tmp.deserialize(i)
              @Search << knowledgeqasearch_tmp
            end
          end
          unless params['Output'].nil?
            @Output = KnowledgeQaOutput.new
            @Output.deserialize(params['Output'])
          end
          unless params['Workflow'].nil?
            @Workflow = KnowledgeWorkflow.new
            @Workflow.deserialize(params['Workflow'])
          end
          unless params['SearchRange'].nil?
            @SearchRange = SearchRange.new
            @SearchRange.deserialize(params['SearchRange'])
          end
          @Pattern = params['Pattern']
          unless params['SearchStrategy'].nil?
            @SearchStrategy = SearchStrategy.new
            @SearchStrategy.deserialize(params['SearchStrategy'])
          end
          unless params['SingleWorkflow'].nil?
            @SingleWorkflow = KnowledgeQaSingleWorkflow.new
            @SingleWorkflow.deserialize(params['SingleWorkflow'])
          end
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              knowledgeqaplugin_tmp = KnowledgeQaPlugin.new
              knowledgeqaplugin_tmp.deserialize(i)
              @Plugins << knowledgeqaplugin_tmp
            end
          end
          unless params['ThoughtModel'].nil?
            @ThoughtModel = AppModel.new
            @ThoughtModel.deserialize(params['ThoughtModel'])
          end
          unless params['IntentAchievements'].nil?
            @IntentAchievements = []
            params['IntentAchievements'].each do |i|
              intentachievement_tmp = IntentAchievement.new
              intentachievement_tmp.deserialize(i)
              @IntentAchievements << intentachievement_tmp
            end
          end
          @ImageTextRetrieval = params['ImageTextRetrieval']
          unless params['AiCall'].nil?
            @AiCall = AICallConfig.new
            @AiCall.deserialize(params['AiCall'])
          end
          unless params['ShareKnowledgeBases'].nil?
            @ShareKnowledgeBases = []
            params['ShareKnowledgeBases'].each do |i|
              shareknowledgebase_tmp = ShareKnowledgeBase.new
              shareknowledgebase_tmp.deserialize(i)
              @ShareKnowledgeBases << shareknowledgebase_tmp
            end
          end
          unless params['BackgroundImage'].nil?
            @BackgroundImage = BackgroundImageConfig.new
            @BackgroundImage.deserialize(params['BackgroundImage'])
          end
          @OpeningQuestions = params['OpeningQuestions']
        end
      end

      # 应用管理输出配置
      class KnowledgeQaOutput < TencentCloud::Common::AbstractModel
        # @param Method: 输出方式 1：流式 2：非流式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: Integer
        # @param UseGeneralKnowledge: 通用模型回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseGeneralKnowledge: Boolean
        # @param BareAnswer: 未知回复语，300字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BareAnswer: String
        # @param ShowQuestionClarify: 是否展示问题澄清开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowQuestionClarify: Boolean
        # @param UseQuestionClarify: 是否打开问题澄清
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseQuestionClarify: Boolean
        # @param QuestionClarifyKeywords: 问题澄清关键词列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuestionClarifyKeywords: Array
        # @param UseRecommended: 是否打开推荐问题开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseRecommended: Boolean

        attr_accessor :Method, :UseGeneralKnowledge, :BareAnswer, :ShowQuestionClarify, :UseQuestionClarify, :QuestionClarifyKeywords, :UseRecommended

        def initialize(method=nil, usegeneralknowledge=nil, bareanswer=nil, showquestionclarify=nil, usequestionclarify=nil, questionclarifykeywords=nil, userecommended=nil)
          @Method = method
          @UseGeneralKnowledge = usegeneralknowledge
          @BareAnswer = bareanswer
          @ShowQuestionClarify = showquestionclarify
          @UseQuestionClarify = usequestionclarify
          @QuestionClarifyKeywords = questionclarifykeywords
          @UseRecommended = userecommended
        end

        def deserialize(params)
          @Method = params['Method']
          @UseGeneralKnowledge = params['UseGeneralKnowledge']
          @BareAnswer = params['BareAnswer']
          @ShowQuestionClarify = params['ShowQuestionClarify']
          @UseQuestionClarify = params['UseQuestionClarify']
          @QuestionClarifyKeywords = params['QuestionClarifyKeywords']
          @UseRecommended = params['UseRecommended']
        end
      end

      # 应用关联插件信息
      class KnowledgeQaPlugin < TencentCloud::Common::AbstractModel
        # @param PluginId: 插件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginId: String
        # @param PluginName: 插件名称
        # @type PluginName: String
        # @param PluginIcon: 插件图标
        # @type PluginIcon: String
        # @param ToolId: 工具ID
        # @type ToolId: String
        # @param ToolName: 工具名称
        # @type ToolName: String
        # @param ToolDesc: 工具描述
        # @type ToolDesc: String
        # @param Inputs: 工具输入参数
        # @type Inputs: Array
        # @param IsBindingKnowledge: 插件是否和知识库绑定
        # @type IsBindingKnowledge: Boolean

        attr_accessor :PluginId, :PluginName, :PluginIcon, :ToolId, :ToolName, :ToolDesc, :Inputs, :IsBindingKnowledge

        def initialize(pluginid=nil, pluginname=nil, pluginicon=nil, toolid=nil, toolname=nil, tooldesc=nil, inputs=nil, isbindingknowledge=nil)
          @PluginId = pluginid
          @PluginName = pluginname
          @PluginIcon = pluginicon
          @ToolId = toolid
          @ToolName = toolname
          @ToolDesc = tooldesc
          @Inputs = inputs
          @IsBindingKnowledge = isbindingknowledge
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @PluginName = params['PluginName']
          @PluginIcon = params['PluginIcon']
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @ToolDesc = params['ToolDesc']
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              plugintoolreqparam_tmp = PluginToolReqParam.new
              plugintoolreqparam_tmp.deserialize(i)
              @Inputs << plugintoolreqparam_tmp
            end
          end
          @IsBindingKnowledge = params['IsBindingKnowledge']
        end
      end

      # 检索配置
      class KnowledgeQaSearch < TencentCloud::Common::AbstractModel
        # @param Type: 知识来源 doc：文档，qa：问答  taskflow：业务流程，search：搜索增强，database:数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ReplyFlexibility: 问答-回复灵活度 1：已采纳答案直接回复 2：已采纳润色后回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplyFlexibility: Integer
        # @param UseSearchEngine: 搜索增强-搜索引擎状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseSearchEngine: Boolean
        # @param ShowSearchEngine: 是否显示搜索引擎检索状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowSearchEngine: Boolean
        # @param IsEnabled: 知识来源，是否选择
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEnabled: Boolean
        # @param QaTopN: 问答最大召回数量, 默认2，限制5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaTopN: Integer
        # @param DocTopN: 文档最大召回数量, 默认3，限制5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocTopN: Integer
        # @param Confidence: 检索置信度，针对文档和问答有效，最小0.01，最大0.99
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param ResourceStatus: 资源状态 1：资源可用；2：资源已用尽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceStatus: Integer

        attr_accessor :Type, :ReplyFlexibility, :UseSearchEngine, :ShowSearchEngine, :IsEnabled, :QaTopN, :DocTopN, :Confidence, :ResourceStatus

        def initialize(type=nil, replyflexibility=nil, usesearchengine=nil, showsearchengine=nil, isenabled=nil, qatopn=nil, doctopn=nil, confidence=nil, resourcestatus=nil)
          @Type = type
          @ReplyFlexibility = replyflexibility
          @UseSearchEngine = usesearchengine
          @ShowSearchEngine = showsearchengine
          @IsEnabled = isenabled
          @QaTopN = qatopn
          @DocTopN = doctopn
          @Confidence = confidence
          @ResourceStatus = resourcestatus
        end

        def deserialize(params)
          @Type = params['Type']
          @ReplyFlexibility = params['ReplyFlexibility']
          @UseSearchEngine = params['UseSearchEngine']
          @ShowSearchEngine = params['ShowSearchEngine']
          @IsEnabled = params['IsEnabled']
          @QaTopN = params['QaTopN']
          @DocTopN = params['DocTopN']
          @Confidence = params['Confidence']
          @ResourceStatus = params['ResourceStatus']
        end
      end

      # 问答知识库单工作流模式下指定单工作流配置
      class KnowledgeQaSingleWorkflow < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param WorkflowDesc: 工作流描述
        # @type WorkflowDesc: String
        # @param Status: 工作流状态，发布状态(UNPUBLISHED: 待发布 PUBLISHING: 发布中 PUBLISHED: 已发布 FAIL:发布失败)
        # @type Status: String
        # @param IsEnable: 工作流是否启用
        # @type IsEnable: Boolean
        # @param AsyncWorkflow: 是否开启异步调用工作流
        # @type AsyncWorkflow: Boolean

        attr_accessor :WorkflowId, :WorkflowName, :WorkflowDesc, :Status, :IsEnable, :AsyncWorkflow

        def initialize(workflowid=nil, workflowname=nil, workflowdesc=nil, status=nil, isenable=nil, asyncworkflow=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @WorkflowDesc = workflowdesc
          @Status = status
          @IsEnable = isenable
          @AsyncWorkflow = asyncworkflow
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @WorkflowDesc = params['WorkflowDesc']
          @Status = params['Status']
          @IsEnable = params['IsEnable']
          @AsyncWorkflow = params['AsyncWorkflow']
        end
      end

      # 检索知识
      class KnowledgeSummary < TencentCloud::Common::AbstractModel
        # @param Type: 1是问答 2是文档片段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Content: 知识内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Type, :Content

        def initialize(type=nil, content=nil)
          @Type = type
          @Content = content
        end

        def deserialize(params)
          @Type = params['Type']
          @Content = params['Content']
        end
      end

      # 共享知识库更新信息
      class KnowledgeUpdateInfo < TencentCloud::Common::AbstractModel
        # @param KnowledgeName: 共享知识库名称
        # @type KnowledgeName: String
        # @param KnowledgeDescription: 共享知识库描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KnowledgeDescription: String
        # @param EmbeddingModel: Embedding模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmbeddingModel: String
        # @param QaExtractModel: 问答提取模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaExtractModel: String

        attr_accessor :KnowledgeName, :KnowledgeDescription, :EmbeddingModel, :QaExtractModel

        def initialize(knowledgename=nil, knowledgedescription=nil, embeddingmodel=nil, qaextractmodel=nil)
          @KnowledgeName = knowledgename
          @KnowledgeDescription = knowledgedescription
          @EmbeddingModel = embeddingmodel
          @QaExtractModel = qaextractmodel
        end

        def deserialize(params)
          @KnowledgeName = params['KnowledgeName']
          @KnowledgeDescription = params['KnowledgeDescription']
          @EmbeddingModel = params['EmbeddingModel']
          @QaExtractModel = params['QaExtractModel']
        end
      end

      # 问答知识库工作流配置
      class KnowledgeWorkflow < TencentCloud::Common::AbstractModel
        # @param IsEnabled: 是否启用工作流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEnabled: Boolean
        # @param UsePdl: 是否启用PDL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsePdl: Boolean

        attr_accessor :IsEnabled, :UsePdl

        def initialize(isenabled=nil, usepdl=nil)
          @IsEnabled = isenabled
          @UsePdl = usepdl
        end

        def deserialize(params)
          @IsEnabled = params['IsEnabled']
          @UsePdl = params['UsePdl']
        end
      end

      # 标签ID
      class Label < TencentCloud::Common::AbstractModel
        # @param LabelBizId: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelBizId: String
        # @param LabelName: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelName: String

        attr_accessor :LabelBizId, :LabelName

        def initialize(labelbizid=nil, labelname=nil)
          @LabelBizId = labelbizid
          @LabelName = labelname
        end

        def deserialize(params)
          @LabelBizId = params['LabelBizId']
          @LabelName = params['LabelName']
        end
      end

      # ListAppCategory请求参数结构体
      class ListAppCategoryRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListAppCategory返回参数结构体
      class ListAppCategoryResponse < TencentCloud::Common::AbstractModel
        # @param List: 应用类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listappcategoryrspoption_tmp = ListAppCategoryRspOption.new
              listappcategoryrspoption_tmp.deserialize(i)
              @List << listappcategoryrspoption_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 应用类型详情
      class ListAppCategoryRspOption < TencentCloud::Common::AbstractModel
        # @param Text: 类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 类型值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Logo: 类型log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: String

        attr_accessor :Text, :Value, :Logo

        def initialize(text=nil, value=nil, logo=nil)
          @Text = text
          @Value = value
          @Logo = logo
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
          @Logo = params['Logo']
        end
      end

      # ListAppKnowledgeDetail请求参数结构体
      class ListAppKnowledgeDetailRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页面大小
        # @type PageSize: Integer
        # @param AppBizIds: 应用ID列表
        # @type AppBizIds: Array

        attr_accessor :PageNumber, :PageSize, :AppBizIds

        def initialize(pagenumber=nil, pagesize=nil, appbizids=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @AppBizIds = appbizids
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @AppBizIds = params['AppBizIds']
        end
      end

      # ListAppKnowledgeDetail返回参数结构体
      class ListAppKnowledgeDetailResponse < TencentCloud::Common::AbstractModel
        # @param Total: 列表总数
        # @type Total: Integer
        # @param List: 应用使用知识库容量详情
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              knowledgedetail_tmp = KnowledgeDetail.new
              knowledgedetail_tmp.deserialize(i)
              @List << knowledgedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListApp请求参数结构体
      class ListAppRequest < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型；knowledge_qa - 知识问答管理
        # @type AppType: String
        # @param PageSize: 每页数目，整型
        # @type PageSize: Integer
        # @param PageNumber: 页码，整型
        # @type PageNumber: Integer
        # @param Keyword: 关键词：应用/修改人
        # @type Keyword: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :AppType, :PageSize, :PageNumber, :Keyword, :LoginSubAccountUin

        def initialize(apptype=nil, pagesize=nil, pagenumber=nil, keyword=nil, loginsubaccountuin=nil)
          @AppType = apptype
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Keyword = keyword
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @AppType = params['AppType']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Keyword = params['Keyword']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ListApp返回参数结构体
      class ListAppResponse < TencentCloud::Common::AbstractModel
        # @param Total: 数量
        # @type Total: String
        # @param List: 标签列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              appinfo_tmp = AppInfo.new
              appinfo_tmp.deserialize(i)
              @List << appinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAttributeLabel请求参数结构体
      class ListAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Query: 查询内容
        # @type Query: String
        # @param LabelSize: 每个属性同步拉取的标签值数量
        # @type LabelSize: Integer

        attr_accessor :BotBizId, :PageNumber, :PageSize, :LoginUin, :LoginSubAccountUin, :Query, :LabelSize

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, loginuin=nil, loginsubaccountuin=nil, query=nil, labelsize=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Query = query
          @LabelSize = labelsize
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @Query = params['Query']
          @LabelSize = params['LabelSize']
        end
      end

      # ListAttributeLabel返回参数结构体
      class ListAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: String
        # @param List: 列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              attrlabeldetail_tmp = AttrLabelDetail.new
              attrlabeldetail_tmp.deserialize(i)
              @List << attrlabeldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDocCate请求参数结构体
      class ListDocCateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String

        attr_accessor :BotBizId

        def initialize(botbizid=nil)
          @BotBizId = botbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
        end
      end

      # ListDocCate返回参数结构体
      class ListDocCateResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              cateinfo_tmp = CateInfo.new
              cateinfo_tmp.deserialize(i)
              @List << cateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文档列表详情描述
      class ListDocItem < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocBizId: String
        # @param FileName: 文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param NewName: 重命名的新文档名称，在重命名提交之后，文档发布之前都是这个名称
        # @type NewName: String
        # @param FileType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param CosUrl: cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosUrl: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Status: 文档状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 文档状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param Reason: 原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param IsRefer: 答案中是否引用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRefer: Boolean
        # @param QaNum: 问答对数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaNum: Integer
        # @param IsDeleted: 是否已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDeleted: Boolean
        # @param Source: 文档来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param SourceDesc: 文档来源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceDesc: String
        # @param IsAllowRestart: 是否允许重新生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowRestart: Boolean
        # @param IsDeletedQa: qa是否已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDeletedQa: Boolean
        # @param IsCreatingQa: 问答是否生成中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCreatingQa: Boolean
        # @param IsAllowDelete: 是否允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowDelete: Boolean
        # @param IsAllowRefer: 是否允许操作引用开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowRefer: Boolean
        # @param IsCreatedQa: 问答是否生成过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCreatedQa: Boolean
        # @param DocCharSize: 文档字符量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocCharSize: String
        # @param AttrRange: 属性标签适用范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrLabels: Array
        # @param IsAllowEdit: 是否允许编辑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowEdit: Boolean
        # @param ReferUrlType: 外部引用链接类型 0：系统链接 1：自定义链接
        # 值为1时，WebUrl 字段不能为空，否则不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReferUrlType: Integer
        # @param WebUrl: 网页(或自定义链接)地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebUrl: String
        # @param ExpireStart: 有效开始时间，unix时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireEnd: String
        # @param IsAllowRetry: 是否允许重试，0：否，1：是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowRetry: Boolean
        # @param Processing: 0:文档比对处理 1:文档生成问答
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Processing: Array
        # @param CreateTime: 文档创建落库时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param CateBizId: 文档所属分类ID
        # @type CateBizId: String
        # @param CustomerKnowledgeId: 文档的用户自定义ID
        # @type CustomerKnowledgeId: String
        # @param AttributeFlags: 文档的属性标记，0: 不做用户外部权限校验
        # @type AttributeFlags: Array
        # @param IsDisabled: false:未停用，ture:已停用
        # @type IsDisabled: Boolean
        # @param StaffName: 员工名称
        # @type StaffName: String

        attr_accessor :DocBizId, :FileName, :NewName, :FileType, :CosUrl, :UpdateTime, :Status, :StatusDesc, :Reason, :IsRefer, :QaNum, :IsDeleted, :Source, :SourceDesc, :IsAllowRestart, :IsDeletedQa, :IsCreatingQa, :IsAllowDelete, :IsAllowRefer, :IsCreatedQa, :DocCharSize, :AttrRange, :AttrLabels, :IsAllowEdit, :ReferUrlType, :WebUrl, :ExpireStart, :ExpireEnd, :IsAllowRetry, :Processing, :CreateTime, :CateBizId, :CustomerKnowledgeId, :AttributeFlags, :IsDisabled, :StaffName

        def initialize(docbizid=nil, filename=nil, newname=nil, filetype=nil, cosurl=nil, updatetime=nil, status=nil, statusdesc=nil, reason=nil, isrefer=nil, qanum=nil, isdeleted=nil, source=nil, sourcedesc=nil, isallowrestart=nil, isdeletedqa=nil, iscreatingqa=nil, isallowdelete=nil, isallowrefer=nil, iscreatedqa=nil, doccharsize=nil, attrrange=nil, attrlabels=nil, isallowedit=nil, referurltype=nil, weburl=nil, expirestart=nil, expireend=nil, isallowretry=nil, processing=nil, createtime=nil, catebizid=nil, customerknowledgeid=nil, attributeflags=nil, isdisabled=nil, staffname=nil)
          @DocBizId = docbizid
          @FileName = filename
          @NewName = newname
          @FileType = filetype
          @CosUrl = cosurl
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @Reason = reason
          @IsRefer = isrefer
          @QaNum = qanum
          @IsDeleted = isdeleted
          @Source = source
          @SourceDesc = sourcedesc
          @IsAllowRestart = isallowrestart
          @IsDeletedQa = isdeletedqa
          @IsCreatingQa = iscreatingqa
          @IsAllowDelete = isallowdelete
          @IsAllowRefer = isallowrefer
          @IsCreatedQa = iscreatedqa
          @DocCharSize = doccharsize
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @IsAllowEdit = isallowedit
          @ReferUrlType = referurltype
          @WebUrl = weburl
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @IsAllowRetry = isallowretry
          @Processing = processing
          @CreateTime = createtime
          @CateBizId = catebizid
          @CustomerKnowledgeId = customerknowledgeid
          @AttributeFlags = attributeflags
          @IsDisabled = isdisabled
          @StaffName = staffname
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @FileName = params['FileName']
          @NewName = params['NewName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Reason = params['Reason']
          @IsRefer = params['IsRefer']
          @QaNum = params['QaNum']
          @IsDeleted = params['IsDeleted']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @IsAllowRestart = params['IsAllowRestart']
          @IsDeletedQa = params['IsDeletedQa']
          @IsCreatingQa = params['IsCreatingQa']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowRefer = params['IsAllowRefer']
          @IsCreatedQa = params['IsCreatedQa']
          @DocCharSize = params['DocCharSize']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabel_tmp = AttrLabel.new
              attrlabel_tmp.deserialize(i)
              @AttrLabels << attrlabel_tmp
            end
          end
          @IsAllowEdit = params['IsAllowEdit']
          @ReferUrlType = params['ReferUrlType']
          @WebUrl = params['WebUrl']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          @IsAllowRetry = params['IsAllowRetry']
          @Processing = params['Processing']
          @CreateTime = params['CreateTime']
          @CateBizId = params['CateBizId']
          @CustomerKnowledgeId = params['CustomerKnowledgeId']
          @AttributeFlags = params['AttributeFlags']
          @IsDisabled = params['IsDisabled']
          @StaffName = params['StaffName']
        end
      end

      # ListDoc请求参数结构体
      class ListDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容

        # 输入特定标识 lke:system:untagged  将查询所有未关联标签的文档
        # @type Query: String
        # @param Status: 文档状态： 1-未生成 2-生成中 3-生成成功 4-生成失败 5-删除中 6-删除成功  7-审核中  8-审核失败 9-审核成功  10-待发布  11-发布中  12-已发布  13-学习中  14-学习失败  15-更新中  16-更新失败  17-解析中  18-解析失败  19-导入失败   20-已过期 21-超量失效 22-超量失效恢复
        # @type Status: Array
        # @param QueryType: 查询类型 filename 文档、 attribute 标签
        # @type QueryType: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param FileTypes: 文件类型分类筛选
        # @type FileTypes: Array
        # @param FilterFlag: 文档列表筛选标识位
        # @type FilterFlag: Array
        # @param ShowCurrCate: 是否只展示当前分类的数据 0不是，1是
        # @type ShowCurrCate: Integer

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :Status, :QueryType, :CateBizId, :FileTypes, :FilterFlag, :ShowCurrCate

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, status=nil, querytype=nil, catebizid=nil, filetypes=nil, filterflag=nil, showcurrcate=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @Status = status
          @QueryType = querytype
          @CateBizId = catebizid
          @FileTypes = filetypes
          @FilterFlag = filterflag
          @ShowCurrCate = showcurrcate
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @Status = params['Status']
          @QueryType = params['QueryType']
          @CateBizId = params['CateBizId']
          @FileTypes = params['FileTypes']
          unless params['FilterFlag'].nil?
            @FilterFlag = []
            params['FilterFlag'].each do |i|
              docfilterflag_tmp = DocFilterFlag.new
              docfilterflag_tmp.deserialize(i)
              @FilterFlag << docfilterflag_tmp
            end
          end
          @ShowCurrCate = params['ShowCurrCate']
        end
      end

      # ListDoc返回参数结构体
      class ListDocResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              listdocitem_tmp = ListDocItem.new
              listdocitem_tmp.deserialize(i)
              @List << listdocitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListModel请求参数结构体
      class ListModelRequest < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param Pattern: 应用模式 standard:标准模式, agent: agent模式，single_workflow：单工作流模式
        # @type Pattern: String
        # @param ModelCategory: 模型类别 generate：生成模型，thought：思考模型
        # @type ModelCategory: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :AppType, :Pattern, :ModelCategory, :LoginUin, :LoginSubAccountUin

        def initialize(apptype=nil, pattern=nil, modelcategory=nil, loginuin=nil, loginsubaccountuin=nil)
          @AppType = apptype
          @Pattern = pattern
          @ModelCategory = modelcategory
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @AppType = params['AppType']
          @Pattern = params['Pattern']
          @ModelCategory = params['ModelCategory']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ListModel返回参数结构体
      class ListModelResponse < TencentCloud::Common::AbstractModel
        # @param List: 模型列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              modelinfo_tmp = ModelInfo.new
              modelinfo_tmp.deserialize(i)
              @List << modelinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQACate请求参数结构体
      class ListQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String

        attr_accessor :BotBizId

        def initialize(botbizid=nil)
          @BotBizId = botbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
        end
      end

      # ListQACate返回参数结构体
      class ListQACateResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              qacate_tmp = QACate.new
              qacate_tmp.deserialize(i)
              @List << qacate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQA请求参数结构体
      class ListQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param Query: 查询问题

        # 输入特定标识 lke:system:untagged  将查询所有未关联标签的问答
        # @type Query: String
        # @param AcceptStatus: 校验状态(1未校验2采纳3不采纳)
        # @type AcceptStatus: Array
        # @param ReleaseStatus: 发布状态(2待发布 3发布中 4已发布 7审核中 8审核失败 9人工申述中 11人工申述失败 12已过期 13超量失效 14超量失效恢复)
        # @type ReleaseStatus: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param Source: 来源(1 文档生成 2 批量导入 3 手动添加)
        # @type Source: Integer
        # @param QueryAnswer: 查询答案
        # @type QueryAnswer: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param QaBizIds: QA业务ID列表
        # @type QaBizIds: Array
        # @param QueryType: 查询类型 filename 名称、 attribute 标签
        # @type QueryType: String
        # @param ShowCurrCate: 是否只展示当前分类的数据 0不是，1是
        # @type ShowCurrCate: Integer

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :AcceptStatus, :ReleaseStatus, :DocBizId, :Source, :QueryAnswer, :CateBizId, :QaBizIds, :QueryType, :ShowCurrCate

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, acceptstatus=nil, releasestatus=nil, docbizid=nil, source=nil, queryanswer=nil, catebizid=nil, qabizids=nil, querytype=nil, showcurrcate=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @AcceptStatus = acceptstatus
          @ReleaseStatus = releasestatus
          @DocBizId = docbizid
          @Source = source
          @QueryAnswer = queryanswer
          @CateBizId = catebizid
          @QaBizIds = qabizids
          @QueryType = querytype
          @ShowCurrCate = showcurrcate
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @AcceptStatus = params['AcceptStatus']
          @ReleaseStatus = params['ReleaseStatus']
          @DocBizId = params['DocBizId']
          @Source = params['Source']
          @QueryAnswer = params['QueryAnswer']
          @CateBizId = params['CateBizId']
          @QaBizIds = params['QaBizIds']
          @QueryType = params['QueryType']
          @ShowCurrCate = params['ShowCurrCate']
        end
      end

      # ListQA返回参数结构体
      class ListQAResponse < TencentCloud::Common::AbstractModel
        # @param Total: 问答数量
        # @type Total: String
        # @param WaitVerifyTotal: 待校验问答数量
        # @type WaitVerifyTotal: String
        # @param NotAcceptedTotal: 未采纳问答数量
        # @type NotAcceptedTotal: String
        # @param AcceptedTotal: 已采纳问答数量
        # @type AcceptedTotal: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param List: 问答详情
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :WaitVerifyTotal, :NotAcceptedTotal, :AcceptedTotal, :PageNumber, :List, :RequestId

        def initialize(total=nil, waitverifytotal=nil, notacceptedtotal=nil, acceptedtotal=nil, pagenumber=nil, list=nil, requestid=nil)
          @Total = total
          @WaitVerifyTotal = waitverifytotal
          @NotAcceptedTotal = notacceptedtotal
          @AcceptedTotal = acceptedtotal
          @PageNumber = pagenumber
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @WaitVerifyTotal = params['WaitVerifyTotal']
          @NotAcceptedTotal = params['NotAcceptedTotal']
          @AcceptedTotal = params['AcceptedTotal']
          @PageNumber = params['PageNumber']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listqaitem_tmp = ListQaItem.new
              listqaitem_tmp.deserialize(i)
              @List << listqaitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 问答详情数据
      class ListQaItem < TencentCloud::Common::AbstractModel
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param Source: 来源
        # @type Source: Integer
        # @param SourceDesc: 来源描述
        # @type SourceDesc: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsAllowEdit: 是否允许编辑
        # @type IsAllowEdit: Boolean
        # @param IsAllowDelete: 是否允许删除
        # @type IsAllowDelete: Boolean
        # @param IsAllowAccept: 是否允许校验
        # @type IsAllowAccept: Boolean
        # @param FileName: 文档名称
        # @type FileName: String
        # @param FileType: 文档类型
        # @type FileType: String
        # @param QaCharSize: 问答字符数
        # @type QaCharSize: String
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签
        # @type AttrLabels: Array
        # @param SimilarQuestionNum: 相似问个数
        # @type SimilarQuestionNum: Integer
        # @param SimilarQuestionTips: 返回问答关联的相似问,联动搜索,仅展示一条
        # @type SimilarQuestionTips: String
        # @param IsDisabled: 问答是否停用，false:未停用，ture:已停用
        # @type IsDisabled: Boolean
        # @param StaffName: 员工名称
        # @type StaffName: String

        attr_accessor :QaBizId, :Question, :Answer, :Source, :SourceDesc, :UpdateTime, :Status, :StatusDesc, :DocBizId, :CreateTime, :IsAllowEdit, :IsAllowDelete, :IsAllowAccept, :FileName, :FileType, :QaCharSize, :ExpireStart, :ExpireEnd, :AttrRange, :AttrLabels, :SimilarQuestionNum, :SimilarQuestionTips, :IsDisabled, :StaffName

        def initialize(qabizid=nil, question=nil, answer=nil, source=nil, sourcedesc=nil, updatetime=nil, status=nil, statusdesc=nil, docbizid=nil, createtime=nil, isallowedit=nil, isallowdelete=nil, isallowaccept=nil, filename=nil, filetype=nil, qacharsize=nil, expirestart=nil, expireend=nil, attrrange=nil, attrlabels=nil, similarquestionnum=nil, similarquestiontips=nil, isdisabled=nil, staffname=nil)
          @QaBizId = qabizid
          @Question = question
          @Answer = answer
          @Source = source
          @SourceDesc = sourcedesc
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @DocBizId = docbizid
          @CreateTime = createtime
          @IsAllowEdit = isallowedit
          @IsAllowDelete = isallowdelete
          @IsAllowAccept = isallowaccept
          @FileName = filename
          @FileType = filetype
          @QaCharSize = qacharsize
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @SimilarQuestionNum = similarquestionnum
          @SimilarQuestionTips = similarquestiontips
          @IsDisabled = isdisabled
          @StaffName = staffname
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DocBizId = params['DocBizId']
          @CreateTime = params['CreateTime']
          @IsAllowEdit = params['IsAllowEdit']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowAccept = params['IsAllowAccept']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @QaCharSize = params['QaCharSize']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabel_tmp = AttrLabel.new
              attrlabel_tmp.deserialize(i)
              @AttrLabels << attrlabel_tmp
            end
          end
          @SimilarQuestionNum = params['SimilarQuestionNum']
          @SimilarQuestionTips = params['SimilarQuestionTips']
          @IsDisabled = params['IsDisabled']
          @StaffName = params['StaffName']
        end
      end

      # ListReferShareKnowledge请求参数结构体
      class ListReferShareKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用业务id
        # @type AppBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :AppBizId, :LoginUin, :LoginSubAccountUin

        def initialize(appbizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @AppBizId = appbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ListReferShareKnowledge返回参数结构体
      class ListReferShareKnowledgeResponse < TencentCloud::Common::AbstractModel
        # @param List: 共享知识库信息列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              knowledgebaseinfo_tmp = KnowledgeBaseInfo.new
              knowledgebaseinfo_tmp.deserialize(i)
              @List << knowledgebaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRejectedQuestionPreview请求参数结构体
      class ListRejectedQuestionPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布单ID
        # @type ReleaseBizId: String
        # @param Actions: 状态(1新增2更新3删除)
        # @type Actions: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :Actions, :StartTime, :EndTime

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, actions=nil, starttime=nil, endtime=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @Actions = actions
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @Actions = params['Actions']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ListRejectedQuestionPreview返回参数结构体
      class ListRejectedQuestionPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releaserejectedquestion_tmp = ReleaseRejectedQuestion.new
              releaserejectedquestion_tmp.deserialize(i)
              @List << releaserejectedquestion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRejectedQuestion请求参数结构体
      class ListRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
        end
      end

      # ListRejectedQuestion返回参数结构体
      class ListRejectedQuestionResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: String
        # @param List: 拒答问题列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              rejectedquestion_tmp = RejectedQuestion.new
              rejectedquestion_tmp.deserialize(i)
              @List << rejectedquestion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListReleaseConfigPreview请求参数结构体
      class ListReleaseConfigPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布单ID
        # @type ReleaseBizId: String
        # @param Actions: 状态(1新增2更新3删除)
        # @type Actions: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param ReleaseStatus: 发布状态
        # @type ReleaseStatus: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :Actions, :StartTime, :EndTime, :ReleaseStatus

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, actions=nil, starttime=nil, endtime=nil, releasestatus=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @Actions = actions
          @StartTime = starttime
          @EndTime = endtime
          @ReleaseStatus = releasestatus
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @Actions = params['Actions']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReleaseStatus = params['ReleaseStatus']
        end
      end

      # ListReleaseConfigPreview返回参数结构体
      class ListReleaseConfigPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 数量
        # @type Total: String
        # @param List: 配置项列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releaseconfigs_tmp = ReleaseConfigs.new
              releaseconfigs_tmp.deserialize(i)
              @List << releaseconfigs_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListReleaseDocPreview请求参数结构体
      class ListReleaseDocPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布单ID
        # @type ReleaseBizId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Actions: 状态(1新增2修改3删除)
        # @type Actions: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :StartTime, :EndTime, :Actions

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, starttime=nil, endtime=nil, actions=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @StartTime = starttime
          @EndTime = endtime
          @Actions = actions
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Actions = params['Actions']
        end
      end

      # ListReleaseDocPreview返回参数结构体
      class ListReleaseDocPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releasedoc_tmp = ReleaseDoc.new
              releasedoc_tmp.deserialize(i)
              @List << releasedoc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 发布列表详情
      class ListReleaseItem < TencentCloud::Common::AbstractModel
        # @param ReleaseBizId: 版本ID
        # @type ReleaseBizId: String
        # @param Operator: 发布人
        # @type Operator: String
        # @param Desc: 发布描述
        # @type Desc: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 发布状态
        # @type Status: Integer
        # @param StatusDesc: 发布状态描述
        # @type StatusDesc: String
        # @param Reason: 失败原因
        # @type Reason: String
        # @param SuccessCount: 发布成功数
        # @type SuccessCount: Integer
        # @param FailCount: 发布失败数
        # @type FailCount: Integer

        attr_accessor :ReleaseBizId, :Operator, :Desc, :UpdateTime, :Status, :StatusDesc, :Reason, :SuccessCount, :FailCount

        def initialize(releasebizid=nil, operator=nil, desc=nil, updatetime=nil, status=nil, statusdesc=nil, reason=nil, successcount=nil, failcount=nil)
          @ReleaseBizId = releasebizid
          @Operator = operator
          @Desc = desc
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @Reason = reason
          @SuccessCount = successcount
          @FailCount = failcount
        end

        def deserialize(params)
          @ReleaseBizId = params['ReleaseBizId']
          @Operator = params['Operator']
          @Desc = params['Desc']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Reason = params['Reason']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
        end
      end

      # ListReleaseQAPreview请求参数结构体
      class ListReleaseQAPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布单ID
        # @type ReleaseBizId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Actions: 状态(1新增2修改3删除)
        # @type Actions: Array
        # @param ReleaseStatus: 发布状态(4发布成功5发布失败)
        # @type ReleaseStatus: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :StartTime, :EndTime, :Actions, :ReleaseStatus

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, starttime=nil, endtime=nil, actions=nil, releasestatus=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @StartTime = starttime
          @EndTime = endtime
          @Actions = actions
          @ReleaseStatus = releasestatus
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Actions = params['Actions']
          @ReleaseStatus = params['ReleaseStatus']
        end
      end

      # ListReleaseQAPreview返回参数结构体
      class ListReleaseQAPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releaseqa_tmp = ReleaseQA.new
              releaseqa_tmp.deserialize(i)
              @List << releaseqa_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRelease请求参数结构体
      class ListReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer

        attr_accessor :BotBizId, :PageNumber, :PageSize

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListRelease返回参数结构体
      class ListReleaseResponse < TencentCloud::Common::AbstractModel
        # @param Total: 发布列表数量
        # @type Total: String
        # @param List: 发布列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              listreleaseitem_tmp = ListReleaseItem.new
              listreleaseitem_tmp.deserialize(i)
              @List << listreleaseitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSelectDoc请求参数结构体
      class ListSelectDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param FileName: 文档名称
        # @type FileName: String
        # @param Status: 文档状态： 7 审核中、8 审核失败、10 待发布、11 发布中、12 已发布、13 学习中、14 学习失败 20 已过期
        # @type Status: Array

        attr_accessor :BotBizId, :FileName, :Status

        def initialize(botbizid=nil, filename=nil, status=nil)
          @BotBizId = botbizid
          @FileName = filename
          @Status = status
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @FileName = params['FileName']
          @Status = params['Status']
        end
      end

      # ListSelectDoc返回参数结构体
      class ListSelectDocResponse < TencentCloud::Common::AbstractModel
        # @param List: 下拉框内容
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              option_tmp = Option.new
              option_tmp.deserialize(i)
              @List << option_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSharedKnowledge请求参数结构体
      class ListSharedKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号，编码从1开始
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，有效范围为[1,200]
        # @type PageSize: Integer
        # @param Keyword: 搜索关键字
        # @type Keyword: String

        attr_accessor :PageNumber, :PageSize, :Keyword

        def initialize(pagenumber=nil, pagesize=nil, keyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Keyword = keyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
        end
      end

      # ListSharedKnowledge返回参数结构体
      class ListSharedKnowledgeResponse < TencentCloud::Common::AbstractModel
        # @param Total: 累计数量
        # @type Total: Integer
        # @param KnowledgeList: 知识库列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KnowledgeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :KnowledgeList, :RequestId

        def initialize(total=nil, knowledgelist=nil, requestid=nil)
          @Total = total
          @KnowledgeList = knowledgelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['KnowledgeList'].nil?
            @KnowledgeList = []
            params['KnowledgeList'].each do |i|
              knowledgedetailinfo_tmp = KnowledgeDetailInfo.new
              knowledgedetailinfo_tmp.deserialize(i)
              @KnowledgeList << knowledgedetailinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUnsatisfiedReply请求参数结构体
      class ListUnsatisfiedReplyRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页数量
        # @type PageSize: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Query: 用户请求(问题或答案)
        # @type Query: String
        # @param Reasons: 错误类型检索
        # @type Reasons: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :LoginUin, :LoginSubAccountUin, :Query, :Reasons

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, loginuin=nil, loginsubaccountuin=nil, query=nil, reasons=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Query = query
          @Reasons = reasons
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @Query = params['Query']
          @Reasons = params['Reasons']
        end
      end

      # ListUnsatisfiedReply返回参数结构体
      class ListUnsatisfiedReplyResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: String
        # @param List: 不满意回复列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              unsatisfiedreply_tmp = UnsatisfiedReply.new
              unsatisfiedreply_tmp.deserialize(i)
              @List << unsatisfiedreply_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUsageCallDetail请求参数结构体
      class ListUsageCallDetailRequest < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型标识
        # @type ModelName: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageNumber: 页码（从1开始）
        # @type PageNumber: Integer
        # @param PageSize: 分页数量(最大值1000)
        # @type PageSize: Integer
        # @param UinAccount: uin列表
        # @type UinAccount: Array
        # @param AppBizIds: 应用ID列表
        # @type AppBizIds: Array
        # @param CallType: 调用类型列表
        # @type CallType: String
        # @param SubScenes: 筛选子场景
        # @type SubScenes: Array
        # @param AppType: 应用类型(knowledge_qa应用管理， shared_knowlege 共享知识库)
        # @type AppType: String
        # @param BillingTag: 账单明细对应的自定义tag
        # @type BillingTag: String

        attr_accessor :ModelName, :StartTime, :EndTime, :PageNumber, :PageSize, :UinAccount, :AppBizIds, :CallType, :SubScenes, :AppType, :BillingTag

        def initialize(modelname=nil, starttime=nil, endtime=nil, pagenumber=nil, pagesize=nil, uinaccount=nil, appbizids=nil, calltype=nil, subscenes=nil, apptype=nil, billingtag=nil)
          @ModelName = modelname
          @StartTime = starttime
          @EndTime = endtime
          @PageNumber = pagenumber
          @PageSize = pagesize
          @UinAccount = uinaccount
          @AppBizIds = appbizids
          @CallType = calltype
          @SubScenes = subscenes
          @AppType = apptype
          @BillingTag = billingtag
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @UinAccount = params['UinAccount']
          @AppBizIds = params['AppBizIds']
          @CallType = params['CallType']
          @SubScenes = params['SubScenes']
          @AppType = params['AppType']
          @BillingTag = params['BillingTag']
        end
      end

      # ListUsageCallDetail返回参数结构体
      class ListUsageCallDetailResponse < TencentCloud::Common::AbstractModel
        # @param Total: 列表总数
        # @type Total: Integer
        # @param List: 列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              calldetail_tmp = CallDetail.new
              calldetail_tmp.deserialize(i)
              @List << calldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWorkflowRuns请求参数结构体
      class ListWorkflowRunsRequest < TencentCloud::Common::AbstractModel
        # @param RunEnv: 运行环境。0: 测试环境； 1: 正式环境
        # @type RunEnv: Integer
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param Page: 页码
        # @type Page: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :RunEnv, :AppBizId, :Page, :PageSize, :LoginUin, :LoginSubAccountUin

        def initialize(runenv=nil, appbizid=nil, page=nil, pagesize=nil, loginuin=nil, loginsubaccountuin=nil)
          @RunEnv = runenv
          @AppBizId = appbizid
          @Page = page
          @PageSize = pagesize
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @RunEnv = params['RunEnv']
          @AppBizId = params['AppBizId']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ListWorkflowRuns返回参数结构体
      class ListWorkflowRunsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param WorkflowRuns: 工作流运行列表
        # @type WorkflowRuns: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :WorkflowRuns, :RequestId

        def initialize(total=nil, workflowruns=nil, requestid=nil)
          @Total = total
          @WorkflowRuns = workflowruns
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['WorkflowRuns'].nil?
            @WorkflowRuns = []
            params['WorkflowRuns'].each do |i|
              workflowrunbase_tmp = WorkflowRunBase.new
              workflowrunbase_tmp.deserialize(i)
              @WorkflowRuns << workflowrunbase_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 模型信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param ModelDesc: 模型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelDesc: String
        # @param AliasName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String
        # @param ResourceStatus: 资源状态 1：资源可用；2：资源已用尽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceStatus: Integer
        # @param PromptWordsLimit: 提示词内容字符限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PromptWordsLimit: String
        # @param TopP: 通过核心采样控制内容生成的多样性，较高的Top P值会导致生成更多样的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopP: :class:`Tencentcloud::Lke.v20231130.models.ModelParameter`
        # @param Temperature: 温度控制随机性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Temperature: :class:`Tencentcloud::Lke.v20231130.models.ModelParameter`
        # @param MaxTokens: 最多能生成的token数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTokens: :class:`Tencentcloud::Lke.v20231130.models.ModelParameter`
        # @param Source: 模型来源 Hunyuan：腾讯混元大模型,Industry：腾讯云行业大模型,Experience：新模型体验,Custom自定义模型
        # @type Source: String
        # @param Icon: 模型图标
        # @type Icon: String
        # @param IsFree: 是否免费
        # @type IsFree: Boolean
        # @param InputLenLimit: 模型对话框可输入的上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputLenLimit: Integer
        # @param SupportWorkflowStatus: 支持工作流的类型 0:模型不支持; 1: 模型支持工作流； 2： 模型支持效果不佳；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportWorkflowStatus: Integer
        # @param ModelCategory: 模型类别 generate：生成模型，thought：思考模型
        # @type ModelCategory: String
        # @param IsDefault: 是否默认模型
        # @type IsDefault: Boolean
        # @param RoleLenLimit: 角色提示词输入长度限制
        # @type RoleLenLimit: Integer
        # @param IsExclusive: 是否专属并发模型
        # @type IsExclusive: Boolean
        # @param SupportAiCallStatus: 模型支持智能通话效果
        # @type SupportAiCallStatus: Integer
        # @param Concurrency: 专属并发数
        # @type Concurrency: Integer

        attr_accessor :ModelName, :ModelDesc, :AliasName, :ResourceStatus, :PromptWordsLimit, :TopP, :Temperature, :MaxTokens, :Source, :Icon, :IsFree, :InputLenLimit, :SupportWorkflowStatus, :ModelCategory, :IsDefault, :RoleLenLimit, :IsExclusive, :SupportAiCallStatus, :Concurrency

        def initialize(modelname=nil, modeldesc=nil, aliasname=nil, resourcestatus=nil, promptwordslimit=nil, topp=nil, temperature=nil, maxtokens=nil, source=nil, icon=nil, isfree=nil, inputlenlimit=nil, supportworkflowstatus=nil, modelcategory=nil, isdefault=nil, rolelenlimit=nil, isexclusive=nil, supportaicallstatus=nil, concurrency=nil)
          @ModelName = modelname
          @ModelDesc = modeldesc
          @AliasName = aliasname
          @ResourceStatus = resourcestatus
          @PromptWordsLimit = promptwordslimit
          @TopP = topp
          @Temperature = temperature
          @MaxTokens = maxtokens
          @Source = source
          @Icon = icon
          @IsFree = isfree
          @InputLenLimit = inputlenlimit
          @SupportWorkflowStatus = supportworkflowstatus
          @ModelCategory = modelcategory
          @IsDefault = isdefault
          @RoleLenLimit = rolelenlimit
          @IsExclusive = isexclusive
          @SupportAiCallStatus = supportaicallstatus
          @Concurrency = concurrency
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @ModelDesc = params['ModelDesc']
          @AliasName = params['AliasName']
          @ResourceStatus = params['ResourceStatus']
          @PromptWordsLimit = params['PromptWordsLimit']
          unless params['TopP'].nil?
            @TopP = ModelParameter.new
            @TopP.deserialize(params['TopP'])
          end
          unless params['Temperature'].nil?
            @Temperature = ModelParameter.new
            @Temperature.deserialize(params['Temperature'])
          end
          unless params['MaxTokens'].nil?
            @MaxTokens = ModelParameter.new
            @MaxTokens.deserialize(params['MaxTokens'])
          end
          @Source = params['Source']
          @Icon = params['Icon']
          @IsFree = params['IsFree']
          @InputLenLimit = params['InputLenLimit']
          @SupportWorkflowStatus = params['SupportWorkflowStatus']
          @ModelCategory = params['ModelCategory']
          @IsDefault = params['IsDefault']
          @RoleLenLimit = params['RoleLenLimit']
          @IsExclusive = params['IsExclusive']
          @SupportAiCallStatus = params['SupportAiCallStatus']
          @Concurrency = params['Concurrency']
        end
      end

      # 模型参数范围
      class ModelParameter < TencentCloud::Common::AbstractModel
        # @param Default: 默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Default: Float
        # @param Min: 最小值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: Float
        # @param Max: 最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: Float

        attr_accessor :Default, :Min, :Max

        def initialize(default=nil, min=nil, max=nil)
          @Default = default
          @Min = min
          @Max = max
        end

        def deserialize(params)
          @Default = params['Default']
          @Min = params['Min']
          @Max = params['Max']
        end
      end

      # ModifyAgent请求参数结构体
      class ModifyAgentRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 需要修改的应用ID
        # @type AppBizId: String
        # @param Agent: 修改后的Agent的信息
        # @type Agent: :class:`Tencentcloud::Lke.v20231130.models.Agent`

        attr_accessor :AppBizId, :Agent

        def initialize(appbizid=nil, agent=nil)
          @AppBizId = appbizid
          @Agent = agent
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # ModifyAgent返回参数结构体
      class ModifyAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: 修改的AgentId
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

      # ModifyApp请求参数结构体
      class ModifyAppRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用 ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classify-知识标签提取
        # @type AppType: String
        # @param BaseConfig: 应用基础配置
        # @type BaseConfig: :class:`Tencentcloud::Lke.v20231130.models.BaseConfig`
        # @param AppConfig: 应用配置
        # @type AppConfig: :class:`Tencentcloud::Lke.v20231130.models.AppConfig`
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :AppBizId, :AppType, :BaseConfig, :AppConfig, :LoginSubAccountUin

        def initialize(appbizid=nil, apptype=nil, baseconfig=nil, appconfig=nil, loginsubaccountuin=nil)
          @AppBizId = appbizid
          @AppType = apptype
          @BaseConfig = baseconfig
          @AppConfig = appconfig
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
          unless params['BaseConfig'].nil?
            @BaseConfig = BaseConfig.new
            @BaseConfig.deserialize(params['BaseConfig'])
          end
          unless params['AppConfig'].nil?
            @AppConfig = AppConfig.new
            @AppConfig.deserialize(params['AppConfig'])
          end
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ModifyApp返回参数结构体
      class ModifyAppResponse < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用App
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppBizId: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppBizId, :UpdateTime, :RequestId

        def initialize(appbizid=nil, updatetime=nil, requestid=nil)
          @AppBizId = appbizid
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAttributeLabel请求参数结构体
      class ModifyAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param AttributeBizId: 标签ID
        # @type AttributeBizId: String
        # @param AttrName: 标签名称
        # @type AttrName: String
        # @param AttrKey: 标签标识 （已作废）
        # @type AttrKey: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param DeleteLabelBizIds: 删除的标签值
        # @type DeleteLabelBizIds: Array
        # @param Labels: 新增或编辑的标签
        # @type Labels: Array

        attr_accessor :BotBizId, :AttributeBizId, :AttrName, :AttrKey, :LoginUin, :LoginSubAccountUin, :DeleteLabelBizIds, :Labels

        def initialize(botbizid=nil, attributebizid=nil, attrname=nil, attrkey=nil, loginuin=nil, loginsubaccountuin=nil, deletelabelbizids=nil, labels=nil)
          @BotBizId = botbizid
          @AttributeBizId = attributebizid
          @AttrName = attrname
          @AttrKey = attrkey
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @DeleteLabelBizIds = deletelabelbizids
          @Labels = labels
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttributeBizId = params['AttributeBizId']
          @AttrName = params['AttrName']
          @AttrKey = params['AttrKey']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @DeleteLabelBizIds = params['DeleteLabelBizIds']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabel_tmp = AttributeLabel.new
              attributelabel_tmp.deserialize(i)
              @Labels << attributelabel_tmp
            end
          end
        end
      end

      # ModifyAttributeLabel返回参数结构体
      class ModifyAttributeLabelResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDocAttrRange请求参数结构体
      class ModifyDocAttrRangeRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizIds: 文档ID
        # @type DocBizIds: Array
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签引用
        # @type AttrLabels: Array

        attr_accessor :BotBizId, :DocBizIds, :AttrRange, :AttrLabels

        def initialize(botbizid=nil, docbizids=nil, attrrange=nil, attrlabels=nil)
          @BotBizId = botbizid
          @DocBizIds = docbizids
          @AttrRange = attrrange
          @AttrLabels = attrlabels
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizIds = params['DocBizIds']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
        end
      end

      # ModifyDocAttrRange返回参数结构体
      class ModifyDocAttrRangeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDocCate请求参数结构体
      class ModifyDocCateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param Name: 分类名称
        # @type Name: String
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :Name, :CateBizId

        def initialize(botbizid=nil, name=nil, catebizid=nil)
          @BotBizId = botbizid
          @Name = name
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Name = params['Name']
          @CateBizId = params['CateBizId']
        end
      end

      # ModifyDocCate返回参数结构体
      class ModifyDocCateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDoc请求参数结构体
      class ModifyDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param IsRefer: 是否引用链接
        # @type IsRefer: Boolean
        # @param AttrRange: 标签适用范围，需要传参为1
        # @type AttrRange: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param AttrLabels: 关联的标签
        # @type AttrLabels: Array
        # @param WebUrl: 网页(或自定义链接)地址
        # @type WebUrl: String
        # @param ReferUrlType: 外部引用链接类型 0：系统链接 1：自定义链接
        # 值为1时，WebUrl 字段不能为空，否则不生效。
        # @type ReferUrlType: Integer
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param IsDownload: 是否可下载，IsRefer为true并且ReferUrlType为0时，该值才有意义
        # @type IsDownload: Boolean

        attr_accessor :BotBizId, :DocBizId, :IsRefer, :AttrRange, :LoginUin, :LoginSubAccountUin, :AttrLabels, :WebUrl, :ReferUrlType, :ExpireStart, :ExpireEnd, :CateBizId, :IsDownload

        def initialize(botbizid=nil, docbizid=nil, isrefer=nil, attrrange=nil, loginuin=nil, loginsubaccountuin=nil, attrlabels=nil, weburl=nil, referurltype=nil, expirestart=nil, expireend=nil, catebizid=nil, isdownload=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
          @IsRefer = isrefer
          @AttrRange = attrrange
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @AttrLabels = attrlabels
          @WebUrl = weburl
          @ReferUrlType = referurltype
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @CateBizId = catebizid
          @IsDownload = isdownload
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
          @IsRefer = params['IsRefer']
          @AttrRange = params['AttrRange']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @WebUrl = params['WebUrl']
          @ReferUrlType = params['ReferUrlType']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          @CateBizId = params['CateBizId']
          @IsDownload = params['IsDownload']
        end
      end

      # ModifyDoc返回参数结构体
      class ModifyDocResponse < TencentCloud::Common::AbstractModel
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

      # ModifyQAAttrRange请求参数结构体
      class ModifyQAAttrRangeRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param QaBizIds: 问答ID
        # @type QaBizIds: Array
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签引用
        # @type AttrLabels: Array

        attr_accessor :BotBizId, :QaBizIds, :AttrRange, :AttrLabels

        def initialize(botbizid=nil, qabizids=nil, attrrange=nil, attrlabels=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
          @AttrRange = attrrange
          @AttrLabels = attrlabels
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
        end
      end

      # ModifyQAAttrRange返回参数结构体
      class ModifyQAAttrRangeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyQACate请求参数结构体
      class ModifyQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param Name: 分类名称
        # @type Name: String
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :Name, :CateBizId

        def initialize(botbizid=nil, name=nil, catebizid=nil)
          @BotBizId = botbizid
          @Name = name
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Name = params['Name']
          @CateBizId = params['CateBizId']
        end
      end

      # ModifyQACate返回参数结构体
      class ModifyQACateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyQA请求参数结构体
      class ModifyQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param CustomParam: 自定义参数
        # @type CustomParam: String
        # @param AttrRange: 标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param AttrLabels: 标签引用
        # @type AttrLabels: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param SimilarQuestionModify: 相似问修改信息(相似问没有修改则不传)
        # @type SimilarQuestionModify: :class:`Tencentcloud::Lke.v20231130.models.SimilarQuestionModify`
        # @param QuestionDesc: 问题描述
        # @type QuestionDesc: String

        attr_accessor :BotBizId, :QaBizId, :Question, :Answer, :CustomParam, :AttrRange, :AttrLabels, :DocBizId, :CateBizId, :ExpireStart, :ExpireEnd, :SimilarQuestionModify, :QuestionDesc

        def initialize(botbizid=nil, qabizid=nil, question=nil, answer=nil, customparam=nil, attrrange=nil, attrlabels=nil, docbizid=nil, catebizid=nil, expirestart=nil, expireend=nil, similarquestionmodify=nil, questiondesc=nil)
          @BotBizId = botbizid
          @QaBizId = qabizid
          @Question = question
          @Answer = answer
          @CustomParam = customparam
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @DocBizId = docbizid
          @CateBizId = catebizid
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @SimilarQuestionModify = similarquestionmodify
          @QuestionDesc = questiondesc
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizId = params['QaBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @CustomParam = params['CustomParam']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @DocBizId = params['DocBizId']
          @CateBizId = params['CateBizId']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          unless params['SimilarQuestionModify'].nil?
            @SimilarQuestionModify = SimilarQuestionModify.new
            @SimilarQuestionModify.deserialize(params['SimilarQuestionModify'])
          end
          @QuestionDesc = params['QuestionDesc']
        end
      end

      # ModifyQA返回参数结构体
      class ModifyQAResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRejectedQuestion请求参数结构体
      class ModifyRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param Question: 拒答问题

        # @type Question: String
        # @param RejectedBizId: 拒答问题来源的数据源唯一id


        # @type RejectedBizId: String

        attr_accessor :BotBizId, :Question, :RejectedBizId

        def initialize(botbizid=nil, question=nil, rejectedbizid=nil)
          @BotBizId = botbizid
          @Question = question
          @RejectedBizId = rejectedbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Question = params['Question']
          @RejectedBizId = params['RejectedBizId']
        end
      end

      # ModifyRejectedQuestion返回参数结构体
      class ModifyRejectedQuestionResponse < TencentCloud::Common::AbstractModel
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

      # 文档信息
      class MsgFileInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文档名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileSize: 文档大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: String
        # @param FileUrl: 文档URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileUrl: String
        # @param FileType: 文档类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param DocId: 文档ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocId: String

        attr_accessor :FileName, :FileSize, :FileUrl, :FileType, :DocId

        def initialize(filename=nil, filesize=nil, fileurl=nil, filetype=nil, docid=nil)
          @FileName = filename
          @FileSize = filesize
          @FileUrl = fileurl
          @FileType = filetype
          @DocId = docid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
          @DocId = params['DocId']
        end
      end

      # 消息详情
      class MsgRecord < TencentCloud::Common::AbstractModel
        # @param Content: 内容
        # @type Content: String
        # @param SessionId: 当前记录所对应的 Session ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param RecordId: 记录ID
        # @type RecordId: String
        # @param RelatedRecordId: 关联记录ID
        # @type RelatedRecordId: String
        # @param IsFromSelf: 是否来自自己
        # @type IsFromSelf: Boolean
        # @param FromName: 发送者名称
        # @type FromName: String
        # @param FromAvatar: 发送者头像
        # @type FromAvatar: String
        # @param Timestamp: 时间戳
        # @type Timestamp: String
        # @param HasRead: 是否已读
        # @type HasRead: Boolean
        # @param Score: 评价
        # @type Score: Integer
        # @param CanRating: 是否评分
        # @type CanRating: Boolean
        # @param CanFeedback: 是否展示反馈按钮
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanFeedback: Boolean
        # @param Type: 记录类型
        # @type Type: Integer
        # @param References: 引用来源
        # @type References: Array
        # @param Reasons: 评价原因
        # @type Reasons: Array
        # @param IsLlmGenerated: 是否大模型
        # @type IsLlmGenerated: Boolean
        # @param ImageUrls: 图片链接，可公有读
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrls: Array
        # @param TokenStat: 当次 token 统计信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenStat: :class:`Tencentcloud::Lke.v20231130.models.TokenStat`
        # @param ReplyMethod: 回复方式
        # 1:大模型直接回复;
        # 2:保守回复, 未知问题回复;
        # 3:拒答问题回复;
        # 4:敏感回复;
        # 5:问答对直接回复, 已采纳问答对优先回复;
        # 6:欢迎语回复;
        # 7:并发超限回复;
        # 8:全局干预知识;
        # 9:任务流程过程回复, 当历史记录中 task_flow.type = 0 时, 为大模型回复;
        # 10:任务流程答案回复;
        # 11:搜索引擎回复;
        # 12:知识润色后回复;
        # 13:图片理解回复;
        # 14:实时文档回复;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplyMethod: Integer
        # @param OptionCards: 选项卡, 用于多轮对话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptionCards: Array
        # @param TaskFlow: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFlow: :class:`Tencentcloud::Lke.v20231130.models.TaskFlowInfo`
        # @param FileInfos: 用户传入的文件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileInfos: Array
        # @param QuoteInfos: 参考来源引用位置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuoteInfos: Array
        # @param AgentThought: Agent的思考过程信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentThought: :class:`Tencentcloud::Lke.v20231130.models.AgentThought`
        # @param ExtraInfo: 扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: :class:`Tencentcloud::Lke.v20231130.models.ExtraInfo`
        # @param WorkFlow: 工作流信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkFlow: :class:`Tencentcloud::Lke.v20231130.models.WorkflowInfo`

        attr_accessor :Content, :SessionId, :RecordId, :RelatedRecordId, :IsFromSelf, :FromName, :FromAvatar, :Timestamp, :HasRead, :Score, :CanRating, :CanFeedback, :Type, :References, :Reasons, :IsLlmGenerated, :ImageUrls, :TokenStat, :ReplyMethod, :OptionCards, :TaskFlow, :FileInfos, :QuoteInfos, :AgentThought, :ExtraInfo, :WorkFlow

        def initialize(content=nil, sessionid=nil, recordid=nil, relatedrecordid=nil, isfromself=nil, fromname=nil, fromavatar=nil, timestamp=nil, hasread=nil, score=nil, canrating=nil, canfeedback=nil, type=nil, references=nil, reasons=nil, isllmgenerated=nil, imageurls=nil, tokenstat=nil, replymethod=nil, optioncards=nil, taskflow=nil, fileinfos=nil, quoteinfos=nil, agentthought=nil, extrainfo=nil, workflow=nil)
          @Content = content
          @SessionId = sessionid
          @RecordId = recordid
          @RelatedRecordId = relatedrecordid
          @IsFromSelf = isfromself
          @FromName = fromname
          @FromAvatar = fromavatar
          @Timestamp = timestamp
          @HasRead = hasread
          @Score = score
          @CanRating = canrating
          @CanFeedback = canfeedback
          @Type = type
          @References = references
          @Reasons = reasons
          @IsLlmGenerated = isllmgenerated
          @ImageUrls = imageurls
          @TokenStat = tokenstat
          @ReplyMethod = replymethod
          @OptionCards = optioncards
          @TaskFlow = taskflow
          @FileInfos = fileinfos
          @QuoteInfos = quoteinfos
          @AgentThought = agentthought
          @ExtraInfo = extrainfo
          @WorkFlow = workflow
        end

        def deserialize(params)
          @Content = params['Content']
          @SessionId = params['SessionId']
          @RecordId = params['RecordId']
          @RelatedRecordId = params['RelatedRecordId']
          @IsFromSelf = params['IsFromSelf']
          @FromName = params['FromName']
          @FromAvatar = params['FromAvatar']
          @Timestamp = params['Timestamp']
          @HasRead = params['HasRead']
          @Score = params['Score']
          @CanRating = params['CanRating']
          @CanFeedback = params['CanFeedback']
          @Type = params['Type']
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              msgrecordreference_tmp = MsgRecordReference.new
              msgrecordreference_tmp.deserialize(i)
              @References << msgrecordreference_tmp
            end
          end
          @Reasons = params['Reasons']
          @IsLlmGenerated = params['IsLlmGenerated']
          @ImageUrls = params['ImageUrls']
          unless params['TokenStat'].nil?
            @TokenStat = TokenStat.new
            @TokenStat.deserialize(params['TokenStat'])
          end
          @ReplyMethod = params['ReplyMethod']
          @OptionCards = params['OptionCards']
          unless params['TaskFlow'].nil?
            @TaskFlow = TaskFlowInfo.new
            @TaskFlow.deserialize(params['TaskFlow'])
          end
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @FileInfos << fileinfo_tmp
            end
          end
          unless params['QuoteInfos'].nil?
            @QuoteInfos = []
            params['QuoteInfos'].each do |i|
              quoteinfo_tmp = QuoteInfo.new
              quoteinfo_tmp.deserialize(i)
              @QuoteInfos << quoteinfo_tmp
            end
          end
          unless params['AgentThought'].nil?
            @AgentThought = AgentThought.new
            @AgentThought.deserialize(params['AgentThought'])
          end
          unless params['ExtraInfo'].nil?
            @ExtraInfo = ExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          unless params['WorkFlow'].nil?
            @WorkFlow = WorkflowInfo.new
            @WorkFlow.deserialize(params['WorkFlow'])
          end
        end
      end

      # 聊天详情Refer
      class MsgRecordReference < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: String
        # @param Url: 链接
        # @type Url: String
        # @param Type: 类型
        # @type Type: Integer
        # @param Name: 名称
        # @type Name: String
        # @param DocId: 来源文档ID
        # @type DocId: String
        # @param KnowledgeName: 知识库名称
        # @type KnowledgeName: String
        # @param KnowledgeBizId: 知识库业务id
        # @type KnowledgeBizId: String
        # @param DocBizId: 文档业务id
        # @type DocBizId: String
        # @param QaBizId: 问答业务id
        # @type QaBizId: String

        attr_accessor :Id, :Url, :Type, :Name, :DocId, :KnowledgeName, :KnowledgeBizId, :DocBizId, :QaBizId

        def initialize(id=nil, url=nil, type=nil, name=nil, docid=nil, knowledgename=nil, knowledgebizid=nil, docbizid=nil, qabizid=nil)
          @Id = id
          @Url = url
          @Type = type
          @Name = name
          @DocId = docid
          @KnowledgeName = knowledgename
          @KnowledgeBizId = knowledgebizid
          @DocBizId = docbizid
          @QaBizId = qabizid
        end

        def deserialize(params)
          @Id = params['Id']
          @Url = params['Url']
          @Type = params['Type']
          @Name = params['Name']
          @DocId = params['DocId']
          @KnowledgeName = params['KnowledgeName']
          @KnowledgeBizId = params['KnowledgeBizId']
          @DocBizId = params['DocBizId']
          @QaBizId = params['QaBizId']
        end
      end

      # 节点运行的基本信息
      class NodeRunBase < TencentCloud::Common::AbstractModel
        # @param NodeRunId: 节点运行的ID
        # @type NodeRunId: String
        # @param NodeId: 节点ID
        # @type NodeId: String
        # @param WorkflowRunId: 工作流运行实例的ID
        # @type WorkflowRunId: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param NodeType: 节点类型。
        # 1： 开始节点
        # 2：参数提取节点
        # 3：大模型节点
        # 4：知识问答节点
        # 5：知识检索节点
        # 6：标签提取节点
        # 7：代码执行节点
        # 8：工具节点
        # 9：逻辑判断节点
        # 10：回复节点
        # 11：选项卡节点
        # 12：循环节点
        # 13：意图识别节点
        # 14：工作流节点
        # 15：插件节点
        # 16：结束节点
        # 17: 变量聚合节点数据
        # 18: 批处理节点
        # 19: 消息队列节点
        # @type NodeType: Integer
        # @param State: 运行状态。0: 初始状态；1: 运行中；2: 运行成功； 3: 运行失败； 4: 已取消
        # @type State: Integer
        # @param FailCode: 错误码
        # @type FailCode: String
        # @param FailMessage: 错误信息
        # @type FailMessage: String
        # @param CostMilliseconds: 消耗时间（毫秒）
        # @type CostMilliseconds: Integer
        # @param TotalTokens: 消耗的token总数
        # @type TotalTokens: Integer

        attr_accessor :NodeRunId, :NodeId, :WorkflowRunId, :NodeName, :NodeType, :State, :FailCode, :FailMessage, :CostMilliseconds, :TotalTokens

        def initialize(noderunid=nil, nodeid=nil, workflowrunid=nil, nodename=nil, nodetype=nil, state=nil, failcode=nil, failmessage=nil, costmilliseconds=nil, totaltokens=nil)
          @NodeRunId = noderunid
          @NodeId = nodeid
          @WorkflowRunId = workflowrunid
          @NodeName = nodename
          @NodeType = nodetype
          @State = state
          @FailCode = failcode
          @FailMessage = failmessage
          @CostMilliseconds = costmilliseconds
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @NodeRunId = params['NodeRunId']
          @NodeId = params['NodeId']
          @WorkflowRunId = params['WorkflowRunId']
          @NodeName = params['NodeName']
          @NodeType = params['NodeType']
          @State = params['State']
          @FailCode = params['FailCode']
          @FailMessage = params['FailMessage']
          @CostMilliseconds = params['CostMilliseconds']
          @TotalTokens = params['TotalTokens']
        end
      end

      # 工作流节点运行详情
      class NodeRunDetail < TencentCloud::Common::AbstractModel
        # @param NodeRunId: 节点运行的ID
        # @type NodeRunId: String
        # @param NodeId: 节点ID
        # @type NodeId: String
        # @param WorkflowRunId: 工作流运行实例的ID
        # @type WorkflowRunId: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param NodeType: 节点类型。
        # 1： 开始节点
        # 2：参数提取节点
        # 3：大模型节点
        # 4：知识问答节点
        # 5：知识检索节点
        # 6：标签提取节点
        # 7：代码执行节点
        # 8：工具节点
        # 9：逻辑判断节点
        # 10：回复节点
        # 11：选项卡节点
        # 12：循环节点
        # 13：意图识别节点
        # 14：工作流节点
        # 15：插件节点
        # 16：结束节点
        # 17: 变量聚合节点数据
        # 18: 批处理节点
        # 19: 消息队列节点
        # @type NodeType: Integer
        # @param State: 运行状态。0: 初始状态；1: 运行中；2: 运行成功； 3: 运行失败； 4: 已取消
        # @type State: Integer
        # @param FailCode: 错误码
        # @type FailCode: String
        # @param FailMessage: 错误信息
        # @type FailMessage: String
        # @param CostMilliseconds: 消耗时间（毫秒）
        # @type CostMilliseconds: Integer
        # @param TotalTokens: 消耗的token总数
        # @type TotalTokens: Integer
        # @param Input: 输入变量信息
        # @type Input: String
        # @param InputRef: 节点的输入的完整内容的链接。（当Input内容超过限制的时候此字段才有值）
        # @type InputRef: String
        # @param Output: 输出变量信息
        # @type Output: String
        # @param OutputRef: 节点的输出的完整内容的链接。（当Output内容超过限制的时候此字段才有值）
        # @type OutputRef: String
        # @param TaskOutput: 原始输出信息。部分节点才有值，如工具节点、代码节点
        # @type TaskOutput: String
        # @param TaskOutputRef: 任务的原始输出的完整内容的链接。（当TaskOutput内容超过限制的时候此字段才有值）
        # @type TaskOutputRef: String
        # @param Log: 节点的日志
        # @type Log: String
        # @param LogRef: 节点的日志的完整内容的链接志（当Log内容超过限制的时候才有值）
        # @type LogRef: String
        # @param StartTime: 开始时间戳（毫秒）
        # @type StartTime: String
        # @param EndTime: 结束时间戳（毫秒）
        # @type EndTime: String
        # @param StatisticInfos: LLM统计信息。
        # @type StatisticInfos: Array

        attr_accessor :NodeRunId, :NodeId, :WorkflowRunId, :NodeName, :NodeType, :State, :FailCode, :FailMessage, :CostMilliseconds, :TotalTokens, :Input, :InputRef, :Output, :OutputRef, :TaskOutput, :TaskOutputRef, :Log, :LogRef, :StartTime, :EndTime, :StatisticInfos

        def initialize(noderunid=nil, nodeid=nil, workflowrunid=nil, nodename=nil, nodetype=nil, state=nil, failcode=nil, failmessage=nil, costmilliseconds=nil, totaltokens=nil, input=nil, inputref=nil, output=nil, outputref=nil, taskoutput=nil, taskoutputref=nil, log=nil, logref=nil, starttime=nil, endtime=nil, statisticinfos=nil)
          @NodeRunId = noderunid
          @NodeId = nodeid
          @WorkflowRunId = workflowrunid
          @NodeName = nodename
          @NodeType = nodetype
          @State = state
          @FailCode = failcode
          @FailMessage = failmessage
          @CostMilliseconds = costmilliseconds
          @TotalTokens = totaltokens
          @Input = input
          @InputRef = inputref
          @Output = output
          @OutputRef = outputref
          @TaskOutput = taskoutput
          @TaskOutputRef = taskoutputref
          @Log = log
          @LogRef = logref
          @StartTime = starttime
          @EndTime = endtime
          @StatisticInfos = statisticinfos
        end

        def deserialize(params)
          @NodeRunId = params['NodeRunId']
          @NodeId = params['NodeId']
          @WorkflowRunId = params['WorkflowRunId']
          @NodeName = params['NodeName']
          @NodeType = params['NodeType']
          @State = params['State']
          @FailCode = params['FailCode']
          @FailMessage = params['FailMessage']
          @CostMilliseconds = params['CostMilliseconds']
          @TotalTokens = params['TotalTokens']
          @Input = params['Input']
          @InputRef = params['InputRef']
          @Output = params['Output']
          @OutputRef = params['OutputRef']
          @TaskOutput = params['TaskOutput']
          @TaskOutputRef = params['TaskOutputRef']
          @Log = params['Log']
          @LogRef = params['LogRef']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['StatisticInfos'].nil?
            @StatisticInfos = []
            params['StatisticInfos'].each do |i|
              statisticinfo_tmp = StatisticInfo.new
              statisticinfo_tmp.deserialize(i)
              @StatisticInfos << statisticinfo_tmp
            end
          end
        end
      end

      # 下拉框选项
      class Option < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param CharSize: 文件字符数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CharSize: String
        # @param FileType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String

        attr_accessor :Text, :Value, :CharSize, :FileType

        def initialize(text=nil, value=nil, charsize=nil, filetype=nil)
          @Text = text
          @Value = value
          @CharSize = charsize
          @FileType = filetype
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
          @CharSize = params['CharSize']
          @FileType = params['FileType']
        end
      end

      # 插件参数请求结构
      class PluginToolReqParam < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param Desc: 参数描述
        # @type Desc: String
        # @param Type: 参数类型，0:string, 1:int, 2:float，3:bool 4:object 5:array_string, 6:array_int, 7:array_float, 8:array_bool, 9:array_object, 99:null, 100:upspecified
        # @type Type: Integer
        # @param IsRequired: 参数是否必填
        # @type IsRequired: Boolean
        # @param DefaultValue: 参数默认值
        # @type DefaultValue: String
        # @param SubParams: 子参数,ParamType 是OBJECT 或 ARRAY<>类型有用
        # @type SubParams: Array
        # @param GlobalHidden: 插件参数配置是否隐藏不可见，true-隐藏不可见，false-可见
        # @type GlobalHidden: Boolean
        # @param OneOf: OneOf类型参数
        # @type OneOf: Array
        # @param AnyOf: AnyOf类型参数
        # @type AnyOf: Array

        attr_accessor :Name, :Desc, :Type, :IsRequired, :DefaultValue, :SubParams, :GlobalHidden, :OneOf, :AnyOf

        def initialize(name=nil, desc=nil, type=nil, isrequired=nil, defaultvalue=nil, subparams=nil, globalhidden=nil, oneof=nil, anyof=nil)
          @Name = name
          @Desc = desc
          @Type = type
          @IsRequired = isrequired
          @DefaultValue = defaultvalue
          @SubParams = subparams
          @GlobalHidden = globalhidden
          @OneOf = oneof
          @AnyOf = anyof
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Type = params['Type']
          @IsRequired = params['IsRequired']
          @DefaultValue = params['DefaultValue']
          unless params['SubParams'].nil?
            @SubParams = []
            params['SubParams'].each do |i|
              plugintoolreqparam_tmp = PluginToolReqParam.new
              plugintoolreqparam_tmp.deserialize(i)
              @SubParams << plugintoolreqparam_tmp
            end
          end
          @GlobalHidden = params['GlobalHidden']
          unless params['OneOf'].nil?
            @OneOf = []
            params['OneOf'].each do |i|
              plugintoolreqparam_tmp = PluginToolReqParam.new
              plugintoolreqparam_tmp.deserialize(i)
              @OneOf << plugintoolreqparam_tmp
            end
          end
          unless params['AnyOf'].nil?
            @AnyOf = []
            params['AnyOf'].each do |i|
              plugintoolreqparam_tmp = PluginToolReqParam.new
              plugintoolreqparam_tmp.deserialize(i)
              @AnyOf << plugintoolreqparam_tmp
            end
          end
        end
      end

      # 执行过程信息记录
      class Procedure < TencentCloud::Common::AbstractModel
        # @param Name: 执行过程英语名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Title: 中文名, 用于展示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Status: 状态常量: 使用中: processing, 成功: success, 失败: failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Count: 消耗 token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Debugging: 调试信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Debugging: :class:`Tencentcloud::Lke.v20231130.models.ProcedureDebugging`
        # @param ResourceStatus: 计费资源状态，1：可用，2：不可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceStatus: Integer

        attr_accessor :Name, :Title, :Status, :Count, :Debugging, :ResourceStatus

        def initialize(name=nil, title=nil, status=nil, count=nil, debugging=nil, resourcestatus=nil)
          @Name = name
          @Title = title
          @Status = status
          @Count = count
          @Debugging = debugging
          @ResourceStatus = resourcestatus
        end

        def deserialize(params)
          @Name = params['Name']
          @Title = params['Title']
          @Status = params['Status']
          @Count = params['Count']
          unless params['Debugging'].nil?
            @Debugging = ProcedureDebugging.new
            @Debugging.deserialize(params['Debugging'])
          end
          @ResourceStatus = params['ResourceStatus']
        end
      end

      # 调试信息
      class ProcedureDebugging < TencentCloud::Common::AbstractModel
        # @param Content: 检索query
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param System: 系统prompt
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type System: String
        # @param Histories: 多轮历史信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Histories: Array
        # @param Knowledge: 检索知识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Knowledge: Array
        # @param TaskFlow: 任务流程
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFlow: :class:`Tencentcloud::Lke.v20231130.models.TaskFlowSummary`
        # @param WorkFlow: 工作流调试信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkFlow: :class:`Tencentcloud::Lke.v20231130.models.WorkFlowSummary`
        # @param Agent: Agent调试信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Agent: :class:`Tencentcloud::Lke.v20231130.models.AgentDebugInfo`
        # @param CustomVariables: 自定义参数
        # @type CustomVariables: Array

        attr_accessor :Content, :System, :Histories, :Knowledge, :TaskFlow, :WorkFlow, :Agent, :CustomVariables

        def initialize(content=nil, system=nil, histories=nil, knowledge=nil, taskflow=nil, workflow=nil, agent=nil, customvariables=nil)
          @Content = content
          @System = system
          @Histories = histories
          @Knowledge = knowledge
          @TaskFlow = taskflow
          @WorkFlow = workflow
          @Agent = agent
          @CustomVariables = customvariables
        end

        def deserialize(params)
          @Content = params['Content']
          @System = params['System']
          unless params['Histories'].nil?
            @Histories = []
            params['Histories'].each do |i|
              historysummary_tmp = HistorySummary.new
              historysummary_tmp.deserialize(i)
              @Histories << historysummary_tmp
            end
          end
          unless params['Knowledge'].nil?
            @Knowledge = []
            params['Knowledge'].each do |i|
              knowledgesummary_tmp = KnowledgeSummary.new
              knowledgesummary_tmp.deserialize(i)
              @Knowledge << knowledgesummary_tmp
            end
          end
          unless params['TaskFlow'].nil?
            @TaskFlow = TaskFlowSummary.new
            @TaskFlow.deserialize(params['TaskFlow'])
          end
          unless params['WorkFlow'].nil?
            @WorkFlow = WorkFlowSummary.new
            @WorkFlow.deserialize(params['WorkFlow'])
          end
          unless params['Agent'].nil?
            @Agent = AgentDebugInfo.new
            @Agent.deserialize(params['Agent'])
          end
          @CustomVariables = params['CustomVariables']
        end
      end

      # 获取QA分类分组
      class QACate < TencentCloud::Common::AbstractModel
        # @param CateBizId: QA分类的业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CateBizId: String
        # @param Name: 分类名称

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Total: 分类下QA数量

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param CanAdd: 是否可新增

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanAdd: Boolean
        # @param CanEdit: 是否可编辑

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanEdit: Boolean
        # @param CanDelete: 是否可删除

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanDelete: Boolean
        # @param Children: 子分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array

        attr_accessor :CateBizId, :Name, :Total, :CanAdd, :CanEdit, :CanDelete, :Children

        def initialize(catebizid=nil, name=nil, total=nil, canadd=nil, canedit=nil, candelete=nil, children=nil)
          @CateBizId = catebizid
          @Name = name
          @Total = total
          @CanAdd = canadd
          @CanEdit = canedit
          @CanDelete = candelete
          @Children = children
        end

        def deserialize(params)
          @CateBizId = params['CateBizId']
          @Name = params['Name']
          @Total = params['Total']
          @CanAdd = params['CanAdd']
          @CanEdit = params['CanEdit']
          @CanDelete = params['CanDelete']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              qacate_tmp = QACate.new
              qacate_tmp.deserialize(i)
              @Children << qacate_tmp
            end
          end
        end
      end

      # 问答列表
      class QAList < TencentCloud::Common::AbstractModel
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param IsAccepted: 是否采纳
        # @type IsAccepted: Boolean
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String

        attr_accessor :QaBizId, :IsAccepted, :CateBizId, :Question, :Answer

        def initialize(qabizid=nil, isaccepted=nil, catebizid=nil, question=nil, answer=nil)
          @QaBizId = qabizid
          @IsAccepted = isaccepted
          @CateBizId = catebizid
          @Question = question
          @Answer = answer
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @IsAccepted = params['IsAccepted']
          @CateBizId = params['CateBizId']
          @Question = params['Question']
          @Answer = params['Answer']
        end
      end

      # QA查询参数
      class QAQuery < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码

        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param Query: 查询内容
        # @type Query: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param AcceptStatus: 校验状态
        # @type AcceptStatus: Array
        # @param ReleaseStatus: 发布状态
        # @type ReleaseStatus: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param QaBizId: QAID
        # @type QaBizId: String
        # @param Source: 来源
        # @type Source: Integer
        # @param QueryAnswer: 查询答案
        # @type QueryAnswer: String
        # @param QueryType: 查询类型 filename 名称、 attribute 标签
        # @type QueryType: String

        attr_accessor :PageNumber, :PageSize, :BotBizId, :Query, :CateBizId, :AcceptStatus, :ReleaseStatus, :DocBizId, :QaBizId, :Source, :QueryAnswer, :QueryType

        def initialize(pagenumber=nil, pagesize=nil, botbizid=nil, query=nil, catebizid=nil, acceptstatus=nil, releasestatus=nil, docbizid=nil, qabizid=nil, source=nil, queryanswer=nil, querytype=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @BotBizId = botbizid
          @Query = query
          @CateBizId = catebizid
          @AcceptStatus = acceptstatus
          @ReleaseStatus = releasestatus
          @DocBizId = docbizid
          @QaBizId = qabizid
          @Source = source
          @QueryAnswer = queryanswer
          @QueryType = querytype
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @BotBizId = params['BotBizId']
          @Query = params['Query']
          @CateBizId = params['CateBizId']
          @AcceptStatus = params['AcceptStatus']
          @ReleaseStatus = params['ReleaseStatus']
          @DocBizId = params['DocBizId']
          @QaBizId = params['QaBizId']
          @Source = params['Source']
          @QueryAnswer = params['QueryAnswer']
          @QueryType = params['QueryType']
        end
      end

      # 搜索引擎参考来源索引
      class QuoteInfo < TencentCloud::Common::AbstractModel
        # @param Position: 参考来源位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: Integer
        # @param Index: 参考来源索引顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String

        attr_accessor :Position, :Index

        def initialize(position=nil, index=nil)
          @Position = position
          @Index = index
        end

        def deserialize(params)
          @Position = params['Position']
          @Index = params['Index']
        end
      end

      # RateMsgRecord请求参数结构体
      class RateMsgRecordRequest < TencentCloud::Common::AbstractModel
        # @param BotAppKey: 应用appKey
        # @type BotAppKey: String
        # @param RecordId: 消息ID 【大模型回复答案的RecordID】
        # @type RecordId: String
        # @param Score: 1点赞2点踩
        # @type Score: Integer
        # @param Reasons: 原因
        # @type Reasons: Array

        attr_accessor :BotAppKey, :RecordId, :Score, :Reasons

        def initialize(botappkey=nil, recordid=nil, score=nil, reasons=nil)
          @BotAppKey = botappkey
          @RecordId = recordid
          @Score = score
          @Reasons = reasons
        end

        def deserialize(params)
          @BotAppKey = params['BotAppKey']
          @RecordId = params['RecordId']
          @Score = params['Score']
          @Reasons = params['Reasons']
        end
      end

      # RateMsgRecord返回参数结构体
      class RateMsgRecordResponse < TencentCloud::Common::AbstractModel
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

      # 引用来源详情
      class ReferDetail < TencentCloud::Common::AbstractModel
        # @param ReferBizId: 引用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReferBizId: String
        # @param DocType: 文档类型 (1 QA, 2 文档段)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocType: Integer
        # @param DocName: 文档名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocName: String
        # @param PageContent: 分片内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageContent: String
        # @param Question: 问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param Answer: 答案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Answer: String
        # @param Confidence: 置信度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Mark: 标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mark: Integer
        # @param Highlights: 分片高亮内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Highlights: Array
        # @param OrgData: 原始内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgData: String
        # @param PageInfos: 页码信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageInfos: Array
        # @param SheetInfos: sheet信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SheetInfos: Array
        # @param DocBizId: 文档ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocBizId: String
        # @param KnowledgeBizId: 知识库ID
        # @type KnowledgeBizId: String

        attr_accessor :ReferBizId, :DocType, :DocName, :PageContent, :Question, :Answer, :Confidence, :Mark, :Highlights, :OrgData, :PageInfos, :SheetInfos, :DocBizId, :KnowledgeBizId

        def initialize(referbizid=nil, doctype=nil, docname=nil, pagecontent=nil, question=nil, answer=nil, confidence=nil, mark=nil, highlights=nil, orgdata=nil, pageinfos=nil, sheetinfos=nil, docbizid=nil, knowledgebizid=nil)
          @ReferBizId = referbizid
          @DocType = doctype
          @DocName = docname
          @PageContent = pagecontent
          @Question = question
          @Answer = answer
          @Confidence = confidence
          @Mark = mark
          @Highlights = highlights
          @OrgData = orgdata
          @PageInfos = pageinfos
          @SheetInfos = sheetinfos
          @DocBizId = docbizid
          @KnowledgeBizId = knowledgebizid
        end

        def deserialize(params)
          @ReferBizId = params['ReferBizId']
          @DocType = params['DocType']
          @DocName = params['DocName']
          @PageContent = params['PageContent']
          @Question = params['Question']
          @Answer = params['Answer']
          @Confidence = params['Confidence']
          @Mark = params['Mark']
          unless params['Highlights'].nil?
            @Highlights = []
            params['Highlights'].each do |i|
              highlight_tmp = Highlight.new
              highlight_tmp.deserialize(i)
              @Highlights << highlight_tmp
            end
          end
          @OrgData = params['OrgData']
          @PageInfos = params['PageInfos']
          @SheetInfos = params['SheetInfos']
          @DocBizId = params['DocBizId']
          @KnowledgeBizId = params['KnowledgeBizId']
        end
      end

      # ReferShareKnowledge请求参数结构体
      class ReferShareKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用业务id
        # @type AppBizId: String
        # @param KnowledgeBizId: 共享知识库业务id列表
        # @type KnowledgeBizId: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :AppBizId, :KnowledgeBizId, :LoginUin, :LoginSubAccountUin

        def initialize(appbizid=nil, knowledgebizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @AppBizId = appbizid
          @KnowledgeBizId = knowledgebizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @KnowledgeBizId = params['KnowledgeBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ReferShareKnowledge返回参数结构体
      class ReferShareKnowledgeResponse < TencentCloud::Common::AbstractModel
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

      # 发布拒答
      class RejectedQuestion < TencentCloud::Common::AbstractModel
        # @param RejectedBizId: 拒答问题ID


        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RejectedBizId: String
        # @param Question: 被拒答的问题

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param UpdateTime: 更新时间

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param IsAllowEdit: 是否允许编辑

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowEdit: Boolean
        # @param IsAllowDelete: 是否允许删除

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowDelete: Boolean

        attr_accessor :RejectedBizId, :Question, :Status, :StatusDesc, :UpdateTime, :IsAllowEdit, :IsAllowDelete

        def initialize(rejectedbizid=nil, question=nil, status=nil, statusdesc=nil, updatetime=nil, isallowedit=nil, isallowdelete=nil)
          @RejectedBizId = rejectedbizid
          @Question = question
          @Status = status
          @StatusDesc = statusdesc
          @UpdateTime = updatetime
          @IsAllowEdit = isallowedit
          @IsAllowDelete = isallowdelete
        end

        def deserialize(params)
          @RejectedBizId = params['RejectedBizId']
          @Question = params['Question']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @UpdateTime = params['UpdateTime']
          @IsAllowEdit = params['IsAllowEdit']
          @IsAllowDelete = params['IsAllowDelete']
        end
      end

      # 发布配置项
      class ReleaseConfigs < TencentCloud::Common::AbstractModel
        # @param ConfigItem: 配置项描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigItem: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Action: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: Integer
        # @param Value: 变更后的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param LastValue: 变更前的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastValue: String
        # @param Content: 变更内容(优先级展示content内容,content为空取value内容)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Message: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :ConfigItem, :UpdateTime, :Action, :Value, :LastValue, :Content, :Message

        def initialize(configitem=nil, updatetime=nil, action=nil, value=nil, lastvalue=nil, content=nil, message=nil)
          @ConfigItem = configitem
          @UpdateTime = updatetime
          @Action = action
          @Value = value
          @LastValue = lastvalue
          @Content = content
          @Message = message
        end

        def deserialize(params)
          @ConfigItem = params['ConfigItem']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @Value = params['Value']
          @LastValue = params['LastValue']
          @Content = params['Content']
          @Message = params['Message']
        end
      end

      # 发布文档详情
      class ReleaseDoc < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Action: 状态
        # @type Action: Integer
        # @param ActionDesc: 状态描述
        # @type ActionDesc: String
        # @param Message: 失败原因
        # @type Message: String
        # @param DocBizId: 文档业务ID
        # @type DocBizId: String

        attr_accessor :FileName, :FileType, :UpdateTime, :Action, :ActionDesc, :Message, :DocBizId

        def initialize(filename=nil, filetype=nil, updatetime=nil, action=nil, actiondesc=nil, message=nil, docbizid=nil)
          @FileName = filename
          @FileType = filetype
          @UpdateTime = updatetime
          @Action = action
          @ActionDesc = actiondesc
          @Message = message
          @DocBizId = docbizid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @ActionDesc = params['ActionDesc']
          @Message = params['Message']
          @DocBizId = params['DocBizId']
        end
      end

      # 发布问答
      class ReleaseQA < TencentCloud::Common::AbstractModel
        # @param Question: 问题
        # @type Question: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Action: 状态
        # @type Action: Integer
        # @param ActionDesc: 状态描述
        # @type ActionDesc: String
        # @param Source: 来源1:文档生成，2：批量导入，3：手动添加
        # @type Source: Integer
        # @param SourceDesc: 来源描述
        # @type SourceDesc: String
        # @param FileName: 文件名字
        # @type FileName: String
        # @param FileType: 文档类型
        # @type FileType: String
        # @param Message: 失败原因
        # @type Message: String
        # @param ReleaseStatus: 发布状态
        # @type ReleaseStatus: Integer
        # @param QaBizId: QAID
        # @type QaBizId: String
        # @param DocBizId: 文档业务ID
        # @type DocBizId: String

        attr_accessor :Question, :UpdateTime, :Action, :ActionDesc, :Source, :SourceDesc, :FileName, :FileType, :Message, :ReleaseStatus, :QaBizId, :DocBizId

        def initialize(question=nil, updatetime=nil, action=nil, actiondesc=nil, source=nil, sourcedesc=nil, filename=nil, filetype=nil, message=nil, releasestatus=nil, qabizid=nil, docbizid=nil)
          @Question = question
          @UpdateTime = updatetime
          @Action = action
          @ActionDesc = actiondesc
          @Source = source
          @SourceDesc = sourcedesc
          @FileName = filename
          @FileType = filetype
          @Message = message
          @ReleaseStatus = releasestatus
          @QaBizId = qabizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @Question = params['Question']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @ActionDesc = params['ActionDesc']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @Message = params['Message']
          @ReleaseStatus = params['ReleaseStatus']
          @QaBizId = params['QaBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # 发布拒答
      class ReleaseRejectedQuestion < TencentCloud::Common::AbstractModel
        # @param Question: 问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Action: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: Integer
        # @param ActionDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionDesc: String
        # @param Message: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Question, :UpdateTime, :Action, :ActionDesc, :Message

        def initialize(question=nil, updatetime=nil, action=nil, actiondesc=nil, message=nil)
          @Question = question
          @UpdateTime = updatetime
          @Action = action
          @ActionDesc = actiondesc
          @Message = message
        end

        def deserialize(params)
          @Question = params['Question']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @ActionDesc = params['ActionDesc']
          @Message = params['Message']
        end
      end

      # RenameDoc请求参数结构体
      class RenameDocRequest < TencentCloud::Common::AbstractModel
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param NewName: 新文档名，需要带上后缀
        # @type NewName: String

        attr_accessor :LoginUin, :LoginSubAccountUin, :BotBizId, :DocBizId, :NewName

        def initialize(loginuin=nil, loginsubaccountuin=nil, botbizid=nil, docbizid=nil, newname=nil)
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @BotBizId = botbizid
          @DocBizId = docbizid
          @NewName = newname
        end

        def deserialize(params)
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
          @NewName = params['NewName']
        end
      end

      # RenameDoc返回参数结构体
      class RenameDocResponse < TencentCloud::Common::AbstractModel
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

      # RetryDocAudit请求参数结构体
      class RetryDocAuditRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # RetryDocAudit返回参数结构体
      class RetryDocAuditResponse < TencentCloud::Common::AbstractModel
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

      # RetryDocParse请求参数结构体
      class RetryDocParseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # RetryDocParse返回参数结构体
      class RetryDocParseResponse < TencentCloud::Common::AbstractModel
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

      # RetryRelease请求参数结构体
      class RetryReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ReleaseBizId: 发布业务ID
        # @type ReleaseBizId: String

        attr_accessor :BotBizId, :ReleaseBizId

        def initialize(botbizid=nil, releasebizid=nil)
          @BotBizId = botbizid
          @ReleaseBizId = releasebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReleaseBizId = params['ReleaseBizId']
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

      # 节点信息
      class RunNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型，0:未指定，1:开始节点，2:API节点，3:询问节点，4:答案节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: Integer
        # @param NodeId: 节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param NodeName: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param InvokeApi: 请求的API
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeApi: :class:`Tencentcloud::Lke.v20231130.models.InvokeAPI`
        # @param SlotValues: 当前节点的所有槽位的值，key：SlotID。没有值的时候也要返回空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotValues: Array

        attr_accessor :NodeType, :NodeId, :NodeName, :InvokeApi, :SlotValues

        def initialize(nodetype=nil, nodeid=nil, nodename=nil, invokeapi=nil, slotvalues=nil)
          @NodeType = nodetype
          @NodeId = nodeid
          @NodeName = nodename
          @InvokeApi = invokeapi
          @SlotValues = slotvalues
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          unless params['InvokeApi'].nil?
            @InvokeApi = InvokeAPI.new
            @InvokeApi.deserialize(params['InvokeApi'])
          end
          unless params['SlotValues'].nil?
            @SlotValues = []
            params['SlotValues'].each do |i|
              valueinfo_tmp = ValueInfo.new
              valueinfo_tmp.deserialize(i)
              @SlotValues << valueinfo_tmp
            end
          end
        end
      end

      # SaveDoc请求参数结构体
      class SaveDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileType: 文档支持下面类型
        # pdf、doc、docx、ppt、mhtml、pptx、wps、ppsx，单个文件不超过200MB；
        # xlsx、xls、md、txt、csv、html，单个文件不超过20MB；

        # 图片支持下面类型：
        # jpg、png、jpeg、tiff、bmp、gif，单个文件不超过50MB
        # @type FileType: String
        # @param CosUrl: 平台cos路径，与DescribeStorageCredential接口查询UploadPath参数保持一致
        # @type CosUrl: String
        # @param ETag: ETag 全称为 Entity Tag，是对象被创建时标识对象内容的信息标签，可用于检查对象的内容是否发生变化 成功上传cos后，从返回头中获取
        # @type ETag: String
        # @param CosHash: cos_hash x-cos-hash-crc64ecma 头部中的 CRC64编码进行校验上传到云端的文件和本地文件的一致性
        # 成功上传cos后，从返回头中获取

        # 请注意：
        # cos_hash为文档唯一性标识，与文件名无关 相同的cos_hash会被判定为重复文档
        # @type CosHash: String
        # @param Size: 文件大小
        # @type Size: String
        # @param AttrRange: 标签适用范围，需要传参为1
        # @type AttrRange: Integer
        # @param Source: 来源（0 从本地文档导入），默认值为0
        # @type Source: Integer
        # @param WebUrl: 自定义链接地址, IsRefer为true的时候，该值才有意义
        # @type WebUrl: String
        # @param AttrLabels: 标签引用
        # @type AttrLabels: Array
        # @param ReferUrlType: 外部引用链接类型 0：系统链接 1：自定义链接
        # 值为1时，WebUrl 字段不能为空，否则不生效。
        # @type ReferUrlType: Integer
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param IsRefer: 是否引用链接
        # @type IsRefer: Boolean
        # @param Opt: 文档操作类型：1：批量导入（批量导入问答对）；2:文档导入（正常导入单个文档） 默认为1  <br> 请注意，opt=1的时候请从腾讯云智能体开发平台页面下载excel模板
        # @type Opt: Integer
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param IsDownload: 是否可下载，IsRefer为true并且ReferUrlType为0时，该值才有意义
        # @type IsDownload: Boolean

        attr_accessor :BotBizId, :FileName, :FileType, :CosUrl, :ETag, :CosHash, :Size, :AttrRange, :Source, :WebUrl, :AttrLabels, :ReferUrlType, :ExpireStart, :ExpireEnd, :IsRefer, :Opt, :CateBizId, :IsDownload

        def initialize(botbizid=nil, filename=nil, filetype=nil, cosurl=nil, etag=nil, coshash=nil, size=nil, attrrange=nil, source=nil, weburl=nil, attrlabels=nil, referurltype=nil, expirestart=nil, expireend=nil, isrefer=nil, opt=nil, catebizid=nil, isdownload=nil)
          @BotBizId = botbizid
          @FileName = filename
          @FileType = filetype
          @CosUrl = cosurl
          @ETag = etag
          @CosHash = coshash
          @Size = size
          @AttrRange = attrrange
          @Source = source
          @WebUrl = weburl
          @AttrLabels = attrlabels
          @ReferUrlType = referurltype
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @IsRefer = isrefer
          @Opt = opt
          @CateBizId = catebizid
          @IsDownload = isdownload
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @ETag = params['ETag']
          @CosHash = params['CosHash']
          @Size = params['Size']
          @AttrRange = params['AttrRange']
          @Source = params['Source']
          @WebUrl = params['WebUrl']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @ReferUrlType = params['ReferUrlType']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          @IsRefer = params['IsRefer']
          @Opt = params['Opt']
          @CateBizId = params['CateBizId']
          @IsDownload = params['IsDownload']
        end
      end

      # SaveDoc返回参数结构体
      class SaveDocResponse < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param ErrorMsg: 导入错误信息
        # @type ErrorMsg: String
        # @param ErrorLink: 错误链接
        # @type ErrorLink: String
        # @param ErrorLinkText: 错误链接文本
        # @type ErrorLinkText: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocBizId, :ErrorMsg, :ErrorLink, :ErrorLinkText, :RequestId

        def initialize(docbizid=nil, errormsg=nil, errorlink=nil, errorlinktext=nil, requestid=nil)
          @DocBizId = docbizid
          @ErrorMsg = errormsg
          @ErrorLink = errorlink
          @ErrorLinkText = errorlinktext
          @RequestId = requestid
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @ErrorMsg = params['ErrorMsg']
          @ErrorLink = params['ErrorLink']
          @ErrorLinkText = params['ErrorLinkText']
          @RequestId = params['RequestId']
        end
      end

      # 检索范围配置
      class SearchRange < TencentCloud::Common::AbstractModel
        # @param Condition: 检索条件and/or
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: String
        # @param ApiVarAttrInfos: 自定义变量和标签关系数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiVarAttrInfos: Array

        attr_accessor :Condition, :ApiVarAttrInfos

        def initialize(condition=nil, apivarattrinfos=nil)
          @Condition = condition
          @ApiVarAttrInfos = apivarattrinfos
        end

        def deserialize(params)
          @Condition = params['Condition']
          unless params['ApiVarAttrInfos'].nil?
            @ApiVarAttrInfos = []
            params['ApiVarAttrInfos'].each do |i|
              apivarattrinfo_tmp = ApiVarAttrInfo.new
              apivarattrinfo_tmp.deserialize(i)
              @ApiVarAttrInfos << apivarattrinfo_tmp
            end
          end
        end
      end

      # 知识库检索策略
      class SearchStrategy < TencentCloud::Common::AbstractModel
        # @param StrategyType: 检索策略类型 0:混合检索，1：语义检索
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyType: Integer
        # @param TableEnhancement: Excel检索增强开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableEnhancement: Boolean

        attr_accessor :StrategyType, :TableEnhancement

        def initialize(strategytype=nil, tableenhancement=nil)
          @StrategyType = strategytype
          @TableEnhancement = tableenhancement
        end

        def deserialize(params)
          @StrategyType = params['StrategyType']
          @TableEnhancement = params['TableEnhancement']
        end
      end

      # 共享知识库配置
      class ShareKnowledgeBase < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库ID
        # @type KnowledgeBizId: String
        # @param SearchRange: 检索范围
        # @type SearchRange: :class:`Tencentcloud::Lke.v20231130.models.SearchRange`

        attr_accessor :KnowledgeBizId, :SearchRange

        def initialize(knowledgebizid=nil, searchrange=nil)
          @KnowledgeBizId = knowledgebizid
          @SearchRange = searchrange
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
          unless params['SearchRange'].nil?
            @SearchRange = SearchRange.new
            @SearchRange.deserialize(params['SearchRange'])
          end
        end
      end

      # 相似问信息
      class SimilarQuestion < TencentCloud::Common::AbstractModel
        # @param SimBizId: 相似问ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SimBizId: String
        # @param Question: 相似问内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param AuditStatus: 相似问审核状态，1审核失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditStatus: Integer

        attr_accessor :SimBizId, :Question, :AuditStatus

        def initialize(simbizid=nil, question=nil, auditstatus=nil)
          @SimBizId = simbizid
          @Question = question
          @AuditStatus = auditstatus
        end

        def deserialize(params)
          @SimBizId = params['SimBizId']
          @Question = params['Question']
          @AuditStatus = params['AuditStatus']
        end
      end

      # 相似问修改(更新)信息
      class SimilarQuestionModify < TencentCloud::Common::AbstractModel
        # @param AddQuestions: 需要添加的相似问(内容)列表
        # @type AddQuestions: Array
        # @param UpdateQuestions: 需要更新的相似问列表
        # @type UpdateQuestions: Array
        # @param DeleteQuestions: 需要删除的相似问列表
        # @type DeleteQuestions: Array

        attr_accessor :AddQuestions, :UpdateQuestions, :DeleteQuestions

        def initialize(addquestions=nil, updatequestions=nil, deletequestions=nil)
          @AddQuestions = addquestions
          @UpdateQuestions = updatequestions
          @DeleteQuestions = deletequestions
        end

        def deserialize(params)
          @AddQuestions = params['AddQuestions']
          unless params['UpdateQuestions'].nil?
            @UpdateQuestions = []
            params['UpdateQuestions'].each do |i|
              similarquestion_tmp = SimilarQuestion.new
              similarquestion_tmp.deserialize(i)
              @UpdateQuestions << similarquestion_tmp
            end
          end
          unless params['DeleteQuestions'].nil?
            @DeleteQuestions = []
            params['DeleteQuestions'].each do |i|
              similarquestion_tmp = SimilarQuestion.new
              similarquestion_tmp.deserialize(i)
              @DeleteQuestions << similarquestion_tmp
            end
          end
        end
      end

      # 计费统计信息
      class Stat < TencentCloud::Common::AbstractModel
        # @param X: X轴: 时间区域；根据查询条件的粒度返回“分/小时/日”三种区间范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: String
        # @param Y: Y轴: 该时间区域内的统计值，如token消耗量，调用次数或使用量等信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float

        attr_accessor :X, :Y

        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # 大模型token统计信息
      class StatisticInfo < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param FirstTokenCost: 首Token耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstTokenCost: Integer
        # @param TotalCost: 总耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: Integer
        # @param InputTokens: 输入Token数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputTokens: Integer
        # @param OutputTokens: 输出Token数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputTokens: Integer
        # @param TotalTokens: 总Token数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTokens: Integer

        attr_accessor :ModelName, :FirstTokenCost, :TotalCost, :InputTokens, :OutputTokens, :TotalTokens

        def initialize(modelname=nil, firsttokencost=nil, totalcost=nil, inputtokens=nil, outputtokens=nil, totaltokens=nil)
          @ModelName = modelname
          @FirstTokenCost = firsttokencost
          @TotalCost = totalcost
          @InputTokens = inputtokens
          @OutputTokens = outputtokens
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @FirstTokenCost = params['FirstTokenCost']
          @TotalCost = params['TotalCost']
          @InputTokens = params['InputTokens']
          @OutputTokens = params['OutputTokens']
          @TotalTokens = params['TotalTokens']
        end
      end

      # StopDocParse请求参数结构体
      class StopDocParseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # StopDocParse返回参数结构体
      class StopDocParseResponse < TencentCloud::Common::AbstractModel
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

      # StopWorkflowRun请求参数结构体
      class StopWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowRunId: 工作流运行实例ID
        # @type WorkflowRunId: String

        attr_accessor :WorkflowRunId

        def initialize(workflowrunid=nil)
          @WorkflowRunId = workflowrunid
        end

        def deserialize(params)
          @WorkflowRunId = params['WorkflowRunId']
        end
      end

      # StopWorkflowRun返回参数结构体
      class StopWorkflowRunResponse < TencentCloud::Common::AbstractModel
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

      # 字符串KV信息
      class StrValue < TencentCloud::Common::AbstractModel
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

      # 知识摘要应用配置
      class SummaryConfig < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AppModel`
        # @param Output: 知识摘要输出配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Lke.v20231130.models.SummaryOutput`
        # @param Greeting: 欢迎语，200字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Greeting: String

        attr_accessor :Model, :Output, :Greeting

        def initialize(model=nil, output=nil, greeting=nil)
          @Model = model
          @Output = output
          @Greeting = greeting
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = AppModel.new
            @Model.deserialize(params['Model'])
          end
          unless params['Output'].nil?
            @Output = SummaryOutput.new
            @Output.deserialize(params['Output'])
          end
          @Greeting = params['Greeting']
        end
      end

      # 知识摘要输出配置
      class SummaryOutput < TencentCloud::Common::AbstractModel
        # @param Method: 输出方式 1：流式 2：非流式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: Integer
        # @param Requirement: 输出要求 1：文本总结 2：自定义要求
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Requirement: Integer
        # @param RequireCommand: 自定义要求指令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequireCommand: String

        attr_accessor :Method, :Requirement, :RequireCommand

        def initialize(method=nil, requirement=nil, requirecommand=nil)
          @Method = method
          @Requirement = requirement
          @RequireCommand = requirecommand
        end

        def deserialize(params)
          @Method = params['Method']
          @Requirement = params['Requirement']
          @RequireCommand = params['RequireCommand']
        end
      end

      # 变量详情
      class TaskFLowVar < TencentCloud::Common::AbstractModel
        # @param VarId: 变量ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VarId: String
        # @param VarName: 变量名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VarName: String
        # @param VarDesc: 变量描述（默认为"-"）
        # @type VarDesc: String
        # @param VarType: 变量类型 (STRING,INT,FLOAT,BOOL,OBJECT,ARRAY_STRING,ARRAY_INT,ARRAY_FLOAT,ARRAY_BOOL,ARRAY_OBJECT,FILE,DOCUMENT,IMAGE,AUDIO)
        # @type VarType: String
        # @param VarDefaultValue: 自定义变量默认值
        # @type VarDefaultValue: String
        # @param VarDefaultFileName: 自定义变量文件默认名称
        # @type VarDefaultFileName: String

        attr_accessor :VarId, :VarName, :VarDesc, :VarType, :VarDefaultValue, :VarDefaultFileName

        def initialize(varid=nil, varname=nil, vardesc=nil, vartype=nil, vardefaultvalue=nil, vardefaultfilename=nil)
          @VarId = varid
          @VarName = varname
          @VarDesc = vardesc
          @VarType = vartype
          @VarDefaultValue = vardefaultvalue
          @VarDefaultFileName = vardefaultfilename
        end

        def deserialize(params)
          @VarId = params['VarId']
          @VarName = params['VarName']
          @VarDesc = params['VarDesc']
          @VarType = params['VarType']
          @VarDefaultValue = params['VarDefaultValue']
          @VarDefaultFileName = params['VarDefaultFileName']
        end
      end

      # 任务流程信息
      class TaskFlowInfo < TencentCloud::Common::AbstractModel
        # @param TaskFlowId: 任务流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFlowId: String
        # @param TaskFlowName: 任务流程名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFlowName: String
        # @param QueryRewrite: Query 重写结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryRewrite: String
        # @param HitIntent: 命中意图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitIntent: String
        # @param Type: 任务流程回复类型
        # 0: 任务流回复
        # 1: 任务流静默
        # 2: 任务流拉回话术
        # 3: 任务流自定义回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer

        attr_accessor :TaskFlowId, :TaskFlowName, :QueryRewrite, :HitIntent, :Type

        def initialize(taskflowid=nil, taskflowname=nil, queryrewrite=nil, hitintent=nil, type=nil)
          @TaskFlowId = taskflowid
          @TaskFlowName = taskflowname
          @QueryRewrite = queryrewrite
          @HitIntent = hitintent
          @Type = type
        end

        def deserialize(params)
          @TaskFlowId = params['TaskFlowId']
          @TaskFlowName = params['TaskFlowName']
          @QueryRewrite = params['QueryRewrite']
          @HitIntent = params['HitIntent']
          @Type = params['Type']
        end
      end

      # 任务流程调试信息
      class TaskFlowSummary < TencentCloud::Common::AbstractModel
        # @param IntentName: 任务流程名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentName: String
        # @param UpdatedSlotValues: 实体列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedSlotValues: Array
        # @param RunNodes: 节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunNodes: Array
        # @param Purposes: 意图判断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Purposes: Array

        attr_accessor :IntentName, :UpdatedSlotValues, :RunNodes, :Purposes

        def initialize(intentname=nil, updatedslotvalues=nil, runnodes=nil, purposes=nil)
          @IntentName = intentname
          @UpdatedSlotValues = updatedslotvalues
          @RunNodes = runnodes
          @Purposes = purposes
        end

        def deserialize(params)
          @IntentName = params['IntentName']
          unless params['UpdatedSlotValues'].nil?
            @UpdatedSlotValues = []
            params['UpdatedSlotValues'].each do |i|
              valueinfo_tmp = ValueInfo.new
              valueinfo_tmp.deserialize(i)
              @UpdatedSlotValues << valueinfo_tmp
            end
          end
          unless params['RunNodes'].nil?
            @RunNodes = []
            params['RunNodes'].each do |i|
              runnodeinfo_tmp = RunNodeInfo.new
              runnodeinfo_tmp.deserialize(i)
              @RunNodes << runnodeinfo_tmp
            end
          end
          @Purposes = params['Purposes']
        end
      end

      # 任务参数
      class TaskParams < TencentCloud::Common::AbstractModel
        # @param CosPath: 下载地址,需要通过cos桶临时密钥去下载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPath: String

        attr_accessor :CosPath

        def initialize(cospath=nil)
          @CosPath = cospath
        end

        def deserialize(params)
          @CosPath = params['CosPath']
        end
      end

      # 当前执行的 token 统计信息
      class TokenStat < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param RequestId: 请求 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestId: String
        # @param RecordId: 对应哪条会话, 会话 ID, 用于回答的消息存储使用, 可提前生成, 保存消息时使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordId: String
        # @param UsedCount: token 已使用数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedCount: Integer
        # @param FreeCount: 免费 token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeCount: Integer
        # @param OrderCount: 订单总 token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderCount: Integer
        # @param StatusSummary: 当前执行状态汇总, 常量: 使用中: processing, 成功: success, 失败: failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusSummary: String
        # @param StatusSummaryTitle: 当前执行状态汇总后中文展示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusSummaryTitle: String
        # @param Elapsed: 当前请求执行时间, 单位 ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Elapsed: Integer
        # @param TokenCount: 当前请求消耗 token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenCount: Integer
        # @param Procedures: 执行过程信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procedures: Array
        # @param TraceId: 执行过程信息TraceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceId: String

        attr_accessor :SessionId, :RequestId, :RecordId, :UsedCount, :FreeCount, :OrderCount, :StatusSummary, :StatusSummaryTitle, :Elapsed, :TokenCount, :Procedures, :TraceId

        def initialize(sessionid=nil, requestid=nil, recordid=nil, usedcount=nil, freecount=nil, ordercount=nil, statussummary=nil, statussummarytitle=nil, elapsed=nil, tokencount=nil, procedures=nil, traceid=nil)
          @SessionId = sessionid
          @RequestId = requestid
          @RecordId = recordid
          @UsedCount = usedcount
          @FreeCount = freecount
          @OrderCount = ordercount
          @StatusSummary = statussummary
          @StatusSummaryTitle = statussummarytitle
          @Elapsed = elapsed
          @TokenCount = tokencount
          @Procedures = procedures
          @TraceId = traceid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
          @RecordId = params['RecordId']
          @UsedCount = params['UsedCount']
          @FreeCount = params['FreeCount']
          @OrderCount = params['OrderCount']
          @StatusSummary = params['StatusSummary']
          @StatusSummaryTitle = params['StatusSummaryTitle']
          @Elapsed = params['Elapsed']
          @TokenCount = params['TokenCount']
          unless params['Procedures'].nil?
            @Procedures = []
            params['Procedures'].each do |i|
              procedure_tmp = Procedure.new
              procedure_tmp.deserialize(i)
              @Procedures << procedure_tmp
            end
          end
          @TraceId = params['TraceId']
        end
      end

      # 不满意回复
      class UnsatisfiedReply < TencentCloud::Common::AbstractModel
        # @param ReplyBizId: 不满意回复ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplyBizId: String
        # @param RecordBizId: 消息记录ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordBizId: String
        # @param Question: 用户问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param Answer: 应用回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Answer: String
        # @param Reasons: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reasons: Array

        attr_accessor :ReplyBizId, :RecordBizId, :Question, :Answer, :Reasons

        def initialize(replybizid=nil, recordbizid=nil, question=nil, answer=nil, reasons=nil)
          @ReplyBizId = replybizid
          @RecordBizId = recordbizid
          @Question = question
          @Answer = answer
          @Reasons = reasons
        end

        def deserialize(params)
          @ReplyBizId = params['ReplyBizId']
          @RecordBizId = params['RecordBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @Reasons = params['Reasons']
        end
      end

      # UpdateSharedKnowledge请求参数结构体
      class UpdateSharedKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库业务ID
        # @type KnowledgeBizId: String
        # @param Info: 共享知识库更新信息
        # @type Info: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeUpdateInfo`

        attr_accessor :KnowledgeBizId, :Info

        def initialize(knowledgebizid=nil, info=nil)
          @KnowledgeBizId = knowledgebizid
          @Info = info
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
          unless params['Info'].nil?
            @Info = KnowledgeUpdateInfo.new
            @Info.deserialize(params['Info'])
          end
        end
      end

      # UpdateSharedKnowledge返回参数结构体
      class UpdateSharedKnowledgeResponse < TencentCloud::Common::AbstractModel
        # @param KnowledgeBizId: 共享知识库业务ID
        # @type KnowledgeBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KnowledgeBizId, :RequestId

        def initialize(knowledgebizid=nil, requestid=nil)
          @KnowledgeBizId = knowledgebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @KnowledgeBizId = params['KnowledgeBizId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateVar请求参数结构体
      class UpdateVarRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param VarId: 变量ID
        # @type VarId: String
        # @param VarName: 变量名称，最大支持50个字符
        # @type VarName: String
        # @param VarDesc: 参数描述
        # @type VarDesc: String
        # @param VarType: 参数类型
        # @type VarType: String
        # @param VarDefaultValue: 自定义变量默认值
        # @type VarDefaultValue: String
        # @param VarDefaultFileName: 自定义变量文件默认名称
        # @type VarDefaultFileName: String

        attr_accessor :AppBizId, :VarId, :VarName, :VarDesc, :VarType, :VarDefaultValue, :VarDefaultFileName

        def initialize(appbizid=nil, varid=nil, varname=nil, vardesc=nil, vartype=nil, vardefaultvalue=nil, vardefaultfilename=nil)
          @AppBizId = appbizid
          @VarId = varid
          @VarName = varname
          @VarDesc = vardesc
          @VarType = vartype
          @VarDefaultValue = vardefaultvalue
          @VarDefaultFileName = vardefaultfilename
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @VarId = params['VarId']
          @VarName = params['VarName']
          @VarDesc = params['VarDesc']
          @VarType = params['VarType']
          @VarDefaultValue = params['VarDefaultValue']
          @VarDefaultFileName = params['VarDefaultFileName']
        end
      end

      # UpdateVar返回参数结构体
      class UpdateVarResponse < TencentCloud::Common::AbstractModel
        # @param VarId: 变量ID
        # @type VarId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VarId, :RequestId

        def initialize(varid=nil, requestid=nil)
          @VarId = varid
          @RequestId = requestid
        end

        def deserialize(params)
          @VarId = params['VarId']
          @RequestId = params['RequestId']
        end
      end

      # UploadAttributeLabel请求参数结构体
      class UploadAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param CosUrl: cos路径
        # @type CosUrl: String
        # @param CosHash: x-cos-hash-crc64ecma 头部中的 CRC64编码进行校验上传到云端的文件和本地文件的一致性
        # @type CosHash: String
        # @param Size: 文件大小
        # @type Size: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :FileName, :CosUrl, :CosHash, :Size, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, filename=nil, cosurl=nil, coshash=nil, size=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @FileName = filename
          @CosUrl = cosurl
          @CosHash = coshash
          @Size = size
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @FileName = params['FileName']
          @CosUrl = params['CosUrl']
          @CosHash = params['CosHash']
          @Size = params['Size']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # UploadAttributeLabel返回参数结构体
      class UploadAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 导入错误
        # @type ErrorMsg: String
        # @param ErrorLink: 错误链接
        # @type ErrorLink: String
        # @param ErrorLinkText: 错误链接文本
        # @type ErrorLinkText: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :ErrorLink, :ErrorLinkText, :RequestId

        def initialize(errormsg=nil, errorlink=nil, errorlinktext=nil, requestid=nil)
          @ErrorMsg = errormsg
          @ErrorLink = errorlink
          @ErrorLinkText = errorlinktext
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @ErrorLink = params['ErrorLink']
          @ErrorLinkText = params['ErrorLinkText']
          @RequestId = params['RequestId']
        end
      end

      # 用户基础信息
      class UserBaseInfo < TencentCloud::Common::AbstractModel
        # @param UserBizId: 用户ID
        # @type UserBizId: String
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String

        attr_accessor :UserBizId, :UserName

        def initialize(userbizid=nil, username=nil)
          @UserBizId = userbizid
          @UserName = username
        end

        def deserialize(params)
          @UserBizId = params['UserBizId']
          @UserName = params['UserName']
        end
      end

      # 任务流程参数信息
      class ValueInfo < TencentCloud::Common::AbstractModel
        # @param Id: 值ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ValueType: 值类型：0:未知或者空, 1:string, 2:int, 3:float, 4:bool, 5:array(字符串数组), 6: object_array(结构体数组), 7: object(结构体)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueType: Integer
        # @param ValueStr: string
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueStr: String
        # @param ValueInt: int（避免精度丢失使用字符串返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueInt: String
        # @param ValueFloat: float
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueFloat: Float
        # @param ValueBool: bool
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueBool: Boolean
        # @param ValueStrArray: array
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueStrArray: Array

        attr_accessor :Id, :Name, :ValueType, :ValueStr, :ValueInt, :ValueFloat, :ValueBool, :ValueStrArray

        def initialize(id=nil, name=nil, valuetype=nil, valuestr=nil, valueint=nil, valuefloat=nil, valuebool=nil, valuestrarray=nil)
          @Id = id
          @Name = name
          @ValueType = valuetype
          @ValueStr = valuestr
          @ValueInt = valueint
          @ValueFloat = valuefloat
          @ValueBool = valuebool
          @ValueStrArray = valuestrarray
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ValueType = params['ValueType']
          @ValueStr = params['ValueStr']
          @ValueInt = params['ValueInt']
          @ValueFloat = params['ValueFloat']
          @ValueBool = params['ValueBool']
          @ValueStrArray = params['ValueStrArray']
        end
      end

      # VerifyQA请求参数结构体
      class VerifyQARequest < TencentCloud::Common::AbstractModel
        # @param List: 问答列表
        # @type List: Array
        # @param BotBizId: 应用ID
        # @type BotBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :List, :BotBizId, :LoginUin, :LoginSubAccountUin

        def initialize(list=nil, botbizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @List = list
          @BotBizId = botbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              qalist_tmp = QAList.new
              qalist_tmp.deserialize(i)
              @List << qalist_tmp
            end
          end
          @BotBizId = params['BotBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # VerifyQA返回参数结构体
      class VerifyQAResponse < TencentCloud::Common::AbstractModel
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

      # 音色参数
      class VoiceConfig < TencentCloud::Common::AbstractModel
        # @param VoiceType: 公有云音色id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceType: Integer
        # @param TimbreKey: 音色key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimbreKey: String
        # @param VoiceName: 音色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceName: String

        attr_accessor :VoiceType, :TimbreKey, :VoiceName

        def initialize(voicetype=nil, timbrekey=nil, voicename=nil)
          @VoiceType = voicetype
          @TimbreKey = timbrekey
          @VoiceName = voicename
        end

        def deserialize(params)
          @VoiceType = params['VoiceType']
          @TimbreKey = params['TimbreKey']
          @VoiceName = params['VoiceName']
        end
      end

      # 工作流程调试信息
      class WorkFlowSummary < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowRunId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param RunNodes: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunNodes: Array
        # @param OptionCards: 选项卡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptionCards: Array
        # @param Outputs: 多气泡的输出结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Outputs: Array
        # @param WorkflowReleaseTime: 工作流发布时间，unix时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowReleaseTime: String

        attr_accessor :WorkflowId, :WorkflowName, :WorkflowRunId, :RunNodes, :OptionCards, :Outputs, :WorkflowReleaseTime

        def initialize(workflowid=nil, workflowname=nil, workflowrunid=nil, runnodes=nil, optioncards=nil, outputs=nil, workflowreleasetime=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @WorkflowRunId = workflowrunid
          @RunNodes = runnodes
          @OptionCards = optioncards
          @Outputs = outputs
          @WorkflowReleaseTime = workflowreleasetime
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @WorkflowRunId = params['WorkflowRunId']
          unless params['RunNodes'].nil?
            @RunNodes = []
            params['RunNodes'].each do |i|
              workflowrunnodeinfo_tmp = WorkflowRunNodeInfo.new
              workflowrunnodeinfo_tmp.deserialize(i)
              @RunNodes << workflowrunnodeinfo_tmp
            end
          end
          @OptionCards = params['OptionCards']
          @Outputs = params['Outputs']
          @WorkflowReleaseTime = params['WorkflowReleaseTime']
        end
      end

      # 工作流信息
      class WorkflowInfo < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowRunId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param OptionCards: 选项卡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptionCards: Array
        # @param Outputs: 多气泡的输出结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Outputs: Array
        # @param WorkflowReleaseTime: 工作流发布时间，unix时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowReleaseTime: String

        attr_accessor :WorkflowId, :WorkflowName, :WorkflowRunId, :OptionCards, :Outputs, :WorkflowReleaseTime

        def initialize(workflowid=nil, workflowname=nil, workflowrunid=nil, optioncards=nil, outputs=nil, workflowreleasetime=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @WorkflowRunId = workflowrunid
          @OptionCards = optioncards
          @Outputs = outputs
          @WorkflowReleaseTime = workflowreleasetime
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @WorkflowRunId = params['WorkflowRunId']
          @OptionCards = params['OptionCards']
          @Outputs = params['Outputs']
          @WorkflowReleaseTime = params['WorkflowReleaseTime']
        end
      end

      # WorkflowRef详情
      class WorkflowRef < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 任务流ID
        # @type WorkflowId: String
        # @param WorkflowName: 任务流名称
        # @type WorkflowName: String
        # @param WorkflowDesc: 任务流描述
        # @type WorkflowDesc: String
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer

        attr_accessor :WorkflowId, :WorkflowName, :WorkflowDesc, :AppBizId, :UpdateTime

        def initialize(workflowid=nil, workflowname=nil, workflowdesc=nil, appbizid=nil, updatetime=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @WorkflowDesc = workflowdesc
          @AppBizId = appbizid
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @WorkflowDesc = params['WorkflowDesc']
          @AppBizId = params['AppBizId']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 工作流运行实例的基本信息
      class WorkflowRunBase < TencentCloud::Common::AbstractModel
        # @param RunEnv: 运行环境。0: 测试环境； 1: 正式环境
        # @type RunEnv: Integer
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param WorkflowRunId: 工作流运行实例的ID
        # @type WorkflowRunId: String
        # @param WorkflowId: 所属工作流ID
        # @type WorkflowId: String
        # @param Name: 名称
        # @type Name: String
        # @param State: 运行状态。0: 排队中；1: 运行中；2: 运行成功；3: 运行失败； 4: 已取消
        # @type State: Integer
        # @param FailMessage: 错误信息
        # @type FailMessage: String
        # @param TotalTokens: 消耗的token总数
        # @type TotalTokens: Integer
        # @param CreateTime: 创建时间（毫秒时间戳）
        # @type CreateTime: String
        # @param StartTime: 开始时间（毫秒时间戳）
        # @type StartTime: String
        # @param EndTime: 结束时间（毫秒时间戳）
        # @type EndTime: String

        attr_accessor :RunEnv, :AppBizId, :WorkflowRunId, :WorkflowId, :Name, :State, :FailMessage, :TotalTokens, :CreateTime, :StartTime, :EndTime

        def initialize(runenv=nil, appbizid=nil, workflowrunid=nil, workflowid=nil, name=nil, state=nil, failmessage=nil, totaltokens=nil, createtime=nil, starttime=nil, endtime=nil)
          @RunEnv = runenv
          @AppBizId = appbizid
          @WorkflowRunId = workflowrunid
          @WorkflowId = workflowid
          @Name = name
          @State = state
          @FailMessage = failmessage
          @TotalTokens = totaltokens
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @RunEnv = params['RunEnv']
          @AppBizId = params['AppBizId']
          @WorkflowRunId = params['WorkflowRunId']
          @WorkflowId = params['WorkflowId']
          @Name = params['Name']
          @State = params['State']
          @FailMessage = params['FailMessage']
          @TotalTokens = params['TotalTokens']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 工作流运行实例详情
      class WorkflowRunDetail < TencentCloud::Common::AbstractModel
        # @param RunEnv: 运行环境。0: 测试环境； 1: 正式环境
        # @type RunEnv: Integer
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param WorkflowRunId: 工作流运行实例的ID
        # @type WorkflowRunId: String
        # @param WorkflowId: 所属工作流ID
        # @type WorkflowId: String
        # @param Name: 名称
        # @type Name: String
        # @param State: 运行状态。0: 排队中；1: 运行中；2: 运行成功；3: 运行失败； 4: 已取消
        # @type State: Integer
        # @param FailMessage: 错误信息
        # @type FailMessage: String
        # @param TotalTokens: 消耗的token总数
        # @type TotalTokens: Integer
        # @param CreateTime: 创建时间（毫秒时间戳）
        # @type CreateTime: String
        # @param StartTime: 开始时间（毫秒时间戳）
        # @type StartTime: String
        # @param EndTime: 结束时间（毫秒时间戳）
        # @type EndTime: String
        # @param DialogJson: 工作流画布Json
        # @type DialogJson: String
        # @param Query: 用户的输入
        # @type Query: String
        # @param MainModelName: 主模型名称
        # @type MainModelName: String
        # @param CustomVariables: API参数配置
        # @type CustomVariables: Array

        attr_accessor :RunEnv, :AppBizId, :WorkflowRunId, :WorkflowId, :Name, :State, :FailMessage, :TotalTokens, :CreateTime, :StartTime, :EndTime, :DialogJson, :Query, :MainModelName, :CustomVariables

        def initialize(runenv=nil, appbizid=nil, workflowrunid=nil, workflowid=nil, name=nil, state=nil, failmessage=nil, totaltokens=nil, createtime=nil, starttime=nil, endtime=nil, dialogjson=nil, query=nil, mainmodelname=nil, customvariables=nil)
          @RunEnv = runenv
          @AppBizId = appbizid
          @WorkflowRunId = workflowrunid
          @WorkflowId = workflowid
          @Name = name
          @State = state
          @FailMessage = failmessage
          @TotalTokens = totaltokens
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @DialogJson = dialogjson
          @Query = query
          @MainModelName = mainmodelname
          @CustomVariables = customvariables
        end

        def deserialize(params)
          @RunEnv = params['RunEnv']
          @AppBizId = params['AppBizId']
          @WorkflowRunId = params['WorkflowRunId']
          @WorkflowId = params['WorkflowId']
          @Name = params['Name']
          @State = params['State']
          @FailMessage = params['FailMessage']
          @TotalTokens = params['TotalTokens']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DialogJson = params['DialogJson']
          @Query = params['Query']
          @MainModelName = params['MainModelName']
          unless params['CustomVariables'].nil?
            @CustomVariables = []
            params['CustomVariables'].each do |i|
              customvariable_tmp = CustomVariable.new
              customvariable_tmp.deserialize(i)
              @CustomVariables << customvariable_tmp
            end
          end
        end
      end

      # 工作流运行节点信息
      class WorkflowRunNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param NodeType: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: Integer
        # @param NodeName: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Input: 输入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: String
        # @param Output: 输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String
        # @param TaskOutput: 任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskOutput: String
        # @param FailMessage: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailMessage: String
        # @param CostMilliSeconds: 花费时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostMilliSeconds: Integer
        # @param StatisticInfos: 大模型输出信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticInfos: Array

        attr_accessor :NodeId, :NodeType, :NodeName, :Status, :Input, :Output, :TaskOutput, :FailMessage, :CostMilliSeconds, :StatisticInfos

        def initialize(nodeid=nil, nodetype=nil, nodename=nil, status=nil, input=nil, output=nil, taskoutput=nil, failmessage=nil, costmilliseconds=nil, statisticinfos=nil)
          @NodeId = nodeid
          @NodeType = nodetype
          @NodeName = nodename
          @Status = status
          @Input = input
          @Output = output
          @TaskOutput = taskoutput
          @FailMessage = failmessage
          @CostMilliSeconds = costmilliseconds
          @StatisticInfos = statisticinfos
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeType = params['NodeType']
          @NodeName = params['NodeName']
          @Status = params['Status']
          @Input = params['Input']
          @Output = params['Output']
          @TaskOutput = params['TaskOutput']
          @FailMessage = params['FailMessage']
          @CostMilliSeconds = params['CostMilliSeconds']
          unless params['StatisticInfos'].nil?
            @StatisticInfos = []
            params['StatisticInfos'].each do |i|
              statisticinfo_tmp = StatisticInfo.new
              statisticinfo_tmp.deserialize(i)
              @StatisticInfos << statisticinfo_tmp
            end
          end
        end
      end

    end
  end
end

