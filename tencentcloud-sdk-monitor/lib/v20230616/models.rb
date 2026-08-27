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
  module Monitor
    module V20230616
      # AI工作台SRE数字分身任务
      class AIWorkbenchSREDigitalTwinTask < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param TaskConfig: 任务配置
        # @type TaskConfig: String
        # @param ID: 唯一标识
        # @type ID: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param TwinID: 所属数字分身ID
        # @type TwinID: Integer

        attr_accessor :Name, :TaskType, :TaskConfig, :ID, :CreatedAt, :TwinID

        def initialize(name=nil, tasktype=nil, taskconfig=nil, id=nil, createdat=nil, twinid=nil)
          @Name = name
          @TaskType = tasktype
          @TaskConfig = taskconfig
          @ID = id
          @CreatedAt = createdat
          @TwinID = twinid
        end

        def deserialize(params)
          @Name = params['Name']
          @TaskType = params['TaskType']
          @TaskConfig = params['TaskConfig']
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
          @TwinID = params['TwinID']
        end
      end

      # AI工作台SRE数字分身任务列表
      class AIWorkbenchSREDigitalTwinTaskList < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param Total: 任务总数
        # @type Total: Integer

        attr_accessor :Tasks, :Total

        def initialize(tasks=nil, total=nil)
          @Tasks = tasks
          @Total = total
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              aiworkbenchsredigitaltwintask_tmp = AIWorkbenchSREDigitalTwinTask.new
              aiworkbenchsredigitaltwintask_tmp.deserialize(i)
              @Tasks << aiworkbenchsredigitaltwintask_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # AI工作台SRE数字分身工作日志
      class AIWorkbenchSREDigitalTwinWorkLog < TencentCloud::Common::AbstractModel
        # @param ID: 唯一标识符
        # @type ID: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param TwinID: 所属数字分身ID
        # @type TwinID: Integer
        # @param TaskID: 所属数字分身任务ID
        # @type TaskID: Integer
        # @param StartTime: 分析时间
        # @type StartTime: String
        # @param Status: 分析状态
        # @type Status: String
        # @param Result: 分析结果摘要
        # @type Result: String
        # @param TaskName: 所属任务名称
        # @type TaskName: String
        # @param TaskType: 所属任务类型
        # @type TaskType: String

        attr_accessor :ID, :CreatedAt, :TwinID, :TaskID, :StartTime, :Status, :Result, :TaskName, :TaskType

        def initialize(id=nil, createdat=nil, twinid=nil, taskid=nil, starttime=nil, status=nil, result=nil, taskname=nil, tasktype=nil)
          @ID = id
          @CreatedAt = createdat
          @TwinID = twinid
          @TaskID = taskid
          @StartTime = starttime
          @Status = status
          @Result = result
          @TaskName = taskname
          @TaskType = tasktype
        end

        def deserialize(params)
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
          @TwinID = params['TwinID']
          @TaskID = params['TaskID']
          @StartTime = params['StartTime']
          @Status = params['Status']
          @Result = params['Result']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
        end
      end

      # AI工作台SRE数字分身工作日志详细信息
      class AIWorkbenchSREDigitalTwinWorkLogDetail < TencentCloud::Common::AbstractModel
        # @param Content: 工作日志详细内容
        # @type Content: String
        # @param TaskType: 工作日志任务类型
        # @type TaskType: String
        # @param DialogID: 工作日志相关对话ID
        # @type DialogID: Integer

        attr_accessor :Content, :TaskType, :DialogID

        def initialize(content=nil, tasktype=nil, dialogid=nil)
          @Content = content
          @TaskType = tasktype
          @DialogID = dialogid
        end

        def deserialize(params)
          @Content = params['Content']
          @TaskType = params['TaskType']
          @DialogID = params['DialogID']
        end
      end

      # AI工作台SRE数字分身工作日志列表
      class AIWorkbenchSREDigitalTwinWorkLogList < TencentCloud::Common::AbstractModel
        # @param WorkLogs: 工作日志列表
        # @type WorkLogs: Array
        # @param Total: 总数
        # @type Total: Integer

        attr_accessor :WorkLogs, :Total

        def initialize(worklogs=nil, total=nil)
          @WorkLogs = worklogs
          @Total = total
        end

        def deserialize(params)
          unless params['WorkLogs'].nil?
            @WorkLogs = []
            params['WorkLogs'].each do |i|
              aiworkbenchsredigitaltwinworklog_tmp = AIWorkbenchSREDigitalTwinWorkLog.new
              aiworkbenchsredigitaltwinworklog_tmp.deserialize(i)
              @WorkLogs << aiworkbenchsredigitaltwinworklog_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # Agent 信息
      class AgentInfo < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param Name: <p>Agent 名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>Agent 描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Category: <p>Agent 分类</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param Status: <p>状态: draft/configured/running/standby/disabled</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param SkillIds: <p>关联技能 ID 列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillIds: Array
        # @param ResourceMapId: <p>关联的资源地图 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceMapId: String
        # @param MCPIds: <p>关联的mcp id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCPIds: Array
        # @param CamTags: <p>资源标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CamTags: Array
        # @param EnvVars: <p>agent运行时所需环境变量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvVars: Array

        attr_accessor :AgentId, :Name, :Description, :Category, :Status, :SkillIds, :ResourceMapId, :MCPIds, :CamTags, :EnvVars

        def initialize(agentid=nil, name=nil, description=nil, category=nil, status=nil, skillids=nil, resourcemapid=nil, mcpids=nil, camtags=nil, envvars=nil)
          @AgentId = agentid
          @Name = name
          @Description = description
          @Category = category
          @Status = status
          @SkillIds = skillids
          @ResourceMapId = resourcemapid
          @MCPIds = mcpids
          @CamTags = camtags
          @EnvVars = envvars
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Name = params['Name']
          @Description = params['Description']
          @Category = params['Category']
          @Status = params['Status']
          @SkillIds = params['SkillIds']
          @ResourceMapId = params['ResourceMapId']
          @MCPIds = params['MCPIds']
          unless params['CamTags'].nil?
            @CamTags = []
            params['CamTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @CamTags << tag_tmp
            end
          end
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
        end
      end

      # 告警中的Label
      class AlarmLable < TencentCloud::Common::AbstractModel
        # @param Name: label name
        # @type Name: String
        # @param Value: label value
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

      # 单个告警通知历史
      class AlarmNotifyHistory < TencentCloud::Common::AbstractModel
        # @param NotifyId: 通知的唯一ID
        # @type NotifyId: String
        # @param PolicyId: 告警策略ID
        # @type PolicyId: String
        # @param SessionId: 告警周期iD
        # @type SessionId: String
        # @param NotifyTime: 通知时间 unix秒级时间戳
        # @type NotifyTime: Integer
        # @param TriggerTime: 触发时间 unix秒级时间戳
        # @type TriggerTime: Integer
        # @param TriggerLevel: 告警级别 None 非分级告警级别; Note 提示级别; Warn 严重级别; Serious 紧急级别
        # @type TriggerLevel: String
        # @param AlarmContent: 告警内容
        # @type AlarmContent: String
        # @param AlarmObject: 告警对象
        # @type AlarmObject: String
        # @param ChannelSet: 本次告警通知涉及到的渠道合集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelSet: Array
        # @param ChannelsReceivers: 渠道的接收人信息
        # @type ChannelsReceivers: Array
        # @param PolicyName: 告警策略名称
        # @type PolicyName: String
        # @param PromeInstanceID: Prometheus实例ID, 仅当 MT_PROME 时有效
        # @type PromeInstanceID: String
        # @param PromeInstanceRegion: Prometheus实例所在的地域, 仅当 MT_PROME 时有效
        # @type PromeInstanceRegion: String
        # @param Notices: 通知模板相关的配置信息
        # @type Notices: Array
        # @param TriggerStatus: 告警触发状态  Trigger 告警状态触发; Recovery 告警状态恢复
        # @type TriggerStatus: String
        # @param PromeConsoleURL: 与当前Prometheus通知历史相关控制台页面地址，仅当 MR_PROME 时有效
        # @type PromeConsoleURL: String
        # @param Labels: 告警的lable
        # @type Labels: Array

        attr_accessor :NotifyId, :PolicyId, :SessionId, :NotifyTime, :TriggerTime, :TriggerLevel, :AlarmContent, :AlarmObject, :ChannelSet, :ChannelsReceivers, :PolicyName, :PromeInstanceID, :PromeInstanceRegion, :Notices, :TriggerStatus, :PromeConsoleURL, :Labels

        def initialize(notifyid=nil, policyid=nil, sessionid=nil, notifytime=nil, triggertime=nil, triggerlevel=nil, alarmcontent=nil, alarmobject=nil, channelset=nil, channelsreceivers=nil, policyname=nil, promeinstanceid=nil, promeinstanceregion=nil, notices=nil, triggerstatus=nil, promeconsoleurl=nil, labels=nil)
          @NotifyId = notifyid
          @PolicyId = policyid
          @SessionId = sessionid
          @NotifyTime = notifytime
          @TriggerTime = triggertime
          @TriggerLevel = triggerlevel
          @AlarmContent = alarmcontent
          @AlarmObject = alarmobject
          @ChannelSet = channelset
          @ChannelsReceivers = channelsreceivers
          @PolicyName = policyname
          @PromeInstanceID = promeinstanceid
          @PromeInstanceRegion = promeinstanceregion
          @Notices = notices
          @TriggerStatus = triggerstatus
          @PromeConsoleURL = promeconsoleurl
          @Labels = labels
        end

        def deserialize(params)
          @NotifyId = params['NotifyId']
          @PolicyId = params['PolicyId']
          @SessionId = params['SessionId']
          @NotifyTime = params['NotifyTime']
          @TriggerTime = params['TriggerTime']
          @TriggerLevel = params['TriggerLevel']
          @AlarmContent = params['AlarmContent']
          @AlarmObject = params['AlarmObject']
          @ChannelSet = params['ChannelSet']
          unless params['ChannelsReceivers'].nil?
            @ChannelsReceivers = []
            params['ChannelsReceivers'].each do |i|
              channelsreceivers_tmp = ChannelsReceivers.new
              channelsreceivers_tmp.deserialize(i)
              @ChannelsReceivers << channelsreceivers_tmp
            end
          end
          @PolicyName = params['PolicyName']
          @PromeInstanceID = params['PromeInstanceID']
          @PromeInstanceRegion = params['PromeInstanceRegion']
          unless params['Notices'].nil?
            @Notices = []
            params['Notices'].each do |i|
              notifyrelatednotice_tmp = NotifyRelatedNotice.new
              notifyrelatednotice_tmp.deserialize(i)
              @Notices << notifyrelatednotice_tmp
            end
          end
          @TriggerStatus = params['TriggerStatus']
          @PromeConsoleURL = params['PromeConsoleURL']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              alarmlable_tmp = AlarmLable.new
              alarmlable_tmp.deserialize(i)
              @Labels << alarmlable_tmp
            end
          end
        end
      end

      # 产物实体
      class ArtifactInfo < TencentCloud::Common::AbstractModel
        # @param ArtifactId: <p>产物 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArtifactId: String
        # @param Name: <p>产物名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param MimeType: <p>物理类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MimeType: String
        # @param SizeBytes: <p>文件大小(字节)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SizeBytes: Integer
        # @param IsGlobal: <p>是否公共</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsGlobal: Boolean
        # @param CreatedAt: <p>创建时间 Unix 秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: Integer
        # @param UpdatedAt: <p>修改时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: Integer
        # @param AgentId: <p>产生该制品的 Agent ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param SkillId: <p>产生该制品的 Skill ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillId: String
        # @param StoragePath: <p>用于解析调用下载接口</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoragePath: String

        attr_accessor :ArtifactId, :Name, :MimeType, :SizeBytes, :IsGlobal, :CreatedAt, :UpdatedAt, :AgentId, :SkillId, :StoragePath

        def initialize(artifactid=nil, name=nil, mimetype=nil, sizebytes=nil, isglobal=nil, createdat=nil, updatedat=nil, agentid=nil, skillid=nil, storagepath=nil)
          @ArtifactId = artifactid
          @Name = name
          @MimeType = mimetype
          @SizeBytes = sizebytes
          @IsGlobal = isglobal
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @AgentId = agentid
          @SkillId = skillid
          @StoragePath = storagepath
        end

        def deserialize(params)
          @ArtifactId = params['ArtifactId']
          @Name = params['Name']
          @MimeType = params['MimeType']
          @SizeBytes = params['SizeBytes']
          @IsGlobal = params['IsGlobal']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @AgentId = params['AgentId']
          @SkillId = params['SkillId']
          @StoragePath = params['StoragePath']
        end
      end

      # CancelAIWorkbenchChat请求参数结构体
      class CancelAIWorkbenchChatRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>会话id</p>
        # @type SessionId: String

        attr_accessor :SessionId

        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # CancelAIWorkbenchChat返回参数结构体
      class CancelAIWorkbenchChatResponse < TencentCloud::Common::AbstractModel
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

      # 接受人详情信息
      class ChannelsReceivers < TencentCloud::Common::AbstractModel
        # @param ChannelName: 通知渠道名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelName: String
        # @param Receivers: 接收者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Receivers: Array
        # @param SendStatus: 发送结果,0-无效,1-成功,2-失败,3-无需发送
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendStatus: String

        attr_accessor :ChannelName, :Receivers, :SendStatus

        def initialize(channelname=nil, receivers=nil, sendstatus=nil)
          @ChannelName = channelname
          @Receivers = receivers
          @SendStatus = sendstatus
        end

        def deserialize(params)
          @ChannelName = params['ChannelName']
          @Receivers = params['Receivers']
          @SendStatus = params['SendStatus']
        end
      end

      # 每个 ContentBlockInfo 对应下游 ContentBlock 转换而来的一个 AGUI 事件。
      class ContentBlockInfo < TencentCloud::Common::AbstractModel
        # @param Type: <p>类型</p>
        # @type Type: String
        # @param Data: <p>数据内容</p>
        # @type Data: String

        attr_accessor :Type, :Data

        def initialize(type=nil, data=nil)
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # CreateAIWorkbenchAgent请求参数结构体
      class CreateAIWorkbenchAgentRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>Agent 名称</p>
        # @type Name: String
        # @param Description: <p>Agent 描述</p>
        # @type Description: String
        # @param Category: <p>Agent 分类</p>
        # @type Category: String
        # @param Tags: <p>Agent 标签</p>
        # @type Tags: Array
        # @param Instruction: <p>Agent 提示词</p>
        # @type Instruction: :class:`Tencentcloud::Monitor.v20230616.models.InstructionConfig`
        # @param SkillIds: <p>关联技能 ID 列表</p>
        # @type SkillIds: Array
        # @param Source: <p>来源: builtin / custom</p>
        # @type Source: String
        # @param ResourceMapId: <p>关联的资源地图 ID</p>
        # @type ResourceMapId: String
        # @param MCPIds: <p>关联的mcp工具</p>
        # @type MCPIds: Array
        # @param CamTags: <p>资源标签</p>
        # @type CamTags: Array
        # @param EnvVars: <p>agent运行时环境变量</p>
        # @type EnvVars: Array

        attr_accessor :Name, :Description, :Category, :Tags, :Instruction, :SkillIds, :Source, :ResourceMapId, :MCPIds, :CamTags, :EnvVars

        def initialize(name=nil, description=nil, category=nil, tags=nil, instruction=nil, skillids=nil, source=nil, resourcemapid=nil, mcpids=nil, camtags=nil, envvars=nil)
          @Name = name
          @Description = description
          @Category = category
          @Tags = tags
          @Instruction = instruction
          @SkillIds = skillids
          @Source = source
          @ResourceMapId = resourcemapid
          @MCPIds = mcpids
          @CamTags = camtags
          @EnvVars = envvars
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Category = params['Category']
          @Tags = params['Tags']
          unless params['Instruction'].nil?
            @Instruction = InstructionConfig.new
            @Instruction.deserialize(params['Instruction'])
          end
          @SkillIds = params['SkillIds']
          @Source = params['Source']
          @ResourceMapId = params['ResourceMapId']
          @MCPIds = params['MCPIds']
          unless params['CamTags'].nil?
            @CamTags = []
            params['CamTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @CamTags << tag_tmp
            end
          end
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
        end
      end

      # CreateAIWorkbenchAgent返回参数结构体
      class CreateAIWorkbenchAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateAIWorkbenchTask请求参数结构体
      class CreateAIWorkbenchTaskRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>任务名称</p>
        # @type Name: String
        # @param Description: <p>任务描述</p>
        # @type Description: String
        # @param AgentId: <p>关联 Agent ID</p>
        # @type AgentId: String
        # @param PromptTemplate: <p>提示词模板</p>
        # @type PromptTemplate: String
        # @param OutputFormat: <p>输出格式: markdown / json</p>
        # @type OutputFormat: String
        # @param TriggerType: <p>触发类型: manual / cron / webhook</p>
        # @type TriggerType: String
        # @param CronExpr: <p>Cron 表达式</p>
        # @type CronExpr: String
        # @param CronTimezone: <p>Cron 时区</p>
        # @type CronTimezone: String
        # @param ResourceMapId: <p>关联资源地图 ID</p>
        # @type ResourceMapId: String
        # @param SkillIds: <p>技能 ID 列表</p>
        # @type SkillIds: Array
        # @param McpEndpointIds: <p>MCP 端点 ID 列表</p>
        # @type McpEndpointIds: Array
        # @param TimeoutSec: <p>超时时间(秒)</p>
        # @type TimeoutSec: Integer
        # @param RetryCount: <p>重试次数</p>
        # @type RetryCount: Integer
        # @param Enabled: <p>是否启用</p>
        # @type Enabled: Boolean

        attr_accessor :Name, :Description, :AgentId, :PromptTemplate, :OutputFormat, :TriggerType, :CronExpr, :CronTimezone, :ResourceMapId, :SkillIds, :McpEndpointIds, :TimeoutSec, :RetryCount, :Enabled

        def initialize(name=nil, description=nil, agentid=nil, prompttemplate=nil, outputformat=nil, triggertype=nil, cronexpr=nil, crontimezone=nil, resourcemapid=nil, skillids=nil, mcpendpointids=nil, timeoutsec=nil, retrycount=nil, enabled=nil)
          @Name = name
          @Description = description
          @AgentId = agentid
          @PromptTemplate = prompttemplate
          @OutputFormat = outputformat
          @TriggerType = triggertype
          @CronExpr = cronexpr
          @CronTimezone = crontimezone
          @ResourceMapId = resourcemapid
          @SkillIds = skillids
          @McpEndpointIds = mcpendpointids
          @TimeoutSec = timeoutsec
          @RetryCount = retrycount
          @Enabled = enabled
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @AgentId = params['AgentId']
          @PromptTemplate = params['PromptTemplate']
          @OutputFormat = params['OutputFormat']
          @TriggerType = params['TriggerType']
          @CronExpr = params['CronExpr']
          @CronTimezone = params['CronTimezone']
          @ResourceMapId = params['ResourceMapId']
          @SkillIds = params['SkillIds']
          @McpEndpointIds = params['McpEndpointIds']
          @TimeoutSec = params['TimeoutSec']
          @RetryCount = params['RetryCount']
          @Enabled = params['Enabled']
        end
      end

      # CreateAIWorkbenchTask返回参数结构体
      class CreateAIWorkbenchTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateDispenseExternalRule请求参数结构体
      class CreateDispenseExternalRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param ExtNamespace: 云监控对外命名空间
        # @type ExtNamespace: String
        # @param Producer: 转发目标消信息
        # @type Producer: :class:`Tencentcloud::Monitor.v20230616.models.Producer`
        # @param DispenseRegions: 转发部署地域列表
        # @type DispenseRegions: Array
        # @param ExtMetrics: 云监控对外指标
        # @type ExtMetrics: Array
        # @param Period: 指标统计周期
        # @type Period: Array
        # @param DispenseConditions: 转发过滤条件信息
        # @type DispenseConditions: Array

        attr_accessor :Name, :ExtNamespace, :Producer, :DispenseRegions, :ExtMetrics, :Period, :DispenseConditions

        def initialize(name=nil, extnamespace=nil, producer=nil, dispenseregions=nil, extmetrics=nil, period=nil, dispenseconditions=nil)
          @Name = name
          @ExtNamespace = extnamespace
          @Producer = producer
          @DispenseRegions = dispenseregions
          @ExtMetrics = extmetrics
          @Period = period
          @DispenseConditions = dispenseconditions
        end

        def deserialize(params)
          @Name = params['Name']
          @ExtNamespace = params['ExtNamespace']
          unless params['Producer'].nil?
            @Producer = Producer.new
            @Producer.deserialize(params['Producer'])
          end
          @DispenseRegions = params['DispenseRegions']
          @ExtMetrics = params['ExtMetrics']
          @Period = params['Period']
          unless params['DispenseConditions'].nil?
            @DispenseConditions = []
            params['DispenseConditions'].each do |i|
              dispensecondition_tmp = DispenseCondition.new
              dispensecondition_tmp.deserialize(i)
              @DispenseConditions << dispensecondition_tmp
            end
          end
        end
      end

      # CreateDispenseExternalRule返回参数结构体
      class CreateDispenseExternalRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 转发规则Id
        # @type RuleId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateNoticeContentTmpl请求参数结构体
      class CreateNoticeContentTmplRequest < TencentCloud::Common::AbstractModel
        # @param TmplName: <p>模板名称</p>
        # @type TmplName: String
        # @param MonitorType: <p>监控类型</p>
        # @type MonitorType: String
        # @param TmplContents: <p>模板内容</p>
        # @type TmplContents: :class:`Tencentcloud::Monitor.v20230616.models.NoticeContentTmplItem`
        # @param TmplLanguage: <p>模板语言 en/zh</p>
        # @type TmplLanguage: String

        attr_accessor :TmplName, :MonitorType, :TmplContents, :TmplLanguage

        def initialize(tmplname=nil, monitortype=nil, tmplcontents=nil, tmpllanguage=nil)
          @TmplName = tmplname
          @MonitorType = monitortype
          @TmplContents = tmplcontents
          @TmplLanguage = tmpllanguage
        end

        def deserialize(params)
          @TmplName = params['TmplName']
          @MonitorType = params['MonitorType']
          unless params['TmplContents'].nil?
            @TmplContents = NoticeContentTmplItem.new
            @TmplContents.deserialize(params['TmplContents'])
          end
          @TmplLanguage = params['TmplLanguage']
        end
      end

      # CreateNoticeContentTmpl返回参数结构体
      class CreateNoticeContentTmplResponse < TencentCloud::Common::AbstractModel
        # @param TmplID: <p>自定义内容模板ID</p>
        # @type TmplID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TmplID, :RequestId

        def initialize(tmplid=nil, requestid=nil)
          @TmplID = tmplid
          @RequestId = requestid
        end

        def deserialize(params)
          @TmplID = params['TmplID']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAIWorkbenchAgent请求参数结构体
      class DeleteAIWorkbenchAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent ID</p>
        # @type AgentId: String

        attr_accessor :AgentId

        def initialize(agentid=nil)
          @AgentId = agentid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
        end
      end

      # DeleteAIWorkbenchAgent返回参数结构体
      class DeleteAIWorkbenchAgentResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAIWorkbenchTask请求参数结构体
      class DeleteAIWorkbenchTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteAIWorkbenchTask返回参数结构体
      class DeleteAIWorkbenchTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDispenseExternalRule请求参数结构体
      class DeleteDispenseExternalRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleIdList: 需要删除的规则Id
        # @type RuleIdList: Array

        attr_accessor :RuleIdList

        def initialize(ruleidlist=nil)
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @RuleIdList = params['RuleIdList']
        end
      end

      # DeleteDispenseExternalRule返回参数结构体
      class DeleteDispenseExternalRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNoticeContentTmpls请求参数结构体
      class DeleteNoticeContentTmplsRequest < TencentCloud::Common::AbstractModel
        # @param TmplIDs: <p>要删除的模板id</p>
        # @type TmplIDs: Array

        attr_accessor :TmplIDs

        def initialize(tmplids=nil)
          @TmplIDs = tmplids
        end

        def deserialize(params)
          @TmplIDs = params['TmplIDs']
        end
      end

      # DeleteNoticeContentTmpls返回参数结构体
      class DeleteNoticeContentTmplsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAIWorkbenchAgent请求参数结构体
      class DescribeAIWorkbenchAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent ID</p>
        # @type AgentId: String

        attr_accessor :AgentId

        def initialize(agentid=nil)
          @AgentId = agentid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
        end
      end

      # DescribeAIWorkbenchAgent返回参数结构体
      class DescribeAIWorkbenchAgentResponse < TencentCloud::Common::AbstractModel
        # @param Agent: <p>Agent 信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Agent: :class:`Tencentcloud::Monitor.v20230616.models.AgentInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Agent, :RequestId

        def initialize(agent=nil, requestid=nil)
          @Agent = agent
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = AgentInfo.new
            @Agent.deserialize(params['Agent'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchArtifact请求参数结构体
      class DescribeAIWorkbenchArtifactRequest < TencentCloud::Common::AbstractModel
        # @param ArtifactId: <p>产物 ID</p>
        # @type ArtifactId: String
        # @param NeedDownloadURL: <p>是否需要下载 URL</p><p><code>1</code> = 需要，<code>0</code> 或不传 = 不需要</p>
        # @type NeedDownloadURL: Integer

        attr_accessor :ArtifactId, :NeedDownloadURL

        def initialize(artifactid=nil, needdownloadurl=nil)
          @ArtifactId = artifactid
          @NeedDownloadURL = needdownloadurl
        end

        def deserialize(params)
          @ArtifactId = params['ArtifactId']
          @NeedDownloadURL = params['NeedDownloadURL']
        end
      end

      # DescribeAIWorkbenchArtifact返回参数结构体
      class DescribeAIWorkbenchArtifactResponse < TencentCloud::Common::AbstractModel
        # @param Artifact: <p>产物信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Artifact: :class:`Tencentcloud::Monitor.v20230616.models.ArtifactInfo`
        # @param DownloadURL: <p>COS 预签名下载 URL</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadURL: String
        # @param DownloadURLExpiredAt: <p>下载 URL 过期时间（RFC3339 格式）</p>
        # @type DownloadURLExpiredAt: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Artifact, :DownloadURL, :DownloadURLExpiredAt, :RequestId

        def initialize(artifact=nil, downloadurl=nil, downloadurlexpiredat=nil, requestid=nil)
          @Artifact = artifact
          @DownloadURL = downloadurl
          @DownloadURLExpiredAt = downloadurlexpiredat
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Artifact'].nil?
            @Artifact = ArtifactInfo.new
            @Artifact.deserialize(params['Artifact'])
          end
          @DownloadURL = params['DownloadURL']
          @DownloadURLExpiredAt = params['DownloadURLExpiredAt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchExecution请求参数结构体
      class DescribeAIWorkbenchExecutionRequest < TencentCloud::Common::AbstractModel
        # @param ExecutionId: <p>执行 ID</p>
        # @type ExecutionId: String

        attr_accessor :ExecutionId

        def initialize(executionid=nil)
          @ExecutionId = executionid
        end

        def deserialize(params)
          @ExecutionId = params['ExecutionId']
        end
      end

      # DescribeAIWorkbenchExecution返回参数结构体
      class DescribeAIWorkbenchExecutionResponse < TencentCloud::Common::AbstractModel
        # @param Execution: <p>执行记录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Execution: :class:`Tencentcloud::Monitor.v20230616.models.ExecutionInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Execution, :RequestId

        def initialize(execution=nil, requestid=nil)
          @Execution = execution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Execution'].nil?
            @Execution = ExecutionInfo.new
            @Execution.deserialize(params['Execution'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinTaskList请求参数结构体
      class DescribeAIWorkbenchSREDigitalTwinTaskListRequest < TencentCloud::Common::AbstractModel
        # @param TwinID: 数字分身ID
        # @type TwinID: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer

        attr_accessor :TwinID, :Offset, :Limit

        def initialize(twinid=nil, offset=nil, limit=nil)
          @TwinID = twinid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TwinID = params['TwinID']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinTaskList返回参数结构体
      class DescribeAIWorkbenchSREDigitalTwinTaskListResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身任务列表
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.AIWorkbenchSREDigitalTwinTaskList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = AIWorkbenchSREDigitalTwinTaskList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogDetail请求参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogDetailRequest < TencentCloud::Common::AbstractModel
        # @param WorkLogID: 工作日志ID
        # @type WorkLogID: Integer

        attr_accessor :WorkLogID

        def initialize(worklogid=nil)
          @WorkLogID = worklogid
        end

        def deserialize(params)
          @WorkLogID = params['WorkLogID']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogDetail返回参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogDetailResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身详细信息
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.AIWorkbenchSREDigitalTwinWorkLogDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = AIWorkbenchSREDigitalTwinWorkLogDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogList请求参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogListRequest < TencentCloud::Common::AbstractModel
        # @param TwinID: 数字分身ID
        # @type TwinID: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页限制条数
        # @type Limit: Integer

        attr_accessor :TwinID, :Offset, :Limit

        def initialize(twinid=nil, offset=nil, limit=nil)
          @TwinID = twinid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TwinID = params['TwinID']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogList返回参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogListResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身工作日志列表
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.AIWorkbenchSREDigitalTwinWorkLogList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = AIWorkbenchSREDigitalTwinWorkLogList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSession请求参数结构体
      class DescribeAIWorkbenchSessionRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>会话 ID</p>
        # @type SessionId: String

        attr_accessor :SessionId

        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # DescribeAIWorkbenchSession返回参数结构体
      class DescribeAIWorkbenchSessionResponse < TencentCloud::Common::AbstractModel
        # @param Session: <p>会话信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Session: :class:`Tencentcloud::Monitor.v20230616.models.SessionInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Session, :RequestId

        def initialize(session=nil, requestid=nil)
          @Session = session
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Session'].nil?
            @Session = SessionInfo.new
            @Session.deserialize(params['Session'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSkill请求参数结构体
      class DescribeAIWorkbenchSkillRequest < TencentCloud::Common::AbstractModel
        # @param SkillId: <p>技能 ID</p>
        # @type SkillId: String

        attr_accessor :SkillId

        def initialize(skillid=nil)
          @SkillId = skillid
        end

        def deserialize(params)
          @SkillId = params['SkillId']
        end
      end

      # DescribeAIWorkbenchSkill返回参数结构体
      class DescribeAIWorkbenchSkillResponse < TencentCloud::Common::AbstractModel
        # @param Skill: <p>技能信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Skill: :class:`Tencentcloud::Monitor.v20230616.models.SkillInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Skill, :RequestId

        def initialize(skill=nil, requestid=nil)
          @Skill = skill
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Skill'].nil?
            @Skill = SkillInfo.new
            @Skill.deserialize(params['Skill'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmNotifyHistories请求参数结构体
      class DescribeAlarmNotifyHistoriesRequest < TencentCloud::Common::AbstractModel
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param QueryBaseTime: 起始时间点，unix秒级时间戳
        # @type QueryBaseTime: Integer
        # @param QueryBeforeSeconds: 从 QueryBaseTime 开始，需要查询往前多久的时间，单位秒
        # @type QueryBeforeSeconds: Integer
        # @param PageParams: 分页参数
        # @type PageParams: :class:`Tencentcloud::Monitor.v20230616.models.PageByNoParams`
        # @param Namespace: 当监控类型为 MT_QCE 时候需要填写，归属的命名空间
        # @type Namespace: String
        # @param ModelName: 当监控类型为 MT_QCE 时候需要填写， 告警策略类型
        # @type ModelName: String
        # @param PolicyId: 查询某个策略的通知历史
        # @type PolicyId: String

        attr_accessor :MonitorType, :QueryBaseTime, :QueryBeforeSeconds, :PageParams, :Namespace, :ModelName, :PolicyId

        def initialize(monitortype=nil, querybasetime=nil, querybeforeseconds=nil, pageparams=nil, namespace=nil, modelname=nil, policyid=nil)
          @MonitorType = monitortype
          @QueryBaseTime = querybasetime
          @QueryBeforeSeconds = querybeforeseconds
          @PageParams = pageparams
          @Namespace = namespace
          @ModelName = modelname
          @PolicyId = policyid
        end

        def deserialize(params)
          @MonitorType = params['MonitorType']
          @QueryBaseTime = params['QueryBaseTime']
          @QueryBeforeSeconds = params['QueryBeforeSeconds']
          unless params['PageParams'].nil?
            @PageParams = PageByNoParams.new
            @PageParams.deserialize(params['PageParams'])
          end
          @Namespace = params['Namespace']
          @ModelName = params['ModelName']
          @PolicyId = params['PolicyId']
        end
      end

      # DescribeAlarmNotifyHistories返回参数结构体
      class DescribeAlarmNotifyHistoriesResponse < TencentCloud::Common::AbstractModel
        # @param AlarmNotifyHistoryList: 告警历史
        # @type AlarmNotifyHistoryList: Array
        # @param PageResult: 分页情况
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNoResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmNotifyHistoryList, :PageResult, :RequestId

        def initialize(alarmnotifyhistorylist=nil, pageresult=nil, requestid=nil)
          @AlarmNotifyHistoryList = alarmnotifyhistorylist
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmNotifyHistoryList'].nil?
            @AlarmNotifyHistoryList = []
            params['AlarmNotifyHistoryList'].each do |i|
              alarmnotifyhistory_tmp = AlarmNotifyHistory.new
              alarmnotifyhistory_tmp.deserialize(i)
              @AlarmNotifyHistoryList << alarmnotifyhistory_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNoResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDispenseExternalRuleList请求参数结构体
      class DescribeDispenseExternalRuleListRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页数
        # @type Page: Integer
        # @param PageSize: 页面大小
        # @type PageSize: Integer
        # @param DispenseRegions: 转发部署地域
        # @type DispenseRegions: Array
        # @param Keyword: 关键字搜索规则名
        # @type Keyword: String

        attr_accessor :Page, :PageSize, :DispenseRegions, :Keyword

        def initialize(page=nil, pagesize=nil, dispenseregions=nil, keyword=nil)
          @Page = page
          @PageSize = pagesize
          @DispenseRegions = dispenseregions
          @Keyword = keyword
        end

        def deserialize(params)
          @Page = params['Page']
          @PageSize = params['PageSize']
          @DispenseRegions = params['DispenseRegions']
          @Keyword = params['Keyword']
        end
      end

      # DescribeDispenseExternalRuleList返回参数结构体
      class DescribeDispenseExternalRuleListResponse < TencentCloud::Common::AbstractModel
        # @param RuleList: 指标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleList: Array
        # @param TotalCount: 列表大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleList, :TotalCount, :RequestId

        def initialize(rulelist=nil, totalcount=nil, requestid=nil)
          @RuleList = rulelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @RuleList << rule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDispenseExternalRule请求参数结构体
      class DescribeDispenseExternalRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则id
        # @type RuleId: Integer

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DescribeDispenseExternalRule返回参数结构体
      class DescribeDispenseExternalRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Monitor.v20230616.models.Rule`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId

        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = Rule.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDispenseRegion请求参数结构体
      class DescribeDispenseRegionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDispenseRegion返回参数结构体
      class DescribeDispenseRegionResponse < TencentCloud::Common::AbstractModel
        # @param RegionList: 转发地域列表
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionList, :RequestId

        def initialize(regionlist=nil, requestid=nil)
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              dispenseregion_tmp = DispenseRegion.new
              dispenseregion_tmp.deserialize(i)
              @RegionList << dispenseregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtMetric请求参数结构体
      class DescribeExtMetricRequest < TencentCloud::Common::AbstractModel
        # @param ExtNamespace: 对外命名空间
        # @type ExtNamespace: String

        attr_accessor :ExtNamespace

        def initialize(extnamespace=nil)
          @ExtNamespace = extnamespace
        end

        def deserialize(params)
          @ExtNamespace = params['ExtNamespace']
        end
      end

      # DescribeExtMetric返回参数结构体
      class DescribeExtMetricResponse < TencentCloud::Common::AbstractModel
        # @param ExtMetricList: 对外指标
        # @type ExtMetricList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExtMetricList, :RequestId

        def initialize(extmetriclist=nil, requestid=nil)
          @ExtMetricList = extmetriclist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ExtMetricList'].nil?
            @ExtMetricList = []
            params['ExtMetricList'].each do |i|
              extmetric_tmp = ExtMetric.new
              extmetric_tmp.deserialize(i)
              @ExtMetricList << extmetric_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtNamespace请求参数结构体
      class DescribeExtNamespaceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeExtNamespace返回参数结构体
      class DescribeExtNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param ExtNamespaceList: 对外命名空间列表
        # @type ExtNamespaceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExtNamespaceList, :RequestId

        def initialize(extnamespacelist=nil, requestid=nil)
          @ExtNamespaceList = extnamespacelist
          @RequestId = requestid
        end

        def deserialize(params)
          @ExtNamespaceList = params['ExtNamespaceList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKafka请求参数结构体
      class DescribeKafkaRequest < TencentCloud::Common::AbstractModel
        # @param Brokers: kafka地址
        # @type Brokers: String
        # @param DispenseRegions: 转发部署地域列表
        # @type DispenseRegions: Array

        attr_accessor :Brokers, :DispenseRegions

        def initialize(brokers=nil, dispenseregions=nil)
          @Brokers = brokers
          @DispenseRegions = dispenseregions
        end

        def deserialize(params)
          @Brokers = params['Brokers']
          @DispenseRegions = params['DispenseRegions']
        end
      end

      # DescribeKafka返回参数结构体
      class DescribeKafkaResponse < TencentCloud::Common::AbstractModel
        # @param KafkaConnectivityList: 连通性列表
        # @type KafkaConnectivityList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KafkaConnectivityList, :RequestId

        def initialize(kafkaconnectivitylist=nil, requestid=nil)
          @KafkaConnectivityList = kafkaconnectivitylist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KafkaConnectivityList'].nil?
            @KafkaConnectivityList = []
            params['KafkaConnectivityList'].each do |i|
              kafkaconnectivity_tmp = KafkaConnectivity.new
              kafkaconnectivity_tmp.deserialize(i)
              @KafkaConnectivityList << kafkaconnectivity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNoticeContentTmpl请求参数结构体
      class DescribeNoticeContentTmplRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页数
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param TmplIDs: 指定模板ID查询，查询参数都为空则默认查询账号下所有模板
        # @type TmplIDs: Array
        # @param TmplName: 指定模板名称查询，查询参数都为空则默认查询账号下所有模板
        # @type TmplName: String
        # @param NoticeID: 指定通知模板ID查询，查询参数都为空则默认查询账号下所有模板
        # @type NoticeID: String
        # @param TmplLanguage: 模板语言 en/zh 缺省不过滤
        # @type TmplLanguage: String
        # @param MonitorType: 监控类型
        # @type MonitorType: String

        attr_accessor :PageNumber, :PageSize, :TmplIDs, :TmplName, :NoticeID, :TmplLanguage, :MonitorType

        def initialize(pagenumber=nil, pagesize=nil, tmplids=nil, tmplname=nil, noticeid=nil, tmpllanguage=nil, monitortype=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TmplIDs = tmplids
          @TmplName = tmplname
          @NoticeID = noticeid
          @TmplLanguage = tmpllanguage
          @MonitorType = monitortype
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TmplIDs = params['TmplIDs']
          @TmplName = params['TmplName']
          @NoticeID = params['NoticeID']
          @TmplLanguage = params['TmplLanguage']
          @MonitorType = params['MonitorType']
        end
      end

      # DescribeNoticeContentTmpl返回参数结构体
      class DescribeNoticeContentTmplResponse < TencentCloud::Common::AbstractModel
        # @param NoticeContentTmpls: 自定义通知内容模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeContentTmpls: Array
        # @param NoticeContentTmplBindPolicyCounts: 通知内容模板绑定的告警策略数量
        # @type NoticeContentTmplBindPolicyCounts: Array
        # @param PageNumber: 分页数
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NoticeContentTmpls, :NoticeContentTmplBindPolicyCounts, :PageNumber, :PageSize, :TotalCount, :RequestId

        def initialize(noticecontenttmpls=nil, noticecontenttmplbindpolicycounts=nil, pagenumber=nil, pagesize=nil, totalcount=nil, requestid=nil)
          @NoticeContentTmpls = noticecontenttmpls
          @NoticeContentTmplBindPolicyCounts = noticecontenttmplbindpolicycounts
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NoticeContentTmpls'].nil?
            @NoticeContentTmpls = []
            params['NoticeContentTmpls'].each do |i|
              noticecontenttmpl_tmp = NoticeContentTmpl.new
              noticecontenttmpl_tmp.deserialize(i)
              @NoticeContentTmpls << noticecontenttmpl_tmp
            end
          end
          unless params['NoticeContentTmplBindPolicyCounts'].nil?
            @NoticeContentTmplBindPolicyCounts = []
            params['NoticeContentTmplBindPolicyCounts'].each do |i|
              noticecontenttmplbindpolicycount_tmp = NoticeContentTmplBindPolicyCount.new
              noticecontenttmplbindpolicycount_tmp.deserialize(i)
              @NoticeContentTmplBindPolicyCounts << noticecontenttmplbindpolicycount_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 钉钉机器人内容模板配置
      class DingDingRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 钉钉机器人通知模板的匹配器
      class DingDingRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.DingDingRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = DingDingRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 转发过滤条件信息
      class DispenseCondition < TencentCloud::Common::AbstractModel
        # @param ExtMetric: 对外指标名
        # @type ExtMetric: String
        # @param DispenseFilters: 过滤条件表
        # @type DispenseFilters: Array
        # @param ConditionId: 过滤条件id
        # @type ConditionId: Integer

        attr_accessor :ExtMetric, :DispenseFilters, :ConditionId

        def initialize(extmetric=nil, dispensefilters=nil, conditionid=nil)
          @ExtMetric = extmetric
          @DispenseFilters = dispensefilters
          @ConditionId = conditionid
        end

        def deserialize(params)
          @ExtMetric = params['ExtMetric']
          unless params['DispenseFilters'].nil?
            @DispenseFilters = []
            params['DispenseFilters'].each do |i|
              dispensefilter_tmp = DispenseFilter.new
              dispensefilter_tmp.deserialize(i)
              @DispenseFilters << dispensefilter_tmp
            end
          end
          @ConditionId = params['ConditionId']
        end
      end

      # 过滤表
      class DispenseFilter < TencentCloud::Common::AbstractModel
        # @param Key: 维度名称
        # @type Key: String
        # @param Values: 维度值列表
        # @type Values: Array
        # @param Expression: 表示式
        # @type Expression: String

        attr_accessor :Key, :Values, :Expression

        def initialize(key=nil, values=nil, expression=nil)
          @Key = key
          @Values = values
          @Expression = expression
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
          @Expression = params['Expression']
        end
      end

      # 全局维度
      class DispenseGlobalTag < TencentCloud::Common::AbstractModel
        # @param Key: 维度key
        # @type Key: String
        # @param Value: 维度值
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

      # 转发地域信息
      class DispenseRegion < TencentCloud::Common::AbstractModel
        # @param Region: 地域缩写
        # @type Region: String
        # @param RegionCnName: 地域中文名
        # @type RegionCnName: String
        # @param RegionEnName: 地域英文名
        # @type RegionEnName: String
        # @param RuleNumber: 规则数量
        # @type RuleNumber: Integer

        attr_accessor :Region, :RegionCnName, :RegionEnName, :RuleNumber

        def initialize(region=nil, regioncnname=nil, regionenname=nil, rulenumber=nil)
          @Region = region
          @RegionCnName = regioncnname
          @RegionEnName = regionenname
          @RuleNumber = rulenumber
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionCnName = params['RegionCnName']
          @RegionEnName = params['RegionEnName']
          @RuleNumber = params['RuleNumber']
        end
      end

      # 环境变量entry
      class EnvEntry < TencentCloud::Common::AbstractModel
        # @param Value: <p>环境变量value</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Sensitive: <p>是否脱敏</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sensitive: Boolean

        attr_accessor :Value, :Sensitive

        def initialize(value=nil, sensitive=nil)
          @Value = value
          @Sensitive = sensitive
        end

        def deserialize(params)
          @Value = params['Value']
          @Sensitive = params['Sensitive']
        end
      end

      # agent运行时所需环境变量
      class EnvVar < TencentCloud::Common::AbstractModel
        # @param Key: <p>环境变量key</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: <p>环境变量value</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Monitor.v20230616.models.EnvEntry`

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Value'].nil?
            @Value = EnvEntry.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 执行记录实体
      class ExecutionInfo < TencentCloud::Common::AbstractModel
        # @param Name: <p>任务名</p>
        # @type Name: String
        # @param TaskId: <p>任务 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param ExecutionId: <p>执行 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionId: String
        # @param AgentId: <p>Agent ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param SessionId: <p>会话 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param TriggerType: <p>触发类型: manual / cron / webhook</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param Status: <p>状态: pending/running/completed/failed/timeout/cancelled</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Summary: <p>执行摘要</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Summary: String
        # @param DurationMs: <p>执行耗时(毫秒)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationMs: Integer

        attr_accessor :Name, :TaskId, :ExecutionId, :AgentId, :SessionId, :TriggerType, :Status, :Summary, :DurationMs

        def initialize(name=nil, taskid=nil, executionid=nil, agentid=nil, sessionid=nil, triggertype=nil, status=nil, summary=nil, durationms=nil)
          @Name = name
          @TaskId = taskid
          @ExecutionId = executionid
          @AgentId = agentid
          @SessionId = sessionid
          @TriggerType = triggertype
          @Status = status
          @Summary = summary
          @DurationMs = durationms
        end

        def deserialize(params)
          @Name = params['Name']
          @TaskId = params['TaskId']
          @ExecutionId = params['ExecutionId']
          @AgentId = params['AgentId']
          @SessionId = params['SessionId']
          @TriggerType = params['TriggerType']
          @Status = params['Status']
          @Summary = params['Summary']
          @DurationMs = params['DurationMs']
        end
      end

      # 对外指标
      class ExtMetric < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param MetricCName: 中文指标名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricCName: String
        # @param CNMeaning: 中文含义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CNMeaning: String
        # @param EnMeaning: 英文含义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnMeaning: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param DimensionFlag: 是否配置对外维度
        # @type DimensionFlag: Boolean

        attr_accessor :MetricName, :MetricCName, :CNMeaning, :EnMeaning, :Unit, :DimensionFlag

        def initialize(metricname=nil, metriccname=nil, cnmeaning=nil, enmeaning=nil, unit=nil, dimensionflag=nil)
          @MetricName = metricname
          @MetricCName = metriccname
          @CNMeaning = cnmeaning
          @EnMeaning = enmeaning
          @Unit = unit
          @DimensionFlag = dimensionflag
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @MetricCName = params['MetricCName']
          @CNMeaning = params['CNMeaning']
          @EnMeaning = params['EnMeaning']
          @Unit = params['Unit']
          @DimensionFlag = params['DimensionFlag']
        end
      end

      # 飞书机器人内容模板配置
      class FeiShuRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 飞书机器人通知模板的匹配器
      class FeiShuRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.FeiShuRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = FeiShuRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # GetAIWorkbenchArtifactDownloadURL请求参数结构体
      class GetAIWorkbenchArtifactDownloadURLRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>会话ID</p>
        # @type SessionId: String
        # @param ArtifactId: <p>制品ID</p>
        # @type ArtifactId: String

        attr_accessor :SessionId, :ArtifactId

        def initialize(sessionid=nil, artifactid=nil)
          @SessionId = sessionid
          @ArtifactId = artifactid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @ArtifactId = params['ArtifactId']
        end
      end

      # GetAIWorkbenchArtifactDownloadURL返回参数结构体
      class GetAIWorkbenchArtifactDownloadURLResponse < TencentCloud::Common::AbstractModel
        # @param DownloadURL: <p>COS 预签名 HTTPS 下载 URL</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadURL: String
        # @param ExpiredAt: <p>URL 过期时间（RFC3339 格式）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredAt: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadURL, :ExpiredAt, :RequestId

        def initialize(downloadurl=nil, expiredat=nil, requestid=nil)
          @DownloadURL = downloadurl
          @ExpiredAt = expiredat
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadURL = params['DownloadURL']
          @ExpiredAt = params['ExpiredAt']
          @RequestId = params['RequestId']
        end
      end

      # Google Chat 机器人内容模板配置
      class GoogleChatRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # Google Chat 机器人通知模板的匹配器
      class GoogleChatRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.GoogleChatRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = GoogleChatRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 分身提示词配置
      class InstructionConfig < TencentCloud::Common::AbstractModel
        # @param RolePosition: <p>角色定义</p>
        # @type RolePosition: String
        # @param CoreDuty: <p>核心职责</p>
        # @type CoreDuty: String
        # @param CoreTruths: <p>核心原则</p>
        # @type CoreTruths: String
        # @param Vibe: <p>风格约束</p>
        # @type Vibe: String
        # @param Boundaries: <p>注意事项</p>
        # @type Boundaries: String

        attr_accessor :RolePosition, :CoreDuty, :CoreTruths, :Vibe, :Boundaries

        def initialize(roleposition=nil, coreduty=nil, coretruths=nil, vibe=nil, boundaries=nil)
          @RolePosition = roleposition
          @CoreDuty = coreduty
          @CoreTruths = coretruths
          @Vibe = vibe
          @Boundaries = boundaries
        end

        def deserialize(params)
          @RolePosition = params['RolePosition']
          @CoreDuty = params['CoreDuty']
          @CoreTruths = params['CoreTruths']
          @Vibe = params['Vibe']
          @Boundaries = params['Boundaries']
        end
      end

      # kafka连通性
      class KafkaConnectivity < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param Result: 连通
        # @type Result: Boolean

        attr_accessor :Region, :Result

        def initialize(region=nil, result=nil)
          @Region = region
          @Result = result
        end

        def deserialize(params)
          @Region = params['Region']
          @Result = params['Result']
        end
      end

      # ListAIWorkbenchAgents请求参数结构体
      class ListAIWorkbenchAgentsRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param Status: <p>状态筛选</p>
        # @type Status: String
        # @param Category: <p>分类筛选</p>
        # @type Category: String
        # @param Keyword: <p>搜索关键词</p>
        # @type Keyword: String
        # @param Source: <p>来源筛选</p>
        # @type Source: String
        # @param AgentIds: <p>Agent ID 列表筛选</p>
        # @type AgentIds: Array

        attr_accessor :PerPage, :PageNo, :Status, :Category, :Keyword, :Source, :AgentIds

        def initialize(perpage=nil, pageno=nil, status=nil, category=nil, keyword=nil, source=nil, agentids=nil)
          @PerPage = perpage
          @PageNo = pageno
          @Status = status
          @Category = category
          @Keyword = keyword
          @Source = source
          @AgentIds = agentids
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @Status = params['Status']
          @Category = params['Category']
          @Keyword = params['Keyword']
          @Source = params['Source']
          @AgentIds = params['AgentIds']
        end
      end

      # ListAIWorkbenchAgents返回参数结构体
      class ListAIWorkbenchAgentsResponse < TencentCloud::Common::AbstractModel
        # @param Agents: <p>Agent 列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Agents: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Agents, :PageResult, :RequestId

        def initialize(agents=nil, pageresult=nil, requestid=nil)
          @Agents = agents
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              agentinfo_tmp = AgentInfo.new
              agentinfo_tmp.deserialize(i)
              @Agents << agentinfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchArtifacts请求参数结构体
      class ListAIWorkbenchArtifactsRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param SessionIds: <p>会话ID</p>
        # @type SessionIds: Array
        # @param MimeTypes: <p>消息内容类型</p>
        # @type MimeTypes: Array
        # @param OrderDirection: <p>排序</p><p>枚举值：</p><ul><li>ASC： 正序</li><li>DESC： 倒序</li></ul>
        # @type OrderDirection: String

        attr_accessor :PerPage, :PageNo, :SessionIds, :MimeTypes, :OrderDirection

        def initialize(perpage=nil, pageno=nil, sessionids=nil, mimetypes=nil, orderdirection=nil)
          @PerPage = perpage
          @PageNo = pageno
          @SessionIds = sessionids
          @MimeTypes = mimetypes
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @SessionIds = params['SessionIds']
          @MimeTypes = params['MimeTypes']
          @OrderDirection = params['OrderDirection']
        end
      end

      # ListAIWorkbenchArtifacts返回参数结构体
      class ListAIWorkbenchArtifactsResponse < TencentCloud::Common::AbstractModel
        # @param Artifacts: <p>产物列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Artifacts: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Artifacts, :PageResult, :RequestId

        def initialize(artifacts=nil, pageresult=nil, requestid=nil)
          @Artifacts = artifacts
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Artifacts'].nil?
            @Artifacts = []
            params['Artifacts'].each do |i|
              artifactinfo_tmp = ArtifactInfo.new
              artifactinfo_tmp.deserialize(i)
              @Artifacts << artifactinfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchExecutions请求参数结构体
      class ListAIWorkbenchExecutionsRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param AgentId: <p>按 Agent 筛选</p>
        # @type AgentId: String
        # @param Status: <p>按状态筛选</p>
        # @type Status: String
        # @param ExecutionIds: <p>执行 ID 列表筛选</p>
        # @type ExecutionIds: Array
        # @param TaskIds: <p>任务id</p>
        # @type TaskIds: Array
        # @param TriggerType: <p>触发方式</p>
        # @type TriggerType: String
        # @param Keyword: <p>关键值</p>
        # @type Keyword: String
        # @param Enabled: <p>是否启用</p>
        # @type Enabled: Boolean

        attr_accessor :PerPage, :PageNo, :AgentId, :Status, :ExecutionIds, :TaskIds, :TriggerType, :Keyword, :Enabled

        def initialize(perpage=nil, pageno=nil, agentid=nil, status=nil, executionids=nil, taskids=nil, triggertype=nil, keyword=nil, enabled=nil)
          @PerPage = perpage
          @PageNo = pageno
          @AgentId = agentid
          @Status = status
          @ExecutionIds = executionids
          @TaskIds = taskids
          @TriggerType = triggertype
          @Keyword = keyword
          @Enabled = enabled
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @AgentId = params['AgentId']
          @Status = params['Status']
          @ExecutionIds = params['ExecutionIds']
          @TaskIds = params['TaskIds']
          @TriggerType = params['TriggerType']
          @Keyword = params['Keyword']
          @Enabled = params['Enabled']
        end
      end

      # ListAIWorkbenchExecutions返回参数结构体
      class ListAIWorkbenchExecutionsResponse < TencentCloud::Common::AbstractModel
        # @param Executions: <p>执行列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Executions: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Executions, :PageResult, :RequestId

        def initialize(executions=nil, pageresult=nil, requestid=nil)
          @Executions = executions
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Executions'].nil?
            @Executions = []
            params['Executions'].each do |i|
              executioninfo_tmp = ExecutionInfo.new
              executioninfo_tmp.deserialize(i)
              @Executions << executioninfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchMCPs请求参数结构体
      class ListAIWorkbenchMCPsRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param Transport: <p>按传输协议筛选</p>
        # @type Transport: String
        # @param Keyword: <p>搜索关键词</p>
        # @type Keyword: String
        # @param Enabled: <p>是否启用筛选</p>
        # @type Enabled: Boolean
        # @param MCPIds: <p>关联的mcp</p>
        # @type MCPIds: Array
        # @param Type: <p>MCP类型（内置/私有）</p><p>枚举值：</p><ul><li>builtin： 平台内置</li><li>private： 用户自定义</li></ul>
        # @type Type: String

        attr_accessor :PerPage, :PageNo, :Transport, :Keyword, :Enabled, :MCPIds, :Type

        def initialize(perpage=nil, pageno=nil, transport=nil, keyword=nil, enabled=nil, mcpids=nil, type=nil)
          @PerPage = perpage
          @PageNo = pageno
          @Transport = transport
          @Keyword = keyword
          @Enabled = enabled
          @MCPIds = mcpids
          @Type = type
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @Transport = params['Transport']
          @Keyword = params['Keyword']
          @Enabled = params['Enabled']
          @MCPIds = params['MCPIds']
          @Type = params['Type']
        end
      end

      # ListAIWorkbenchMCPs返回参数结构体
      class ListAIWorkbenchMCPsResponse < TencentCloud::Common::AbstractModel
        # @param MCPs: <p>MCP 列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCPs: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MCPs, :PageResult, :RequestId

        def initialize(mcps=nil, pageresult=nil, requestid=nil)
          @MCPs = mcps
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MCPs'].nil?
            @MCPs = []
            params['MCPs'].each do |i|
              mcpinfo_tmp = MCPInfo.new
              mcpinfo_tmp.deserialize(i)
              @MCPs << mcpinfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchMessages请求参数结构体
      class ListAIWorkbenchMessagesRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>会话 ID</p>
        # @type SessionId: String
        # @param Cursor: <p>游标分页的定位标记</p>
        # @type Cursor: String
        # @param Limit: <p>窗口大小</p>
        # @type Limit: Integer
        # @param Direction: <p>拉取顺序</p>
        # @type Direction: String

        attr_accessor :SessionId, :Cursor, :Limit, :Direction

        def initialize(sessionid=nil, cursor=nil, limit=nil, direction=nil)
          @SessionId = sessionid
          @Cursor = cursor
          @Limit = limit
          @Direction = direction
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
          @Direction = params['Direction']
        end
      end

      # ListAIWorkbenchMessages返回参数结构体
      class ListAIWorkbenchMessagesResponse < TencentCloud::Common::AbstractModel
        # @param Messages: <p>消息列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Messages: Array
        # @param NextCursor: <p>下一个游标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param HasMore: <p>还有后续吗</p>
        # @type HasMore: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Messages, :NextCursor, :HasMore, :RequestId

        def initialize(messages=nil, nextcursor=nil, hasmore=nil, requestid=nil)
          @Messages = messages
          @NextCursor = nextcursor
          @HasMore = hasmore
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              messageinfo_tmp = MessageInfo.new
              messageinfo_tmp.deserialize(i)
              @Messages << messageinfo_tmp
            end
          end
          @NextCursor = params['NextCursor']
          @HasMore = params['HasMore']
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchResourceInstances请求参数结构体
      class ListAIWorkbenchResourceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceMapId: <p>资源地图 ID</p>
        # @type ResourceMapId: String
        # @param PageParams: <p>分页参数</p>
        # @type PageParams: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumParams`

        attr_accessor :ResourceMapId, :PageParams

        def initialize(resourcemapid=nil, pageparams=nil)
          @ResourceMapId = resourcemapid
          @PageParams = pageparams
        end

        def deserialize(params)
          @ResourceMapId = params['ResourceMapId']
          unless params['PageParams'].nil?
            @PageParams = PageByNumParams.new
            @PageParams.deserialize(params['PageParams'])
          end
        end
      end

      # ListAIWorkbenchResourceInstances返回参数结构体
      class ListAIWorkbenchResourceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: <p>资源实例列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :PageResult, :RequestId

        def initialize(instances=nil, pageresult=nil, requestid=nil)
          @Instances = instances
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              resourceinstance_tmp = ResourceInstance.new
              resourceinstance_tmp.deserialize(i)
              @Instances << resourceinstance_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchResourceMaps请求参数结构体
      class ListAIWorkbenchResourceMapsRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param Keyword: <p>按名称搜索</p>
        # @type Keyword: String

        attr_accessor :PerPage, :PageNo, :Keyword

        def initialize(perpage=nil, pageno=nil, keyword=nil)
          @PerPage = perpage
          @PageNo = pageno
          @Keyword = keyword
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @Keyword = params['Keyword']
        end
      end

      # ListAIWorkbenchResourceMaps返回参数结构体
      class ListAIWorkbenchResourceMapsResponse < TencentCloud::Common::AbstractModel
        # @param ResourceMaps: <p>资源地图列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceMaps: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceMaps, :PageResult, :RequestId

        def initialize(resourcemaps=nil, pageresult=nil, requestid=nil)
          @ResourceMaps = resourcemaps
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceMaps'].nil?
            @ResourceMaps = []
            params['ResourceMaps'].each do |i|
              resourcemapinfo_tmp = ResourceMapInfo.new
              resourcemapinfo_tmp.deserialize(i)
              @ResourceMaps << resourcemapinfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchSessions请求参数结构体
      class ListAIWorkbenchSessionsRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param AgentId: <p>按 Agent 筛选</p>
        # @type AgentId: String
        # @param Keyword: <p>搜索关键词</p>
        # @type Keyword: String
        # @param SessionIds: <p>会话 ID 列表筛选</p>
        # @type SessionIds: Array

        attr_accessor :PerPage, :PageNo, :AgentId, :Keyword, :SessionIds

        def initialize(perpage=nil, pageno=nil, agentid=nil, keyword=nil, sessionids=nil)
          @PerPage = perpage
          @PageNo = pageno
          @AgentId = agentid
          @Keyword = keyword
          @SessionIds = sessionids
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @AgentId = params['AgentId']
          @Keyword = params['Keyword']
          @SessionIds = params['SessionIds']
        end
      end

      # ListAIWorkbenchSessions返回参数结构体
      class ListAIWorkbenchSessionsResponse < TencentCloud::Common::AbstractModel
        # @param Sessions: <p>会话列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sessions: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Sessions, :PageResult, :RequestId

        def initialize(sessions=nil, pageresult=nil, requestid=nil)
          @Sessions = sessions
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Sessions'].nil?
            @Sessions = []
            params['Sessions'].each do |i|
              sessioninfo_tmp = SessionInfo.new
              sessioninfo_tmp.deserialize(i)
              @Sessions << sessioninfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchSkills请求参数结构体
      class ListAIWorkbenchSkillsRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param Type: <p>按类型筛选</p>
        # @type Type: String
        # @param Keyword: <p>搜索关键词</p>
        # @type Keyword: String
        # @param Enabled: <p>是否启用筛选</p>
        # @type Enabled: Boolean
        # @param SkillIds: <p>技能 ID 列表筛选</p>
        # @type SkillIds: Array

        attr_accessor :PerPage, :PageNo, :Type, :Keyword, :Enabled, :SkillIds

        def initialize(perpage=nil, pageno=nil, type=nil, keyword=nil, enabled=nil, skillids=nil)
          @PerPage = perpage
          @PageNo = pageno
          @Type = type
          @Keyword = keyword
          @Enabled = enabled
          @SkillIds = skillids
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @Type = params['Type']
          @Keyword = params['Keyword']
          @Enabled = params['Enabled']
          @SkillIds = params['SkillIds']
        end
      end

      # ListAIWorkbenchSkills返回参数结构体
      class ListAIWorkbenchSkillsResponse < TencentCloud::Common::AbstractModel
        # @param Skills: <p>技能列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Skills: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Skills, :PageResult, :RequestId

        def initialize(skills=nil, pageresult=nil, requestid=nil)
          @Skills = skills
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Skills'].nil?
            @Skills = []
            params['Skills'].each do |i|
              skillinfo_tmp = SkillInfo.new
              skillinfo_tmp.deserialize(i)
              @Skills << skillinfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAIWorkbenchTasks请求参数结构体
      class ListAIWorkbenchTasksRequest < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每页数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>页码</p>
        # @type PageNo: Integer
        # @param AgentId: <p>按 Agent 筛选</p>
        # @type AgentId: String
        # @param TriggerType: <p>按触发类型筛选</p>
        # @type TriggerType: String
        # @param Keyword: <p>搜索关键词</p>
        # @type Keyword: String
        # @param TaskIds: <p>任务 ID 列表筛选</p>
        # @type TaskIds: Array
        # @param Enabled: <p>是否启用筛选</p>
        # @type Enabled: Boolean

        attr_accessor :PerPage, :PageNo, :AgentId, :TriggerType, :Keyword, :TaskIds, :Enabled

        def initialize(perpage=nil, pageno=nil, agentid=nil, triggertype=nil, keyword=nil, taskids=nil, enabled=nil)
          @PerPage = perpage
          @PageNo = pageno
          @AgentId = agentid
          @TriggerType = triggertype
          @Keyword = keyword
          @TaskIds = taskids
          @Enabled = enabled
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
          @AgentId = params['AgentId']
          @TriggerType = params['TriggerType']
          @Keyword = params['Keyword']
          @TaskIds = params['TaskIds']
          @Enabled = params['Enabled']
        end
      end

      # ListAIWorkbenchTasks返回参数结构体
      class ListAIWorkbenchTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: <p>任务列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param PageResult: <p>分页结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNumResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :PageResult, :RequestId

        def initialize(tasks=nil, pageresult=nil, requestid=nil)
          @Tasks = tasks
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @Tasks << taskinfo_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNumResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # MCP 实体
      class MCPInfo < TencentCloud::Common::AbstractModel
        # @param MCPId: <p>mcp的ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCPId: String
        # @param Name: <p>MCP 名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>MCP 描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Url: <p>MCP URL</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Transport: <p>传输协议: sse / streamable_http / stdio</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transport: String
        # @param AuthType: <p>认证类型: none / bearer / basic / api_key</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: String
        # @param AuthSecret: <p>认证密钥(响应时脱敏)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthSecret: String
        # @param Timeout: <p>超时时间(秒)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param RetryCount: <p>重试次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryCount: Integer
        # @param Headers: <p>请求头 JSON</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: String
        # @param Enabled: <p>是否启用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean

        attr_accessor :MCPId, :Name, :Description, :Url, :Transport, :AuthType, :AuthSecret, :Timeout, :RetryCount, :Headers, :Enabled

        def initialize(mcpid=nil, name=nil, description=nil, url=nil, transport=nil, authtype=nil, authsecret=nil, timeout=nil, retrycount=nil, headers=nil, enabled=nil)
          @MCPId = mcpid
          @Name = name
          @Description = description
          @Url = url
          @Transport = transport
          @AuthType = authtype
          @AuthSecret = authsecret
          @Timeout = timeout
          @RetryCount = retrycount
          @Headers = headers
          @Enabled = enabled
        end

        def deserialize(params)
          @MCPId = params['MCPId']
          @Name = params['Name']
          @Description = params['Description']
          @Url = params['Url']
          @Transport = params['Transport']
          @AuthType = params['AuthType']
          @AuthSecret = params['AuthSecret']
          @Timeout = params['Timeout']
          @RetryCount = params['RetryCount']
          @Headers = params['Headers']
          @Enabled = params['Enabled']
        end
      end

      # 消息实体
      class MessageInfo < TencentCloud::Common::AbstractModel
        # @param EntryId: <p>实体id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntryId: String
        # @param SessionId: <p>会话 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param Role: <p>角色: user / assistant</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
        # @param Content: <p>消息内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Status: <p>状态</p>
        # @type Status: String
        # @param ContentBlocks: <p>块内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentBlocks: Array

        attr_accessor :EntryId, :SessionId, :Role, :Content, :Status, :ContentBlocks

        def initialize(entryid=nil, sessionid=nil, role=nil, content=nil, status=nil, contentblocks=nil)
          @EntryId = entryid
          @SessionId = sessionid
          @Role = role
          @Content = content
          @Status = status
          @ContentBlocks = contentblocks
        end

        def deserialize(params)
          @EntryId = params['EntryId']
          @SessionId = params['SessionId']
          @Role = params['Role']
          @Content = params['Content']
          @Status = params['Status']
          unless params['ContentBlocks'].nil?
            @ContentBlocks = []
            params['ContentBlocks'].each do |i|
              contentblockinfo_tmp = ContentBlockInfo.new
              contentblockinfo_tmp.deserialize(i)
              @ContentBlocks << contentblockinfo_tmp
            end
          end
        end
      end

      # ModifyDispenseExternalRule请求参数结构体
      class ModifyDispenseExternalRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param ExtNamespace: 云监控对外命名空间
        # @type ExtNamespace: String
        # @param Producer: 转发目标消信息
        # @type Producer: :class:`Tencentcloud::Monitor.v20230616.models.Producer`
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param DispenseRegions: 转发部署地域列表
        # @type DispenseRegions: Array
        # @param ExtMetrics: 云监控对外指标
        # @type ExtMetrics: Array
        # @param Period: 指标统计周期
        # @type Period: Array
        # @param DispenseConditions: 转发过滤信息
        # @type DispenseConditions: Array

        attr_accessor :Name, :ExtNamespace, :Producer, :RuleId, :DispenseRegions, :ExtMetrics, :Period, :DispenseConditions

        def initialize(name=nil, extnamespace=nil, producer=nil, ruleid=nil, dispenseregions=nil, extmetrics=nil, period=nil, dispenseconditions=nil)
          @Name = name
          @ExtNamespace = extnamespace
          @Producer = producer
          @RuleId = ruleid
          @DispenseRegions = dispenseregions
          @ExtMetrics = extmetrics
          @Period = period
          @DispenseConditions = dispenseconditions
        end

        def deserialize(params)
          @Name = params['Name']
          @ExtNamespace = params['ExtNamespace']
          unless params['Producer'].nil?
            @Producer = Producer.new
            @Producer.deserialize(params['Producer'])
          end
          @RuleId = params['RuleId']
          @DispenseRegions = params['DispenseRegions']
          @ExtMetrics = params['ExtMetrics']
          @Period = params['Period']
          unless params['DispenseConditions'].nil?
            @DispenseConditions = []
            params['DispenseConditions'].each do |i|
              dispensecondition_tmp = DispenseCondition.new
              dispensecondition_tmp.deserialize(i)
              @DispenseConditions << dispensecondition_tmp
            end
          end
        end
      end

      # ModifyDispenseExternalRule返回参数结构体
      class ModifyDispenseExternalRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDispenseExternalRuleStatus请求参数结构体
      class ModifyDispenseExternalRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param RuleIdList: 规则id列表
        # @type RuleIdList: Array
        # @param Status: 状态
        # @type Status: Integer

        attr_accessor :RuleIdList, :Status

        def initialize(ruleidlist=nil, status=nil)
          @RuleIdList = ruleidlist
          @Status = status
        end

        def deserialize(params)
          @RuleIdList = params['RuleIdList']
          @Status = params['Status']
        end
      end

      # ModifyDispenseExternalRuleStatus返回参数结构体
      class ModifyDispenseExternalRuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNoticeContentTmpl请求参数结构体
      class ModifyNoticeContentTmplRequest < TencentCloud::Common::AbstractModel
        # @param TmplName: 模板名称
        # @type TmplName: String
        # @param TmplContents: 模板内容
        # @type TmplContents: :class:`Tencentcloud::Monitor.v20230616.models.NoticeContentTmplItem`
        # @param TmplID: 需要修改的模板ID
        # @type TmplID: String

        attr_accessor :TmplName, :TmplContents, :TmplID

        def initialize(tmplname=nil, tmplcontents=nil, tmplid=nil)
          @TmplName = tmplname
          @TmplContents = tmplcontents
          @TmplID = tmplid
        end

        def deserialize(params)
          @TmplName = params['TmplName']
          unless params['TmplContents'].nil?
            @TmplContents = NoticeContentTmplItem.new
            @TmplContents.deserialize(params['TmplContents'])
          end
          @TmplID = params['TmplID']
        end
      end

      # ModifyNoticeContentTmpl返回参数结构体
      class ModifyNoticeContentTmplResponse < TencentCloud::Common::AbstractModel
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

      # 自定义通知内容模板
      class NoticeContentTmpl < TencentCloud::Common::AbstractModel
        # @param TmplID: <p>自定义通知内容模板id，唯一id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmplID: String
        # @param TmplName: <p>自定义通知内容模板名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmplName: String
        # @param TmplContents: <p>通知内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmplContents: :class:`Tencentcloud::Monitor.v20230616.models.NoticeContentTmplItem`
        # @param CreateTime: <p>Unix时间戳，秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: <p>Unix时间戳，秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param LastModifier: <p>最后修改人</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifier: String
        # @param Creator: <p>创建人</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param MonitorType: <p>监控类型</p>
        # @type MonitorType: String
        # @param TmplLanguage: <p>模板语言 en/zh</p>
        # @type TmplLanguage: String

        attr_accessor :TmplID, :TmplName, :TmplContents, :CreateTime, :UpdateTime, :LastModifier, :Creator, :MonitorType, :TmplLanguage

        def initialize(tmplid=nil, tmplname=nil, tmplcontents=nil, createtime=nil, updatetime=nil, lastmodifier=nil, creator=nil, monitortype=nil, tmpllanguage=nil)
          @TmplID = tmplid
          @TmplName = tmplname
          @TmplContents = tmplcontents
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LastModifier = lastmodifier
          @Creator = creator
          @MonitorType = monitortype
          @TmplLanguage = tmpllanguage
        end

        def deserialize(params)
          @TmplID = params['TmplID']
          @TmplName = params['TmplName']
          unless params['TmplContents'].nil?
            @TmplContents = NoticeContentTmplItem.new
            @TmplContents.deserialize(params['TmplContents'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @LastModifier = params['LastModifier']
          @Creator = params['Creator']
          @MonitorType = params['MonitorType']
          @TmplLanguage = params['TmplLanguage']
        end
      end

      # 通知内容模板绑定告警策略数量
      class NoticeContentTmplBindPolicyCount < TencentCloud::Common::AbstractModel
        # @param NoticeContentTmplID: 通知内容模板ID
        # @type NoticeContentTmplID: String
        # @param BindCount: 绑定告警策略数量
        # @type BindCount: Integer

        attr_accessor :NoticeContentTmplID, :BindCount

        def initialize(noticecontenttmplid=nil, bindcount=nil)
          @NoticeContentTmplID = noticecontenttmplid
          @BindCount = bindcount
        end

        def deserialize(params)
          @NoticeContentTmplID = params['NoticeContentTmplID']
          @BindCount = params['BindCount']
        end
      end

      # 内容通知模板元素
      class NoticeContentTmplItem < TencentCloud::Common::AbstractModel
        # @param QCloudYehe: <p>官网通知渠道配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QCloudYehe: Array
        # @param WeWorkRobot: <p>企业微信机器人通知渠道配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeWorkRobot: Array
        # @param DingDingRobot: <p>钉钉机器人通知渠道配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DingDingRobot: Array
        # @param FeiShuRobot: <p>飞书机器人通知渠道配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeiShuRobot: Array
        # @param Webhook: <p>自定义Webhook通知渠道配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Webhook: Array
        # @param TeamsRobot: <p>Teams机器人通知渠道配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeamsRobot: Array
        # @param PagerDutyRobot: <p>PagerDutyRobot机器人通知渠道配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PagerDutyRobot: Array
        # @param GoogleChatRobot: <p>GoogleChat</p>
        # @type GoogleChatRobot: Array
        # @param SlackRobot: <p>Slack</p>
        # @type SlackRobot: Array
        # @param TeamsWorkflowRobot: <p>Teams 工作流渠道</p>
        # @type TeamsWorkflowRobot: Array

        attr_accessor :QCloudYehe, :WeWorkRobot, :DingDingRobot, :FeiShuRobot, :Webhook, :TeamsRobot, :PagerDutyRobot, :GoogleChatRobot, :SlackRobot, :TeamsWorkflowRobot

        def initialize(qcloudyehe=nil, weworkrobot=nil, dingdingrobot=nil, feishurobot=nil, webhook=nil, teamsrobot=nil, pagerdutyrobot=nil, googlechatrobot=nil, slackrobot=nil, teamsworkflowrobot=nil)
          @QCloudYehe = qcloudyehe
          @WeWorkRobot = weworkrobot
          @DingDingRobot = dingdingrobot
          @FeiShuRobot = feishurobot
          @Webhook = webhook
          @TeamsRobot = teamsrobot
          @PagerDutyRobot = pagerdutyrobot
          @GoogleChatRobot = googlechatrobot
          @SlackRobot = slackrobot
          @TeamsWorkflowRobot = teamsworkflowrobot
        end

        def deserialize(params)
          unless params['QCloudYehe'].nil?
            @QCloudYehe = []
            params['QCloudYehe'].each do |i|
              qcloudyehenoticetmplmatcher_tmp = QCloudYeheNoticeTmplMatcher.new
              qcloudyehenoticetmplmatcher_tmp.deserialize(i)
              @QCloudYehe << qcloudyehenoticetmplmatcher_tmp
            end
          end
          unless params['WeWorkRobot'].nil?
            @WeWorkRobot = []
            params['WeWorkRobot'].each do |i|
              weworkrobotnoticetmplmatcher_tmp = WeWorkRobotNoticeTmplMatcher.new
              weworkrobotnoticetmplmatcher_tmp.deserialize(i)
              @WeWorkRobot << weworkrobotnoticetmplmatcher_tmp
            end
          end
          unless params['DingDingRobot'].nil?
            @DingDingRobot = []
            params['DingDingRobot'].each do |i|
              dingdingrobotnoticetmplmatcher_tmp = DingDingRobotNoticeTmplMatcher.new
              dingdingrobotnoticetmplmatcher_tmp.deserialize(i)
              @DingDingRobot << dingdingrobotnoticetmplmatcher_tmp
            end
          end
          unless params['FeiShuRobot'].nil?
            @FeiShuRobot = []
            params['FeiShuRobot'].each do |i|
              feishurobotnoticetmplmatcher_tmp = FeiShuRobotNoticeTmplMatcher.new
              feishurobotnoticetmplmatcher_tmp.deserialize(i)
              @FeiShuRobot << feishurobotnoticetmplmatcher_tmp
            end
          end
          unless params['Webhook'].nil?
            @Webhook = []
            params['Webhook'].each do |i|
              webhooknoticetmplmatcher_tmp = WebhookNoticeTmplMatcher.new
              webhooknoticetmplmatcher_tmp.deserialize(i)
              @Webhook << webhooknoticetmplmatcher_tmp
            end
          end
          unless params['TeamsRobot'].nil?
            @TeamsRobot = []
            params['TeamsRobot'].each do |i|
              teamsrobotnoticetmplmatcher_tmp = TeamsRobotNoticeTmplMatcher.new
              teamsrobotnoticetmplmatcher_tmp.deserialize(i)
              @TeamsRobot << teamsrobotnoticetmplmatcher_tmp
            end
          end
          unless params['PagerDutyRobot'].nil?
            @PagerDutyRobot = []
            params['PagerDutyRobot'].each do |i|
              pagerdutyrobotnoticetmplmatcher_tmp = PagerDutyRobotNoticeTmplMatcher.new
              pagerdutyrobotnoticetmplmatcher_tmp.deserialize(i)
              @PagerDutyRobot << pagerdutyrobotnoticetmplmatcher_tmp
            end
          end
          unless params['GoogleChatRobot'].nil?
            @GoogleChatRobot = []
            params['GoogleChatRobot'].each do |i|
              googlechatrobotnoticetmplmatcher_tmp = GoogleChatRobotNoticeTmplMatcher.new
              googlechatrobotnoticetmplmatcher_tmp.deserialize(i)
              @GoogleChatRobot << googlechatrobotnoticetmplmatcher_tmp
            end
          end
          unless params['SlackRobot'].nil?
            @SlackRobot = []
            params['SlackRobot'].each do |i|
              slackrobotnoticetmplmatcher_tmp = SlackRobotNoticeTmplMatcher.new
              slackrobotnoticetmplmatcher_tmp.deserialize(i)
              @SlackRobot << slackrobotnoticetmplmatcher_tmp
            end
          end
          unless params['TeamsWorkflowRobot'].nil?
            @TeamsWorkflowRobot = []
            params['TeamsWorkflowRobot'].each do |i|
              teamsworkflowrobotnoticetmplmatcher_tmp = TeamsWorkflowRobotNoticeTmplMatcher.new
              teamsworkflowrobotnoticetmplmatcher_tmp.deserialize(i)
              @TeamsWorkflowRobot << teamsworkflowrobotnoticetmplmatcher_tmp
            end
          end
        end
      end

      # 通知历史中关联的通知模板信息
      class NotifyRelatedNotice < TencentCloud::Common::AbstractModel
        # @param NoticeId: 通知模板ID
        # @type NoticeId: String
        # @param NoticeName: 通知模板的名称
        # @type NoticeName: String

        attr_accessor :NoticeId, :NoticeName

        def initialize(noticeid=nil, noticename=nil)
          @NoticeId = noticeid
          @NoticeName = noticename
        end

        def deserialize(params)
          @NoticeId = params['NoticeId']
          @NoticeName = params['NoticeName']
        end
      end

      # 分页请求参数
      class PageByNoParams < TencentCloud::Common::AbstractModel
        # @param PerPage: 每个分页的数量是多少
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PerPage: Integer
        # @param PageNo: 第几个分页，从1开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: String

        attr_accessor :PerPage, :PageNo

        def initialize(perpage=nil, pageno=nil)
          @PerPage = perpage
          @PageNo = pageno
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
        end
      end

      # 分页结果参数
      class PageByNoResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总共有多少数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPage: 总共有多少个分页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param CurrentPageNo: 当前的分页号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentPageNo: Integer
        # @param IsEnd: 【已弃用】是否遍历到末尾
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEnd: Boolean
        # @param End: 是否遍历到末尾
        # @type End: Boolean

        attr_accessor :TotalCount, :TotalPage, :CurrentPageNo, :IsEnd, :End
        extend Gem::Deprecate
        deprecate :IsEnd, :none, 2026, 8
        deprecate :IsEnd=, :none, 2026, 8

        def initialize(totalcount=nil, totalpage=nil, currentpageno=nil, isend=nil, _end=nil)
          @TotalCount = totalcount
          @TotalPage = totalpage
          @CurrentPageNo = currentpageno
          @IsEnd = isend
          @End = _end
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPage = params['TotalPage']
          @CurrentPageNo = params['CurrentPageNo']
          @IsEnd = params['IsEnd']
          @End = params['End']
        end
      end

      # 按第几页进行分页的入参
      class PageByNumParams < TencentCloud::Common::AbstractModel
        # @param PerPage: <p>每个分页的数量</p>
        # @type PerPage: Integer
        # @param PageNo: <p>第几个分页，从1开始</p>
        # @type PageNo: Integer

        attr_accessor :PerPage, :PageNo

        def initialize(perpage=nil, pageno=nil)
          @PerPage = perpage
          @PageNo = pageno
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
        end
      end

      # 分页结果参数
      class PageByNumResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总共有多少数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPage: <p>总共有多少个分页</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param CurrentPageNo: <p>当前的分页号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentPageNo: Integer

        attr_accessor :TotalCount, :TotalPage, :CurrentPageNo

        def initialize(totalcount=nil, totalpage=nil, currentpageno=nil)
          @TotalCount = totalcount
          @TotalPage = totalpage
          @CurrentPageNo = currentpageno
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPage = params['TotalPage']
          @CurrentPageNo = params['CurrentPageNo']
        end
      end

      # 告警通知自定义PagerDutyRobot内容模板
      class PagerDutyRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Body: 请求体模板 仅支持json
        # @type Body: String
        # @param Headers: 请求头 暂时未支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :Body, :Headers, :TitleTmpl

        def initialize(body=nil, headers=nil, titletmpl=nil)
          @Body = body
          @Headers = headers
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @Body = params['Body']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              pagerdutyrobotnoticetmplheader_tmp = PagerDutyRobotNoticeTmplHeader.new
              pagerdutyrobotnoticetmplheader_tmp.deserialize(i)
              @Headers << pagerdutyrobotnoticetmplheader_tmp
            end
          end
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 告警通知自定义PagerDutyRobot模板中的请求体头部描述
      class PagerDutyRobotNoticeTmplHeader < TencentCloud::Common::AbstractModel
        # @param Key: http请求中header的key
        # @type Key: String
        # @param Values: http请求中header的value
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

      # 告警通知自定义PagerDutyRobot的通知内容模板匹配器
      class PagerDutyRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid; Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 自定义PagerDutyRobot内容模板
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.PagerDutyRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = PagerDutyRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 转发目标对象信息
      class Producer < TencentCloud::Common::AbstractModel
        # @param ProtocolType: 转发协议类型，0-stormRetPb, 1-tcbDispensePb, 2-stormRetJson, 3-ADPPb(废弃)，4-中台pb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtocolType: Integer
        # @param Type: 目标类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Brokers: 转发kafka地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Brokers: String
        # @param Topic: 转发kafka topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param Merge: 是否合并指标,默认是1，合并
        # @type Merge: Integer
        # @param GlobalTags: 全局维度组
        # @type GlobalTags: Array
        # @param DefaultTags: 默认维度组，只提供维度即可
        # @type DefaultTags: Array
        # @param Username: Kafka用户名
        # @type Username: String
        # @param Password: Kafka密码
        # @type Password: String

        attr_accessor :ProtocolType, :Type, :Brokers, :Topic, :Merge, :GlobalTags, :DefaultTags, :Username, :Password

        def initialize(protocoltype=nil, type=nil, brokers=nil, topic=nil, merge=nil, globaltags=nil, defaulttags=nil, username=nil, password=nil)
          @ProtocolType = protocoltype
          @Type = type
          @Brokers = brokers
          @Topic = topic
          @Merge = merge
          @GlobalTags = globaltags
          @DefaultTags = defaulttags
          @Username = username
          @Password = password
        end

        def deserialize(params)
          @ProtocolType = params['ProtocolType']
          @Type = params['Type']
          @Brokers = params['Brokers']
          @Topic = params['Topic']
          @Merge = params['Merge']
          unless params['GlobalTags'].nil?
            @GlobalTags = []
            params['GlobalTags'].each do |i|
              dispenseglobaltag_tmp = DispenseGlobalTag.new
              dispenseglobaltag_tmp.deserialize(i)
              @GlobalTags << dispenseglobaltag_tmp
            end
          end
          @DefaultTags = params['DefaultTags']
          @Username = params['Username']
          @Password = params['Password']
        end
      end

      # 官网通知内容模板
      class QCloudYeheNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Email: 邮件通知渠道
        # @type Email: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param QYWX: 企业微信通知渠道
        # @type QYWX: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param SMS: 短信通知渠道
        # @type SMS: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param Voice: 语音通知渠道
        # @type Voice: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param WeChat: 微信通知渠道
        # @type WeChat: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheWeChatNoticeTmplItem`
        # @param Site: 站内信通知渠道
        # @type Site: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param Andon: 安灯通知渠道
        # @type Andon: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`

        attr_accessor :Email, :QYWX, :SMS, :Voice, :WeChat, :Site, :Andon

        def initialize(email=nil, qywx=nil, sms=nil, voice=nil, wechat=nil, site=nil, andon=nil)
          @Email = email
          @QYWX = qywx
          @SMS = sms
          @Voice = voice
          @WeChat = wechat
          @Site = site
          @Andon = andon
        end

        def deserialize(params)
          unless params['Email'].nil?
            @Email = QCloudYeheNoticeTmplItem.new
            @Email.deserialize(params['Email'])
          end
          unless params['QYWX'].nil?
            @QYWX = QCloudYeheNoticeTmplItem.new
            @QYWX.deserialize(params['QYWX'])
          end
          unless params['SMS'].nil?
            @SMS = QCloudYeheNoticeTmplItem.new
            @SMS.deserialize(params['SMS'])
          end
          unless params['Voice'].nil?
            @Voice = QCloudYeheNoticeTmplItem.new
            @Voice.deserialize(params['Voice'])
          end
          unless params['WeChat'].nil?
            @WeChat = QCloudYeheWeChatNoticeTmplItem.new
            @WeChat.deserialize(params['WeChat'])
          end
          unless params['Site'].nil?
            @Site = QCloudYeheNoticeTmplItem.new
            @Site.deserialize(params['Site'])
          end
          unless params['Andon'].nil?
            @Andon = QCloudYeheNoticeTmplItem.new
            @Andon.deserialize(params['Andon'])
          end
        end
      end

      # 官网通知内容模板元素
      class QCloudYeheNoticeTmplItem < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 官网内容通知模板的匹配器
      class QCloudYeheNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = QCloudYeheNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 官网通知内容模板元素
      class QCloudYeheWeChatNoticeTmplItem < TencentCloud::Common::AbstractModel
        # @param AlarmContentTmpl: 告警内容模板
        # @type AlarmContentTmpl: String
        # @param AlarmObjectTmpl: 告警对象模板
        # @type AlarmObjectTmpl: String
        # @param AlarmRegionTmpl: 告警地域模板
        # @type AlarmRegionTmpl: String
        # @param AlarmTimeTmpl: 告警时间模板
        # @type AlarmTimeTmpl: String

        attr_accessor :AlarmContentTmpl, :AlarmObjectTmpl, :AlarmRegionTmpl, :AlarmTimeTmpl

        def initialize(alarmcontenttmpl=nil, alarmobjecttmpl=nil, alarmregiontmpl=nil, alarmtimetmpl=nil)
          @AlarmContentTmpl = alarmcontenttmpl
          @AlarmObjectTmpl = alarmobjecttmpl
          @AlarmRegionTmpl = alarmregiontmpl
          @AlarmTimeTmpl = alarmtimetmpl
        end

        def deserialize(params)
          @AlarmContentTmpl = params['AlarmContentTmpl']
          @AlarmObjectTmpl = params['AlarmObjectTmpl']
          @AlarmRegionTmpl = params['AlarmRegionTmpl']
          @AlarmTimeTmpl = params['AlarmTimeTmpl']
        end
      end

      # 资源实例
      class ResourceInstance < TencentCloud::Common::AbstractModel
        # @param Id: <p>实例 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Service: <p>服务名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: String
        # @param Region: <p>地域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param IsReady: <p>是否就绪</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsReady: Boolean

        attr_accessor :Id, :Service, :Region, :IsReady

        def initialize(id=nil, service=nil, region=nil, isready=nil)
          @Id = id
          @Service = service
          @Region = region
          @IsReady = isready
        end

        def deserialize(params)
          @Id = params['Id']
          @Service = params['Service']
          @Region = params['Region']
          @IsReady = params['IsReady']
        end
      end

      # 资源地图实体
      class ResourceMapInfo < TencentCloud::Common::AbstractModel
        # @param ResourceMapId: <p>资源地图 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceMapId: String
        # @param Name: <p>资源地图名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>资源地图描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param InstanceCount: <p>总实例数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer

        attr_accessor :ResourceMapId, :Name, :Description, :InstanceCount

        def initialize(resourcemapid=nil, name=nil, description=nil, instancecount=nil)
          @ResourceMapId = resourcemapid
          @Name = name
          @Description = description
          @InstanceCount = instancecount
        end

        def deserialize(params)
          @ResourceMapId = params['ResourceMapId']
          @Name = params['Name']
          @Description = params['Description']
          @InstanceCount = params['InstanceCount']
        end
      end

      # 转发规则
      class Rule < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param ExtNamespace: 对外namespace
        # @type ExtNamespace: String
        # @param ExtMetric: 对外指标列表
        # @type ExtMetric: Array
        # @param Producer: 输出信息
        # @type Producer: :class:`Tencentcloud::Monitor.v20230616.models.Producer`
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Status: 规则触发状态
        # @type Status: Integer
        # @param Period: 指标粒度周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: Array
        # @param DispenseConditions: 转发过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DispenseConditions: Array
        # @param DispenseRegions: 转发地域列表
        # @type DispenseRegions: Array

        attr_accessor :RuleId, :Name, :ExtNamespace, :ExtMetric, :Producer, :UpdateTime, :Status, :Period, :DispenseConditions, :DispenseRegions

        def initialize(ruleid=nil, name=nil, extnamespace=nil, extmetric=nil, producer=nil, updatetime=nil, status=nil, period=nil, dispenseconditions=nil, dispenseregions=nil)
          @RuleId = ruleid
          @Name = name
          @ExtNamespace = extnamespace
          @ExtMetric = extmetric
          @Producer = producer
          @UpdateTime = updatetime
          @Status = status
          @Period = period
          @DispenseConditions = dispenseconditions
          @DispenseRegions = dispenseregions
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @ExtNamespace = params['ExtNamespace']
          unless params['ExtMetric'].nil?
            @ExtMetric = []
            params['ExtMetric'].each do |i|
              extmetric_tmp = ExtMetric.new
              extmetric_tmp.deserialize(i)
              @ExtMetric << extmetric_tmp
            end
          end
          unless params['Producer'].nil?
            @Producer = Producer.new
            @Producer.deserialize(params['Producer'])
          end
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Period = params['Period']
          unless params['DispenseConditions'].nil?
            @DispenseConditions = []
            params['DispenseConditions'].each do |i|
              dispensecondition_tmp = DispenseCondition.new
              dispensecondition_tmp.deserialize(i)
              @DispenseConditions << dispensecondition_tmp
            end
          end
          @DispenseRegions = params['DispenseRegions']
        end
      end

      # 会话实体
      class SessionInfo < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>会话 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param AgentId: <p>Agent ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param Title: <p>会话标题</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Status: <p>状态: active / archived / deleted</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskId: <p>如果该会话由任务触发，则携带触发其会话的任务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String

        attr_accessor :SessionId, :AgentId, :Title, :Status, :TaskId

        def initialize(sessionid=nil, agentid=nil, title=nil, status=nil, taskid=nil)
          @SessionId = sessionid
          @AgentId = agentid
          @Title = title
          @Status = status
          @TaskId = taskid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @AgentId = params['AgentId']
          @Title = params['Title']
          @Status = params['Status']
          @TaskId = params['TaskId']
        end
      end

      # 技能实体
      class SkillInfo < TencentCloud::Common::AbstractModel
        # @param SkillId: <p>技能 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillId: String
        # @param Name: <p>技能名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>技能描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Enabled: <p>是否启用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean

        attr_accessor :SkillId, :Name, :Description, :Enabled

        def initialize(skillid=nil, name=nil, description=nil, enabled=nil)
          @SkillId = skillid
          @Name = name
          @Description = description
          @Enabled = enabled
        end

        def deserialize(params)
          @SkillId = params['SkillId']
          @Name = params['Name']
          @Description = params['Description']
          @Enabled = params['Enabled']
        end
      end

      # 企业微信机器人内容模板配置
      class SlackRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: <p>内容模板</p>
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # 企业微信机器人通知模板的匹配器
      class SlackRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: <p>匹配状态 Invalid;<br>Trigger 告警触发; Recovery 告警恢复</p>
        # @type MatchingStatus: Array
        # @param Template: <p>模板配置</p>
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.SlackRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = SlackRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签key
        # @type Key: String
        # @param Value: 标签value
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

      # 任务实体
      class TaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Name: <p>任务名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>任务描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param AgentId: <p>关联 Agent ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param PromptTemplate: <p>提示词模板</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PromptTemplate: String
        # @param OutputFormat: <p>输出格式: markdown / json</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputFormat: String
        # @param TriggerType: <p>触发类型: manual / cron / webhook</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param CronExpr: <p>Cron 表达式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronExpr: String
        # @param CronTimezone: <p>Cron 时区</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronTimezone: String
        # @param SkillIds: <p>关联技能 ID 列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillIds: Array
        # @param McpEndpointIds: <p>关联 MCP 端点 ID 列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type McpEndpointIds: Array
        # @param TimeoutSec: <p>超时时间(秒)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutSec: Integer
        # @param RetryCount: <p>重试次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryCount: Integer
        # @param NotifyIds: <p>通知id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotifyIds: Array
        # @param Enabled: <p>是否启用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean

        attr_accessor :TaskId, :Name, :Description, :AgentId, :PromptTemplate, :OutputFormat, :TriggerType, :CronExpr, :CronTimezone, :SkillIds, :McpEndpointIds, :TimeoutSec, :RetryCount, :NotifyIds, :Enabled

        def initialize(taskid=nil, name=nil, description=nil, agentid=nil, prompttemplate=nil, outputformat=nil, triggertype=nil, cronexpr=nil, crontimezone=nil, skillids=nil, mcpendpointids=nil, timeoutsec=nil, retrycount=nil, notifyids=nil, enabled=nil)
          @TaskId = taskid
          @Name = name
          @Description = description
          @AgentId = agentid
          @PromptTemplate = prompttemplate
          @OutputFormat = outputformat
          @TriggerType = triggertype
          @CronExpr = cronexpr
          @CronTimezone = crontimezone
          @SkillIds = skillids
          @McpEndpointIds = mcpendpointids
          @TimeoutSec = timeoutsec
          @RetryCount = retrycount
          @NotifyIds = notifyids
          @Enabled = enabled
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @Description = params['Description']
          @AgentId = params['AgentId']
          @PromptTemplate = params['PromptTemplate']
          @OutputFormat = params['OutputFormat']
          @TriggerType = params['TriggerType']
          @CronExpr = params['CronExpr']
          @CronTimezone = params['CronTimezone']
          @SkillIds = params['SkillIds']
          @McpEndpointIds = params['McpEndpointIds']
          @TimeoutSec = params['TimeoutSec']
          @RetryCount = params['RetryCount']
          @NotifyIds = params['NotifyIds']
          @Enabled = params['Enabled']
        end
      end

      # 企业微信机器人内容模板配置
      class TeamsRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # 企业微信机器人通知模板的匹配器
      class TeamsRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.TeamsRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = TeamsRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # Microsoft Teams 工作流内容模板配置
      class TeamsWorkflowRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: <p>内容模板</p>
        # @type ContentTmpl: String
        # @param Version: <p>区分 TeamsWorkflow 是自定义内容还是自定义 POST BODY</p><p>枚举值：</p><ul><li>WorkflowText： 自定义内容</li><li>WorkflowJson： 自定义 POST BODY</li></ul>
        # @type Version: String
        # @param TitleTmpl: <p>标题模版</p>
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :Version, :TitleTmpl

        def initialize(contenttmpl=nil, version=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @Version = version
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @Version = params['Version']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # Microsoft Teams 工作流通知模板的匹配器
      class TeamsWorkflowRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: <p>匹配状态 Invalid; Trigger 告警触发; Recovery 告警恢复</p><p>枚举值：</p><ul><li>Trigger： 告警触发</li><li>Recovery： 告警恢复</li></ul>
        # @type MatchingStatus: Array
        # @param Template: <p>模板配置</p>
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.TeamsWorkflowRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = TeamsWorkflowRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # TriggerAIWorkbenchSREDigitalTwinTask请求参数结构体
      class TriggerAIWorkbenchSREDigitalTwinTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 数字分身任务ID
        # @type TaskID: Integer

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # TriggerAIWorkbenchSREDigitalTwinTask返回参数结构体
      class TriggerAIWorkbenchSREDigitalTwinTaskResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身任务信息
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.TriggerDigitalTwinTaskResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = TriggerDigitalTwinTaskResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # TriggerAIWorkbenchTask请求参数结构体
      class TriggerAIWorkbenchTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # TriggerAIWorkbenchTask返回参数结构体
      class TriggerAIWorkbenchTaskResponse < TencentCloud::Common::AbstractModel
        # @param ExecutionId: <p>执行 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExecutionId, :RequestId

        def initialize(executionid=nil, requestid=nil)
          @ExecutionId = executionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ExecutionId = params['ExecutionId']
          @RequestId = params['RequestId']
        end
      end

      # 触发数字分身任务响应
      class TriggerDigitalTwinTaskResp < TencentCloud::Common::AbstractModel
        # @param TaskID: 数字分身任务ID
        # @type TaskID: Integer

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # UpdateAIWorkbenchAgent请求参数结构体
      class UpdateAIWorkbenchAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent ID</p>
        # @type AgentId: String
        # @param Name: <p>Agent 名称</p>
        # @type Name: String
        # @param Description: <p>Agent 描述</p>
        # @type Description: String
        # @param Category: <p>Agent 分类</p>
        # @type Category: String
        # @param Tags: <p>Agent 标签</p>
        # @type Tags: Array
        # @param Instruction: <p>Agent 提示词</p>
        # @type Instruction: :class:`Tencentcloud::Monitor.v20230616.models.InstructionConfig`
        # @param SkillIds: <p>关联技能 ID 列表</p>
        # @type SkillIds: Array
        # @param Source: <p>来源</p>
        # @type Source: String
        # @param Status: <p>状态</p>
        # @type Status: String
        # @param ResourceMapId: <p>关联的资源地图 ID</p>
        # @type ResourceMapId: String
        # @param MCPIds: <p>关联的mcp</p>
        # @type MCPIds: Array
        # @param EnvVars: <p>agent运行时环境变量</p>
        # @type EnvVars: Array

        attr_accessor :AgentId, :Name, :Description, :Category, :Tags, :Instruction, :SkillIds, :Source, :Status, :ResourceMapId, :MCPIds, :EnvVars

        def initialize(agentid=nil, name=nil, description=nil, category=nil, tags=nil, instruction=nil, skillids=nil, source=nil, status=nil, resourcemapid=nil, mcpids=nil, envvars=nil)
          @AgentId = agentid
          @Name = name
          @Description = description
          @Category = category
          @Tags = tags
          @Instruction = instruction
          @SkillIds = skillids
          @Source = source
          @Status = status
          @ResourceMapId = resourcemapid
          @MCPIds = mcpids
          @EnvVars = envvars
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Name = params['Name']
          @Description = params['Description']
          @Category = params['Category']
          @Tags = params['Tags']
          unless params['Instruction'].nil?
            @Instruction = InstructionConfig.new
            @Instruction.deserialize(params['Instruction'])
          end
          @SkillIds = params['SkillIds']
          @Source = params['Source']
          @Status = params['Status']
          @ResourceMapId = params['ResourceMapId']
          @MCPIds = params['MCPIds']
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
        end
      end

      # UpdateAIWorkbenchAgent返回参数结构体
      class UpdateAIWorkbenchAgentResponse < TencentCloud::Common::AbstractModel
        # @param Agent: <p>更新后的 Agent 信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Agent: :class:`Tencentcloud::Monitor.v20230616.models.AgentInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Agent, :RequestId

        def initialize(agent=nil, requestid=nil)
          @Agent = agent
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = AgentInfo.new
            @Agent.deserialize(params['Agent'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 企业微信机器人内容模板配置
      class WeWorkRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # 企业微信机器人通知模板的匹配器
      class WeWorkRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.WeWorkRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = WeWorkRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 告警通知自定义Webhook内容模板
      class WebhookNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Body: 请求体
        # @type Body: String
        # @param BodyContentType: 请求体的类型，非必填、默认为JSON
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyContentType: String
        # @param Headers: 请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array

        attr_accessor :Body, :BodyContentType, :Headers

        def initialize(body=nil, bodycontenttype=nil, headers=nil)
          @Body = body
          @BodyContentType = bodycontenttype
          @Headers = headers
        end

        def deserialize(params)
          @Body = params['Body']
          @BodyContentType = params['BodyContentType']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              webhooknoticetmplheader_tmp = WebhookNoticeTmplHeader.new
              webhooknoticetmplheader_tmp.deserialize(i)
              @Headers << webhooknoticetmplheader_tmp
            end
          end
        end
      end

      # 告警通知自定义Webhook模板中的请求体头部描述
      class WebhookNoticeTmplHeader < TencentCloud::Common::AbstractModel
        # @param Key: http请求中header的key
        # @type Key: String
        # @param Values: http请求中header的value
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

      # 告警通知自定义Webhook的通知内容模板匹配器
      class WebhookNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid; Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 自定义Webhook内容模板
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.WebhookNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = WebhookNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

    end
  end
end

