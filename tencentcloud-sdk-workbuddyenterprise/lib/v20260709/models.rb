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
  module Workbuddyenterprise
    module V20260709
      # Agent 的 A2A 对外互通配置与注册态
      class A2AConfig < TencentCloud::Common::AbstractModel
        # @param A2AEnabled: Agent 级唯一 A2A 开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AEnabled: Boolean
        # @param A2APublicRef: 对外 A2A handle（已注册时；仅 DescribeAgent / ModifyAgentA2AConfig 填充）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2APublicRef: String
        # @param A2AEndpoint: 对外 A2A card 发现地址（已注册时）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AEndpoint: String
        # @param A2AStatus: 注册状态：DRAFT / REGISTERED / DISABLED / NONE / UNKNOWN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AStatus: String

        attr_accessor :A2AEnabled, :A2APublicRef, :A2AEndpoint, :A2AStatus

        def initialize(a2aenabled=nil, a2apublicref=nil, a2aendpoint=nil, a2astatus=nil)
          @A2AEnabled = a2aenabled
          @A2APublicRef = a2apublicref
          @A2AEndpoint = a2aendpoint
          @A2AStatus = a2astatus
        end

        def deserialize(params)
          @A2AEnabled = params['A2AEnabled']
          @A2APublicRef = params['A2APublicRef']
          @A2AEndpoint = params['A2AEndpoint']
          @A2AStatus = params['A2AStatus']
        end
      end

      # A2A skill 录入项（注册外部 Agent 时传入）
      class A2ASkillInput < TencentCloud::Common::AbstractModel
        # @param A2ASkillId: <p>A2A skill ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2ASkillId: String
        # @param Name: <p>skill 名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>skill 描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Tags: <p>标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Examples: <p>示例</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Examples: Array

        attr_accessor :A2ASkillId, :Name, :Description, :Tags, :Examples

        def initialize(a2askillid=nil, name=nil, description=nil, tags=nil, examples=nil)
          @A2ASkillId = a2askillid
          @Name = name
          @Description = description
          @Tags = tags
          @Examples = examples
        end

        def deserialize(params)
          @A2ASkillId = params['A2ASkillId']
          @Name = params['Name']
          @Description = params['Description']
          @Tags = params['Tags']
          @Examples = params['Examples']
        end
      end

      # A2A skill 列表项（出参用，来自 A2A card 解析结果）
      class A2ASkillItem < TencentCloud::Common::AbstractModel
        # @param A2ASkillId: A2A skill ID（加 A2A 前缀与内部 SkillId 概念区分）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2ASkillId: String
        # @param Name: skill 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: skill 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :A2ASkillId, :Name, :Description

        def initialize(a2askillid=nil, name=nil, description=nil)
          @A2ASkillId = a2askillid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @A2ASkillId = params['A2ASkillId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # Agent 列表项（原 AgentSummary；Agent 级纯字段，不再内嵌版本信息）
      class AgentItem < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID（全局唯一，数字字符串形态）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param AgentName: Agent 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String
        # @param Description: Agent 描述；未填写时缺省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param AvatarUrl: 头像 URL；未设置时缺省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvatarUrl: String
        # @param CreatedTime: 创建时间，RFC3339 UTC 格式（如 2026-06-01T09:00:00Z）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间，RFC3339 UTC 格式（如 2026-09-10T15:20:00Z）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param A2AEnabled: Agent 级 A2A 开关。false 恒输出（未开启不等于字段缺失）；A2AEndpoint / A2AStatus 由本接口在 A2A 开启时直接下发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AEnabled: Boolean
        # @param SessionCount: 历史会话总数（t_managed_agent_sessions 未软删计数，含全部状态）。注意与 DescribeAgent.ActiveSessionCount（活跃会话数）口径不同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionCount: Integer
        # @param Model: 最新版本的模型标识，取 latest_version_id 指向版本的 model；Agent 尚无版本时缺省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: String
        # @param LatestVersionId: 最新版本 ID（latest_version_id 转字符串，19 位雪花数字形态）；Agent 尚无版本时缺省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestVersionId: String
        # @param LatestVersionName: 最新版本名（可能为 default / test-N / prod-N 任意类型）；Agent 尚无版本时缺省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestVersionName: String
        # @param A2AEndpoint: 对外 A2A card 发现地址（Agent Card JSON 地址），仅 A2AEnabled=true 的行下发；未注册 / registry 读失败时缺省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AEndpoint: String
        # @param A2AStatus: A2A 注册态：DRAFT / REGISTERED / DISABLED / NONE / UNKNOWN，仅 A2AEnabled=true 的行下发，与 DescribeAgent.A2AConfig.A2AStatus 同枚举；用于「开关已开但地址尚未生成」的空态文案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AStatus: String
        # @param PublicApiEnabled: 公网链接访问开关。false 恒输出（未开启不等于字段缺失）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicApiEnabled: Boolean
        # @param PublicApiUrl: 公网访问地址，仅 PublicApiEnabled=true 的行下发。固定拼法 https://{AgentId}-{region}.{endpoint_suffix}，与 DescribeAgentPublicAccess.Url 同规则；endpoint_suffix 未配置时为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicApiUrl: String
        # @param CreatorUin: 创建人 UIN（建号时落库的 sub_account_uin；主账号自建时为主账号 uin）。注意语义为「实际操作建号的账号」
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param AccountId: 绑定的 OneID 企业账号 ID（数字字符串形态，如 1438693592234206274）；空=未绑定（缺省）。与 DescribeAgent.AgentInfo.AccountId 同源同语义；创建时可选传入，之后不可变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountId: String

        attr_accessor :AgentId, :AgentName, :Description, :AvatarUrl, :CreatedTime, :ModifiedTime, :A2AEnabled, :SessionCount, :Model, :LatestVersionId, :LatestVersionName, :A2AEndpoint, :A2AStatus, :PublicApiEnabled, :PublicApiUrl, :CreatorUin, :AccountId

        def initialize(agentid=nil, agentname=nil, description=nil, avatarurl=nil, createdtime=nil, modifiedtime=nil, a2aenabled=nil, sessioncount=nil, model=nil, latestversionid=nil, latestversionname=nil, a2aendpoint=nil, a2astatus=nil, publicapienabled=nil, publicapiurl=nil, creatoruin=nil, accountid=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @A2AEnabled = a2aenabled
          @SessionCount = sessioncount
          @Model = model
          @LatestVersionId = latestversionid
          @LatestVersionName = latestversionname
          @A2AEndpoint = a2aendpoint
          @A2AStatus = a2astatus
          @PublicApiEnabled = publicapienabled
          @PublicApiUrl = publicapiurl
          @CreatorUin = creatoruin
          @AccountId = accountid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @A2AEnabled = params['A2AEnabled']
          @SessionCount = params['SessionCount']
          @Model = params['Model']
          @LatestVersionId = params['LatestVersionId']
          @LatestVersionName = params['LatestVersionName']
          @A2AEndpoint = params['A2AEndpoint']
          @A2AStatus = params['A2AStatus']
          @PublicApiEnabled = params['PublicApiEnabled']
          @PublicApiUrl = params['PublicApiUrl']
          @CreatorUin = params['CreatorUin']
          @AccountId = params['AccountId']
        end
      end

      # Agent 版本列表项（原 AgentVersionSummary / AgentVersionBrief 合并，字段取并集）
      class AgentVersionItem < TencentCloud::Common::AbstractModel
        # @param VersionId: 版本 ID（雪花算法生成的数字字符串，唯一标识）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param VersionName: 版本名称，形如 default / test-N / prod-N（N 为同类型版本的自增序号）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param VersionType: 版本类型（服务端按 VersionName 派生）：DEFAULT（默认版本，可编辑）/ TEST（测试版本，可编辑）/ PROD（生产版本，内容冻结）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionType: String
        # @param Model: 版本绑定的模型标识；未设置时缺省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: String
        # @param SandboxTemplateId: 版本运行时使用的沙箱模板业务 ID；空字符串表示使用默认沙箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SandboxTemplateId: String
        # @param Status: 版本状态：DRAFT（草稿）/ ENABLED（已启用）/ DISABLED（已停用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param SessionCount: <p>该版本累计承接的会话总数（历史累计值，只增不减）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionCount: Integer
        # @param CreatedTime: 创建时间，RFC3339 UTC 格式（如 2026-08-01T10:00:00Z）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间，RFC3339 UTC 格式（如 2026-08-10T15:30:00Z）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String

        attr_accessor :VersionId, :VersionName, :VersionType, :Model, :SandboxTemplateId, :Status, :SessionCount, :CreatedTime, :ModifiedTime

        def initialize(versionid=nil, versionname=nil, versiontype=nil, model=nil, sandboxtemplateid=nil, status=nil, sessioncount=nil, createdtime=nil, modifiedtime=nil)
          @VersionId = versionid
          @VersionName = versionname
          @VersionType = versiontype
          @Model = model
          @SandboxTemplateId = sandboxtemplateid
          @Status = status
          @SessionCount = sessioncount
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @VersionName = params['VersionName']
          @VersionType = params['VersionType']
          @Model = params['Model']
          @SandboxTemplateId = params['SandboxTemplateId']
          @Status = params['Status']
          @SessionCount = params['SessionCount']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # BindExternalAgent请求参数结构体
      class BindExternalAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: TMA managed agent 业务 ID（CloudAgentID）
        # @type AgentId: String
        # @param A2AAgentId: 已注册的外部 A2A agent ID
        # @type A2AAgentId: String
        # @param VersionId: 版本 ID
        # @type VersionId: String

        attr_accessor :AgentId, :A2AAgentId, :VersionId

        def initialize(agentid=nil, a2aagentid=nil, versionid=nil)
          @AgentId = agentid
          @A2AAgentId = a2aagentid
          @VersionId = versionid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @A2AAgentId = params['A2AAgentId']
          @VersionId = params['VersionId']
        end
      end

      # BindExternalAgent返回参数结构体
      class BindExternalAgentResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果状态（大写枚举）：BOUND=已绑定 / UNBOUND=已解绑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param BindingId: 绑定记录 ID（自增 ID 字符串）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindingId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :BindingId, :RequestId

        def initialize(status=nil, bindingid=nil, requestid=nil)
          @Status = status
          @BindingId = bindingid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @BindingId = params['BindingId']
          @RequestId = params['RequestId']
        end
      end

      # 内置模型信息
      class BuiltinModel < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型唯一标识
        # @type ModelId: String
        # @param Name: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Vendor: 供应商，如 TENCENT、OPENAI、ANTHROPIC、DEEPSEEK 等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vendor: String
        # @param MaxOutputTokens: 最大输出 Token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxOutputTokens: Integer
        # @param MaxInputTokens: 最大输入 Token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxInputTokens: Integer
        # @param SupportsToolCall: 是否支持函数调用（Tool Call）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportsToolCall: Boolean
        # @param SupportsImages: 是否支持视觉（图片输入）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportsImages: Boolean
        # @param DescriptionZh: 模型中文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescriptionZh: String
        # @param DescriptionEn: 模型英文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescriptionEn: String
        # @param Tags: 模型标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Clients: 支持的客户端列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clients: Array
        # @param ServiceEndpoint: 服务接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceEndpoint: String
        # @param Status: 状态：ENABLED（已启用）/ DISABLED（已停用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param AgentCount: 本企业内绑定该模型的 Agent 数（过滤软删除 Agent/版本与调试 Agent）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentCount: Integer

        attr_accessor :ModelId, :Name, :Vendor, :MaxOutputTokens, :MaxInputTokens, :SupportsToolCall, :SupportsImages, :DescriptionZh, :DescriptionEn, :Tags, :Clients, :ServiceEndpoint, :Status, :AgentCount

        def initialize(modelid=nil, name=nil, vendor=nil, maxoutputtokens=nil, maxinputtokens=nil, supportstoolcall=nil, supportsimages=nil, descriptionzh=nil, descriptionen=nil, tags=nil, clients=nil, serviceendpoint=nil, status=nil, agentcount=nil)
          @ModelId = modelid
          @Name = name
          @Vendor = vendor
          @MaxOutputTokens = maxoutputtokens
          @MaxInputTokens = maxinputtokens
          @SupportsToolCall = supportstoolcall
          @SupportsImages = supportsimages
          @DescriptionZh = descriptionzh
          @DescriptionEn = descriptionen
          @Tags = tags
          @Clients = clients
          @ServiceEndpoint = serviceendpoint
          @Status = status
          @AgentCount = agentcount
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @Name = params['Name']
          @Vendor = params['Vendor']
          @MaxOutputTokens = params['MaxOutputTokens']
          @MaxInputTokens = params['MaxInputTokens']
          @SupportsToolCall = params['SupportsToolCall']
          @SupportsImages = params['SupportsImages']
          @DescriptionZh = params['DescriptionZh']
          @DescriptionEn = params['DescriptionEn']
          @Tags = params['Tags']
          @Clients = params['Clients']
          @ServiceEndpoint = params['ServiceEndpoint']
          @Status = params['Status']
          @AgentCount = params['AgentCount']
        end
      end

      # 聊天接入点。EndpointType 现在就引入枚举：当前仅返回一个 PUBLIC 元素，将来新增私网端点与 VPC 属性为纯增量。
      class ChatEndpoint < TencentCloud::Common::AbstractModel
        # @param EndpointType: 接入点类型：PUBLIC（公网）/ PRIVATE（私网，预留）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndpointType: String
        # @param Url: 接入点地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :EndpointType, :Url

        def initialize(endpointtype=nil, url=nil)
          @EndpointType = endpointtype
          @Url = url
        end

        def deserialize(params)
          @EndpointType = params['EndpointType']
          @Url = params['Url']
        end
      end

      # 连接器详情（主表 + 最新版本展开）。
      class ConnectorInfo < TencentCloud::Common::AbstractModel
        # @param ConnectorId: 连接器 ID
        # @type ConnectorId: String
        # @param ConnectorSlug: 连接器短标识（终身不变，跨版本稳定）
        # @type ConnectorSlug: String
        # @param ConnectorKey: 版本级连接器密钥
        # @type ConnectorKey: String
        # @param Name: 连接器名称
        # @type Name: String
        # @param Description: 连接器描述
        # @type Description: String
        # @param AvatarUrl: 头像 URL
        # @type AvatarUrl: String
        # @param Source: 连接器来源：ENTERPRISE_AGENT / ASSISTANT
        # @type Source: String
        # @param EnterpriseId: 归属企业 ID
        # @type EnterpriseId: String
        # @param Type: 连接器类型：MCP_SERVER / A2A / API_SERVICE
        # @type Type: String
        # @param ServiceUrl: 上游服务地址
        # @type ServiceUrl: String
        # @param AuthModes: 授权方式列表：NONE / ONEID / OAUTH2_IDP
        # @type AuthModes: Array
        # @param LatestVersionNo: 最新版本号
        # @type LatestVersionNo: Integer
        # @param Status: 连接器状态：ACTIVE / DISABLED
        # @type Status: String
        # @param CreatorId: 创建人 ID
        # @type CreatorId: String
        # @param CreatedTime: 创建时间（ISO8601，UTC）
        # @type CreatedTime: String
        # @param ModifiedTime: 最后修改时间（ISO8601，UTC）
        # @type ModifiedTime: String

        attr_accessor :ConnectorId, :ConnectorSlug, :ConnectorKey, :Name, :Description, :AvatarUrl, :Source, :EnterpriseId, :Type, :ServiceUrl, :AuthModes, :LatestVersionNo, :Status, :CreatorId, :CreatedTime, :ModifiedTime

        def initialize(connectorid=nil, connectorslug=nil, connectorkey=nil, name=nil, description=nil, avatarurl=nil, source=nil, enterpriseid=nil, type=nil, serviceurl=nil, authmodes=nil, latestversionno=nil, status=nil, creatorid=nil, createdtime=nil, modifiedtime=nil)
          @ConnectorId = connectorid
          @ConnectorSlug = connectorslug
          @ConnectorKey = connectorkey
          @Name = name
          @Description = description
          @AvatarUrl = avatarurl
          @Source = source
          @EnterpriseId = enterpriseid
          @Type = type
          @ServiceUrl = serviceurl
          @AuthModes = authmodes
          @LatestVersionNo = latestversionno
          @Status = status
          @CreatorId = creatorid
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @ConnectorId = params['ConnectorId']
          @ConnectorSlug = params['ConnectorSlug']
          @ConnectorKey = params['ConnectorKey']
          @Name = params['Name']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @Source = params['Source']
          @EnterpriseId = params['EnterpriseId']
          @Type = params['Type']
          @ServiceUrl = params['ServiceUrl']
          @AuthModes = params['AuthModes']
          @LatestVersionNo = params['LatestVersionNo']
          @Status = params['Status']
          @CreatorId = params['CreatorId']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 连接器引用入参
      class ConnectorRefInput < TencentCloud::Common::AbstractModel
        # @param ConnectorId: connector 主表 ID（雪花 ID 数字串）
        # @type ConnectorId: String

        attr_accessor :ConnectorId

        def initialize(connectorid=nil)
          @ConnectorId = connectorid
        end

        def deserialize(params)
          @ConnectorId = params['ConnectorId']
        end
      end

      # CreateAgent请求参数结构体
      class CreateAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentName: Agent 名称
        # @type AgentName: String
        # @param Description: Agent 描述
        # @type Description: String
        # @param AvatarUrl: 头像 URL
        # @type AvatarUrl: String
        # @param Model: 模型标识
        # @type Model: String
        # @param Manifest: Manifest v2.0 原文（JSON 字符串），作为 default 版本初始内容。ConnectorSet 非空时 Manifest 不可为空，否则返回 InvalidParameter
        # @type Manifest: String
        # @param ConnectorSet: 该 Agent 最终绑定的连接器集合（全量覆盖语义）：缺省 = 不绑定连接器；非空 = 物化为 manifest v2 mcp_servers 网关条目。ConnectorSet 非空时 Manifest 不可为空，否则返回 InvalidParameter
        # @type ConnectorSet: Array
        # @param AccountId: 绑定的 OneID 企业账号 ID。非空时必须是当前主账号已在企业授权表（t_managed_agent_enterprise_authorization）中授权的租户，否则返回 UnauthorizedOperation.AccountNotAuthorized。绑定后不可修改。TrimSpace 后长度 1~64 字符
        # @type AccountId: String

        attr_accessor :AgentName, :Description, :AvatarUrl, :Model, :Manifest, :ConnectorSet, :AccountId

        def initialize(agentname=nil, description=nil, avatarurl=nil, model=nil, manifest=nil, connectorset=nil, accountid=nil)
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
          @Model = model
          @Manifest = manifest
          @ConnectorSet = connectorset
          @AccountId = accountid
        end

        def deserialize(params)
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @Model = params['Model']
          @Manifest = params['Manifest']
          unless params['ConnectorSet'].nil?
            @ConnectorSet = []
            params['ConnectorSet'].each do |i|
              connectorrefinput_tmp = ConnectorRefInput.new
              connectorrefinput_tmp.deserialize(i)
              @ConnectorSet << connectorrefinput_tmp
            end
          end
          @AccountId = params['AccountId']
        end
      end

      # CreateAgent返回参数结构体
      class CreateAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param AgentName: Agent 名称
        # @type AgentName: String
        # @param Description: Agent 描述
        # @type Description: String
        # @param AvatarUrl: 头像 URL
        # @type AvatarUrl: String
        # @param IsDebug: 是否调试 Agent
        # @type IsDebug: Boolean
        # @param CreatedTime: 创建时间（RFC3339）
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间（RFC3339）
        # @type ModifiedTime: String
        # @param RoutingSet: 流量路由配置（VersionId 恒为字符串，防 JS 精度丢失）
        # @type RoutingSet: Array
        # @param A2AConfig: A2A 对外互通配置与注册态（只读回显；原四个平铺字段收进结构）
        # @type A2AConfig: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.A2AConfig`
        # @param AccountId: 绑定的 OneID 企业账号 ID。允许为空：未绑定的存量与新建 Agent 该字段缺省，绑定后回显绑定值
        # @type AccountId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :AgentName, :Description, :AvatarUrl, :IsDebug, :CreatedTime, :ModifiedTime, :RoutingSet, :A2AConfig, :AccountId, :RequestId

        def initialize(agentid=nil, agentname=nil, description=nil, avatarurl=nil, isdebug=nil, createdtime=nil, modifiedtime=nil, routingset=nil, a2aconfig=nil, accountid=nil, requestid=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
          @IsDebug = isdebug
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @RoutingSet = routingset
          @A2AConfig = a2aconfig
          @AccountId = accountid
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @IsDebug = params['IsDebug']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          unless params['RoutingSet'].nil?
            @RoutingSet = []
            params['RoutingSet'].each do |i|
              routingitem_tmp = RoutingItem.new
              routingitem_tmp.deserialize(i)
              @RoutingSet << routingitem_tmp
            end
          end
          unless params['A2AConfig'].nil?
            @A2AConfig = A2AConfig.new
            @A2AConfig.deserialize(params['A2AConfig'])
          end
          @AccountId = params['AccountId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentSession请求参数结构体
      class CreateAgentSessionRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param VersionId: <p>指定版本 ID（可选）。非空且合法时固定使用该版本，跳过 routing_config 权重挑选；指定版本需归属同一 Agent 且未被废弃</p>
        # @type VersionId: String

        attr_accessor :AgentId, :VersionId

        def initialize(agentid=nil, versionid=nil)
          @AgentId = agentid
          @VersionId = versionid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @VersionId = params['VersionId']
        end
      end

      # CreateAgentSession返回参数结构体
      class CreateAgentSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>会话 ID</p>
        # @type SessionId: String
        # @param EndpointSet: <p>可用的聊天接入点列表（当前仅含一个 PUBLIC 公网接入点；空数组 = 无可用接入点）</p>
        # @type EndpointSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :EndpointSet, :RequestId

        def initialize(sessionid=nil, endpointset=nil, requestid=nil)
          @SessionId = sessionid
          @EndpointSet = endpointset
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          unless params['EndpointSet'].nil?
            @EndpointSet = []
            params['EndpointSet'].each do |i|
              chatendpoint_tmp = ChatEndpoint.new
              chatendpoint_tmp.deserialize(i)
              @EndpointSet << chatendpoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentVersionFromSource请求参数结构体
      class CreateAgentVersionFromSourceRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param SourceVersionId: <p>源版本 ID，同 Agent 下未 DISABLED 的任意版本</p>
        # @type SourceVersionId: String
        # @param Model: <p>可选，覆盖源版本的 Model</p>
        # @type Model: String
        # @param Description: <p>可选，覆盖源版本的 Description</p>
        # @type Description: String
        # @param Manifest: <p>可选，完整 v2.0 manifest JSON 字符串；传入则整体覆盖源版本 manifest</p>
        # @type Manifest: String
        # @param SandboxTemplateId: <p>沙箱模板 ID。可选，patch 语义：null 沿用源版本绑定的模板；空串解绑（恢复系统默认模板）；非空时模板须属于当前企业且可用（未删除、状态正常）。</p>
        # @type SandboxTemplateId: String

        attr_accessor :AgentId, :SourceVersionId, :Model, :Description, :Manifest, :SandboxTemplateId

        def initialize(agentid=nil, sourceversionid=nil, model=nil, description=nil, manifest=nil, sandboxtemplateid=nil)
          @AgentId = agentid
          @SourceVersionId = sourceversionid
          @Model = model
          @Description = description
          @Manifest = manifest
          @SandboxTemplateId = sandboxtemplateid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @SourceVersionId = params['SourceVersionId']
          @Model = params['Model']
          @Description = params['Description']
          @Manifest = params['Manifest']
          @SandboxTemplateId = params['SandboxTemplateId']
        end
      end

      # CreateAgentVersionFromSource返回参数结构体
      class CreateAgentVersionFromSourceResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: <p>版本 ID</p>
        # @type VersionId: String
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param VersionName: <p>版本名称</p>
        # @type VersionName: String
        # @param VersionType: <p>版本类型：DEFAULT / TEST / PROD</p>
        # @type VersionType: String
        # @param Description: <p>版本变更说明</p>
        # @type Description: String
        # @param Model: <p>模型标识</p>
        # @type Model: String
        # @param Manifest: <p>Manifest v2.0 精简 manifest 原文（JSON 字符串）</p>
        # @type Manifest: String
        # @param Status: <p>版本状态：DRAFT / ENABLED / DISABLED</p>
        # @type Status: String
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param ModifiedTime: <p>更新时间</p>
        # @type ModifiedTime: String
        # @param SandboxTemplateId: <p>绑定的沙箱模板 ID；未绑定时为空，创建会话沙箱使用系统默认模板。</p>
        # @type SandboxTemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :AgentId, :VersionName, :VersionType, :Description, :Model, :Manifest, :Status, :CreatedTime, :ModifiedTime, :SandboxTemplateId, :RequestId

        def initialize(versionid=nil, agentid=nil, versionname=nil, versiontype=nil, description=nil, model=nil, manifest=nil, status=nil, createdtime=nil, modifiedtime=nil, sandboxtemplateid=nil, requestid=nil)
          @VersionId = versionid
          @AgentId = agentid
          @VersionName = versionname
          @VersionType = versiontype
          @Description = description
          @Model = model
          @Manifest = manifest
          @Status = status
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @SandboxTemplateId = sandboxtemplateid
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @AgentId = params['AgentId']
          @VersionName = params['VersionName']
          @VersionType = params['VersionType']
          @Description = params['Description']
          @Model = params['Model']
          @Manifest = params['Manifest']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @SandboxTemplateId = params['SandboxTemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentVersion请求参数结构体
      class CreateAgentVersionRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param Manifest: <p>Manifest v2.0 精简 manifest 原文（JSON 对象序列化后的字符串）</p>
        # @type Manifest: String
        # @param Model: <p>模型标识</p>
        # @type Model: String
        # @param Description: <p>版本变更说明</p>
        # @type Description: String
        # @param SandboxTemplateId: <p>沙箱模板 ID。可选；传入时模板须属于当前企业且可用（未删除、状态正常），绑定到新建的 test/prod 版本。</p>
        # @type SandboxTemplateId: String

        attr_accessor :AgentId, :Manifest, :Model, :Description, :SandboxTemplateId

        def initialize(agentid=nil, manifest=nil, model=nil, description=nil, sandboxtemplateid=nil)
          @AgentId = agentid
          @Manifest = manifest
          @Model = model
          @Description = description
          @SandboxTemplateId = sandboxtemplateid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Manifest = params['Manifest']
          @Model = params['Model']
          @Description = params['Description']
          @SandboxTemplateId = params['SandboxTemplateId']
        end
      end

      # CreateAgentVersion返回参数结构体
      class CreateAgentVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: <p>版本 ID</p>
        # @type VersionId: String
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param VersionName: <p>版本名称</p>
        # @type VersionName: String
        # @param VersionType: <p>版本类型：DEFAULT / TEST / PROD</p>
        # @type VersionType: String
        # @param Description: <p>版本变更说明</p>
        # @type Description: String
        # @param Model: <p>模型标识</p>
        # @type Model: String
        # @param Manifest: <p>Manifest v2.0 精简 manifest 原文（JSON 字符串）</p>
        # @type Manifest: String
        # @param Status: <p>版本状态：DRAFT / ENABLED / DISABLED</p>
        # @type Status: String
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param ModifiedTime: <p>更新时间</p>
        # @type ModifiedTime: String
        # @param SandboxTemplateId: <p>绑定的沙箱模板 ID；未绑定时为空，创建会话沙箱使用系统默认模板。</p>
        # @type SandboxTemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :AgentId, :VersionName, :VersionType, :Description, :Model, :Manifest, :Status, :CreatedTime, :ModifiedTime, :SandboxTemplateId, :RequestId

        def initialize(versionid=nil, agentid=nil, versionname=nil, versiontype=nil, description=nil, model=nil, manifest=nil, status=nil, createdtime=nil, modifiedtime=nil, sandboxtemplateid=nil, requestid=nil)
          @VersionId = versionid
          @AgentId = agentid
          @VersionName = versionname
          @VersionType = versiontype
          @Description = description
          @Model = model
          @Manifest = manifest
          @Status = status
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @SandboxTemplateId = sandboxtemplateid
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @AgentId = params['AgentId']
          @VersionName = params['VersionName']
          @VersionType = params['VersionType']
          @Description = params['Description']
          @Model = params['Model']
          @Manifest = params['Manifest']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @SandboxTemplateId = params['SandboxTemplateId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAgent请求参数结构体
      class DeleteAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String

        attr_accessor :AgentId

        def initialize(agentid=nil)
          @AgentId = agentid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
        end
      end

      # DeleteAgent返回参数结构体
      class DeleteAgentResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAgentList请求参数结构体
      class DescribeAgentListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，从 0 开始
        # @type Offset: Integer
        # @param Limit: 返回数量，缺省为 20，最大 100
        # @type Limit: Integer
        # @param Filters: 过滤条件数组，多个 Filter 之间为 AND 关系，同一 Filter 内多个 Values 为 OR 关系
        # @type Filters: Array
        # @param SortBy: 排序字段
        # @type SortBy: String
        # @param SortDirection: 排序方向：ASC / DESC
        # @type SortDirection: String

        attr_accessor :Offset, :Limit, :Filters, :SortBy, :SortDirection

        def initialize(offset=nil, limit=nil, filters=nil, sortby=nil, sortdirection=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @SortBy = sortby
          @SortDirection = sortdirection
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortBy = params['SortBy']
          @SortDirection = params['SortDirection']
        end
      end

      # DescribeAgentList返回参数结构体
      class DescribeAgentListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 Agent 总数
        # @type TotalCount: Integer
        # @param AgentSet: Agent 列表（分页后）；元素含 A2A / 公网 API 访问开关与地址、创建人 UIN、绑定的企业账号 ID
        # @type AgentSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AgentSet, :RequestId

        def initialize(totalcount=nil, agentset=nil, requestid=nil)
          @TotalCount = totalcount
          @AgentSet = agentset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AgentSet'].nil?
            @AgentSet = []
            params['AgentSet'].each do |i|
              agentitem_tmp = AgentItem.new
              agentitem_tmp.deserialize(i)
              @AgentSet << agentitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgent请求参数结构体
      class DescribeAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String

        attr_accessor :AgentId

        def initialize(agentid=nil)
          @AgentId = agentid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
        end
      end

      # DescribeAgent返回参数结构体
      class DescribeAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param AgentName: Agent 名称
        # @type AgentName: String
        # @param Description: Agent 描述
        # @type Description: String
        # @param AvatarUrl: 头像 URL
        # @type AvatarUrl: String
        # @param IsDebug: 是否调试 Agent
        # @type IsDebug: Boolean
        # @param CreatedTime: 创建时间（RFC3339）
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间（RFC3339）
        # @type ModifiedTime: String
        # @param ActiveSessionCount: 当前活跃 session 数（ACTIVE/CREATING/MIGRATING，未软删）；仅 DescribeAgent 读路径填充，写路径回显不下发
        # @type ActiveSessionCount: Integer
        # @param RoutingSet: 流量路由配置（VersionId 恒为字符串，防 JS 精度丢失）
        # @type RoutingSet: Array
        # @param A2AConfig: A2A 对外互通配置与注册态（只读回显；原四个平铺字段收进结构）
        # @type A2AConfig: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.A2AConfig`
        # @param AccountId: 绑定的 OneID 企业账号 ID。允许为空：未绑定的存量与新建 Agent 该字段缺省，绑定后回显绑定值
        # @type AccountId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :AgentName, :Description, :AvatarUrl, :IsDebug, :CreatedTime, :ModifiedTime, :ActiveSessionCount, :RoutingSet, :A2AConfig, :AccountId, :RequestId

        def initialize(agentid=nil, agentname=nil, description=nil, avatarurl=nil, isdebug=nil, createdtime=nil, modifiedtime=nil, activesessioncount=nil, routingset=nil, a2aconfig=nil, accountid=nil, requestid=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
          @IsDebug = isdebug
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ActiveSessionCount = activesessioncount
          @RoutingSet = routingset
          @A2AConfig = a2aconfig
          @AccountId = accountid
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @IsDebug = params['IsDebug']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ActiveSessionCount = params['ActiveSessionCount']
          unless params['RoutingSet'].nil?
            @RoutingSet = []
            params['RoutingSet'].each do |i|
              routingitem_tmp = RoutingItem.new
              routingitem_tmp.deserialize(i)
              @RoutingSet << routingitem_tmp
            end
          end
          unless params['A2AConfig'].nil?
            @A2AConfig = A2AConfig.new
            @A2AConfig.deserialize(params['A2AConfig'])
          end
          @AccountId = params['AccountId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentSessionList请求参数结构体
      class DescribeAgentSessionListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，从 0 开始
        # @type Offset: Integer
        # @param Limit: 返回数量，缺省为 20，最大 100
        # @type Limit: Integer
        # @param SortBy: 排序字段
        # @type SortBy: String
        # @param SortDirection: 排序方向：ASC / DESC
        # @type SortDirection: String
        # @param Filters: 过滤条件数组，多个 Filter 之间为 AND 关系，同一 Filter 内多个 Values 为 OR 关系
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :SortBy, :SortDirection, :Filters

        def initialize(offset=nil, limit=nil, sortby=nil, sortdirection=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
          @SortDirection = sortdirection
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @SortDirection = params['SortDirection']
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

      # DescribeAgentSessionList返回参数结构体
      class DescribeAgentSessionListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SessionSet: 会话列表
        # @type SessionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SessionSet, :RequestId

        def initialize(totalcount=nil, sessionset=nil, requestid=nil)
          @TotalCount = totalcount
          @SessionSet = sessionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SessionSet'].nil?
            @SessionSet = []
            params['SessionSet'].each do |i|
              sessionitem_tmp = SessionItem.new
              sessionitem_tmp.deserialize(i)
              @SessionSet << sessionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentSession请求参数结构体
      class DescribeAgentSessionRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话 ID
        # @type SessionId: String

        attr_accessor :SessionId

        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # DescribeAgentSession返回参数结构体
      class DescribeAgentSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话 ID
        # @type SessionId: String
        # @param SessionName: 会话名称（AgentOS 侧生成的 AI 标题 / 用户改名）；缺失时为空，调用方可兜底展示 SessionId 后缀
        # @type SessionName: String
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param AgentName: Agent 名称
        # @type AgentName: String
        # @param VersionId: 版本 ID
        # @type VersionId: String
        # @param VersionName: 会话使用的版本名称（与 VersionId 区分：此为版本名，非 ID）
        # @type VersionName: String
        # @param Status: 版本状态：DRAFT / ENABLED / DISABLED
        # @type Status: String
        # @param Creator: 创建者 Uin
        # @type Creator: String
        # @param Source: 连接器来源：ENTERPRISE_AGENT / ASSISTANT
        # @type Source: String
        # @param EndpointSet: 可用的聊天接入点列表（详情独有）
        # @type EndpointSet: Array
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间（RFC3339）
        # @type ModifiedTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :SessionName, :AgentId, :AgentName, :VersionId, :VersionName, :Status, :Creator, :Source, :EndpointSet, :CreatedTime, :ModifiedTime, :RequestId

        def initialize(sessionid=nil, sessionname=nil, agentid=nil, agentname=nil, versionid=nil, versionname=nil, status=nil, creator=nil, source=nil, endpointset=nil, createdtime=nil, modifiedtime=nil, requestid=nil)
          @SessionId = sessionid
          @SessionName = sessionname
          @AgentId = agentid
          @AgentName = agentname
          @VersionId = versionid
          @VersionName = versionname
          @Status = status
          @Creator = creator
          @Source = source
          @EndpointSet = endpointset
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @SessionName = params['SessionName']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @VersionId = params['VersionId']
          @VersionName = params['VersionName']
          @Status = params['Status']
          @Creator = params['Creator']
          @Source = params['Source']
          unless params['EndpointSet'].nil?
            @EndpointSet = []
            params['EndpointSet'].each do |i|
              chatendpoint_tmp = ChatEndpoint.new
              chatendpoint_tmp.deserialize(i)
              @EndpointSet << chatendpoint_tmp
            end
          end
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentVersionList请求参数结构体
      class DescribeAgentVersionListRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param Offset: <p>偏移量，从 0 开始</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，缺省为 20，最大 100</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件数组，多个 Filter 之间为 AND 关系，同一 Filter 内多个 Values 为 OR 关系</p>
        # @type Filters: Array

        attr_accessor :AgentId, :Offset, :Limit, :Filters

        def initialize(agentid=nil, offset=nil, limit=nil, filters=nil)
          @AgentId = agentid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeAgentVersionList返回参数结构体
      class DescribeAgentVersionListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param AgentVersionSet: <p>版本列表（原 VersionSet；集合名带实体前缀以区分 Skill 版本接口的同名字段）</p>
        # @type AgentVersionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AgentVersionSet, :RequestId

        def initialize(totalcount=nil, agentversionset=nil, requestid=nil)
          @TotalCount = totalcount
          @AgentVersionSet = agentversionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AgentVersionSet'].nil?
            @AgentVersionSet = []
            params['AgentVersionSet'].each do |i|
              agentversionitem_tmp = AgentVersionItem.new
              agentversionitem_tmp.deserialize(i)
              @AgentVersionSet << agentversionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentVersion请求参数结构体
      class DescribeAgentVersionRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param VersionId: <p>版本 ID</p>
        # @type VersionId: String

        attr_accessor :AgentId, :VersionId

        def initialize(agentid=nil, versionid=nil)
          @AgentId = agentid
          @VersionId = versionid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @VersionId = params['VersionId']
        end
      end

      # DescribeAgentVersion返回参数结构体
      class DescribeAgentVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: <p>版本 ID</p>
        # @type VersionId: String
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param VersionName: <p>版本名称</p>
        # @type VersionName: String
        # @param VersionType: <p>版本类型：DEFAULT / TEST / PROD</p>
        # @type VersionType: String
        # @param Description: <p>版本变更说明</p>
        # @type Description: String
        # @param Model: <p>模型标识</p>
        # @type Model: String
        # @param Manifest: <p>Manifest v2.0 精简 manifest 原文（JSON 字符串）</p>
        # @type Manifest: String
        # @param Status: <p>版本状态：DRAFT / ENABLED / DISABLED</p>
        # @type Status: String
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param ModifiedTime: <p>更新时间</p>
        # @type ModifiedTime: String
        # @param SandboxTemplateId: <p>绑定的沙箱模板 ID；未绑定时为空，创建会话沙箱使用系统默认模板。</p>
        # @type SandboxTemplateId: String
        # @param SessionCount: <p>该版本累计承接的会话总数（历史累计值，只增不减）</p>
        # @type SessionCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :AgentId, :VersionName, :VersionType, :Description, :Model, :Manifest, :Status, :CreatedTime, :ModifiedTime, :SandboxTemplateId, :SessionCount, :RequestId

        def initialize(versionid=nil, agentid=nil, versionname=nil, versiontype=nil, description=nil, model=nil, manifest=nil, status=nil, createdtime=nil, modifiedtime=nil, sandboxtemplateid=nil, sessioncount=nil, requestid=nil)
          @VersionId = versionid
          @AgentId = agentid
          @VersionName = versionname
          @VersionType = versiontype
          @Description = description
          @Model = model
          @Manifest = manifest
          @Status = status
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @SandboxTemplateId = sandboxtemplateid
          @SessionCount = sessioncount
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @AgentId = params['AgentId']
          @VersionName = params['VersionName']
          @VersionType = params['VersionType']
          @Description = params['Description']
          @Model = params['Model']
          @Manifest = params['Manifest']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @SandboxTemplateId = params['SandboxTemplateId']
          @SessionCount = params['SessionCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBuiltinModelList请求参数结构体
      class DescribeBuiltinModelListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，从 0 开始
        # @type Offset: Integer
        # @param Limit: 返回数量，缺省为 20，最大 100
        # @type Limit: Integer
        # @param Filters: 过滤条件数组，多个 Filter 之间为 AND 关系，同一 Filter 内多个 Values 为 OR 关系
        # @type Filters: Array
        # @param AccountId: OneID 企业账号 ID，可选。传入时拉取该账号对应企业的模型（要求当前主账号 UIN 已授权该账号），不传时使用服务配置的企业 ID
        # @type AccountId: String

        attr_accessor :Offset, :Limit, :Filters, :AccountId

        def initialize(offset=nil, limit=nil, filters=nil, accountid=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @AccountId = accountid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @AccountId = params['AccountId']
        end
      end

      # DescribeBuiltinModelList返回参数结构体
      class DescribeBuiltinModelListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param BuiltinModelSet: 内置模型列表（分页后）
        # @type BuiltinModelSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BuiltinModelSet, :RequestId

        def initialize(totalcount=nil, builtinmodelset=nil, requestid=nil)
          @TotalCount = totalcount
          @BuiltinModelSet = builtinmodelset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BuiltinModelSet'].nil?
            @BuiltinModelSet = []
            params['BuiltinModelSet'].each do |i|
              builtinmodel_tmp = BuiltinModel.new
              builtinmodel_tmp.deserialize(i)
              @BuiltinModelSet << builtinmodel_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConnectorList请求参数结构体
      class DescribeConnectorListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件数组，多个 Filter 之间为 AND 关系。支持 Name：Name（名称模糊匹配）/ Status（ACTIVE / DISABLED）/ Source（ENTERPRISE_AGENT / ASSISTANT）
        # @type Filters: Array
        # @param PageNumber: 已废弃：服务端不再读取，请使用 Offset/Limit。字段保留仅为过渡兼容，后续下线
        # @type PageNumber: Integer
        # @param PageSize: 已废弃：服务端不再读取，请使用 Offset/Limit。字段保留仅为过渡兼容，后续下线
        # @type PageSize: Integer
        # @param Offset: 偏移量，0 基准，缺省 0（标准 CAPI 分页参数）
        # @type Offset: Integer
        # @param Limit: 每页数量，取值 1-100，缺省 20（标准 CAPI 分页参数）
        # @type Limit: Integer

        attr_accessor :Filters, :PageNumber, :PageSize, :Offset, :Limit

        def initialize(filters=nil, pagenumber=nil, pagesize=nil, offset=nil, limit=nil)
          @Filters = filters
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Offset = offset
          @Limit = limit
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
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeConnectorList返回参数结构体
      class DescribeConnectorListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的连接器总数
        # @type TotalCount: Integer
        # @param ConnectorSet: 连接器列表（分页后）；连接器挂调用方主账号 UIN 下，不挂 OneID 企业
        # @type ConnectorSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConnectorSet, :RequestId

        def initialize(totalcount=nil, connectorset=nil, requestid=nil)
          @TotalCount = totalcount
          @ConnectorSet = connectorset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConnectorSet'].nil?
            @ConnectorSet = []
            params['ConnectorSet'].each do |i|
              connectorinfo_tmp = ConnectorInfo.new
              connectorinfo_tmp.deserialize(i)
              @ConnectorSet << connectorinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExpertList请求参数结构体
      class DescribeExpertListRequest < TencentCloud::Common::AbstractModel
        # @param Source: <p>专家来源，必填：BUILTIN（内置）/ CUSTOM（自建）</p>
        # @type Source: String
        # @param Filters: <p>标准过滤条件：ExpertId（精确，多值 OR，携带即按 ID 批量查询，忽略分页）/ Keyword（模糊）</p>
        # @type Filters: Array
        # @param Offset: <p>偏移量，从 0 开始，默认 0（按 ID 批量查询时忽略）</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量，默认 20，最大 200（按 ID 批量查询时忽略）</p>
        # @type Limit: Integer

        attr_accessor :Source, :Filters, :Offset, :Limit

        def initialize(source=nil, filters=nil, offset=nil, limit=nil)
          @Source = source
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Source = params['Source']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeExpertList返回参数结构体
      class DescribeExpertListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>符合条件的专家总数（按 ID 批量时为实际命中数）</p>
        # @type TotalCount: Integer
        # @param ExpertSet: <p>专家列表</p>
        # @type ExpertSet: Array
        # @param Counts: <p>全局计数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Counts: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.ExpertCounts`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ExpertSet, :Counts, :RequestId

        def initialize(totalcount=nil, expertset=nil, counts=nil, requestid=nil)
          @TotalCount = totalcount
          @ExpertSet = expertset
          @Counts = counts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ExpertSet'].nil?
            @ExpertSet = []
            params['ExpertSet'].each do |i|
              expertitem_tmp = ExpertItem.new
              expertitem_tmp.deserialize(i)
              @ExpertSet << expertitem_tmp
            end
          end
          unless params['Counts'].nil?
            @Counts = ExpertCounts.new
            @Counts.deserialize(params['Counts'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExternalAgentList请求参数结构体
      class DescribeExternalAgentListRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID（必填：绑定状态的归属主体）
        # @type AgentId: String
        # @param Filters: 标准过滤条件，支持的 Name：Bound（BOUND=仅已绑定 / UNBOUND=仅未绑定 / ALL=全部，缺省 ALL）
        # @type Filters: Array
        # @param Offset: 偏移量，从 0 开始，默认 0
        # @type Offset: Integer
        # @param Limit: 每页数量，默认 20，最大 200
        # @type Limit: Integer
        # @param DescribeExternalAgentList: 外部 Agent 列表查询关键字
        # @type DescribeExternalAgentList: String
        # @param VersionId: 版本 ID
        # @type VersionId: String

        attr_accessor :AgentId, :Filters, :Offset, :Limit, :DescribeExternalAgentList, :VersionId

        def initialize(agentid=nil, filters=nil, offset=nil, limit=nil, describeexternalagentlist=nil, versionid=nil)
          @AgentId = agentid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @DescribeExternalAgentList = describeexternalagentlist
          @VersionId = versionid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DescribeExternalAgentList = params['DescribeExternalAgentList']
          @VersionId = params['VersionId']
        end
      end

      # DescribeExternalAgentList返回参数结构体
      class DescribeExternalAgentListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的外部 Agent 总数
        # @type TotalCount: Integer
        # @param ExternalAgentSet: 外部 Agent 集合（可见卡片全集 ∪ URL 直连型存量 binding 的合并视图）
        # @type ExternalAgentSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ExternalAgentSet, :RequestId

        def initialize(totalcount=nil, externalagentset=nil, requestid=nil)
          @TotalCount = totalcount
          @ExternalAgentSet = externalagentset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ExternalAgentSet'].nil?
            @ExternalAgentSet = []
            params['ExternalAgentSet'].each do |i|
              externalagentinfo_tmp = ExternalAgentInfo.new
              externalagentinfo_tmp.deserialize(i)
              @ExternalAgentSet << externalagentinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExternalAgent请求参数结构体
      class DescribeExternalAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>TMA managed agent 业务 ID（CloudAgentID）</p>
        # @type AgentId: String
        # @param A2AAgentId: <p>已绑定的外部 A2A agent ID</p>
        # @type A2AAgentId: String

        attr_accessor :AgentId, :A2AAgentId

        def initialize(agentid=nil, a2aagentid=nil)
          @AgentId = agentid
          @A2AAgentId = a2aagentid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @A2AAgentId = params['A2AAgentId']
        end
      end

      # DescribeExternalAgent返回参数结构体
      class DescribeExternalAgentResponse < TencentCloud::Common::AbstractModel
        # @param A2AAgentId: <p>外部 A2A agent ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AAgentId: String
        # @param Name: <p>外部 Agent 名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Endpoint: <p>外部 A2A Server URL</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endpoint: String
        # @param BindingId: <p>绑定记录 ID（已绑定时返回）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindingId: String
        # @param Bound: <p>是否已绑定到当前 Agent</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bound: Boolean
        # @param IconUrl: <p>头像地址（取自 provider card 的 iconUrl；为空时前端回落首字母头像）</p>
        # @type IconUrl: String
        # @param A2AVersion: <p>外部 agent card 声明的版本号</p>
        # @type A2AVersion: String
        # @param A2ASkillSet: <p>A2A card skills 集合</p>
        # @type A2ASkillSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :A2AAgentId, :Name, :Description, :Endpoint, :BindingId, :Bound, :IconUrl, :A2AVersion, :A2ASkillSet, :RequestId

        def initialize(a2aagentid=nil, name=nil, description=nil, endpoint=nil, bindingid=nil, bound=nil, iconurl=nil, a2aversion=nil, a2askillset=nil, requestid=nil)
          @A2AAgentId = a2aagentid
          @Name = name
          @Description = description
          @Endpoint = endpoint
          @BindingId = bindingid
          @Bound = bound
          @IconUrl = iconurl
          @A2AVersion = a2aversion
          @A2ASkillSet = a2askillset
          @RequestId = requestid
        end

        def deserialize(params)
          @A2AAgentId = params['A2AAgentId']
          @Name = params['Name']
          @Description = params['Description']
          @Endpoint = params['Endpoint']
          @BindingId = params['BindingId']
          @Bound = params['Bound']
          @IconUrl = params['IconUrl']
          @A2AVersion = params['A2AVersion']
          unless params['A2ASkillSet'].nil?
            @A2ASkillSet = []
            params['A2ASkillSet'].each do |i|
              a2askillitem_tmp = A2ASkillItem.new
              a2askillitem_tmp.deserialize(i)
              @A2ASkillSet << a2askillitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageEventList请求参数结构体
      class DescribeMessageEventListRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>Session ID</p>
        # @type SessionId: String
        # @param AgentId: <p>Agent ID</p>
        # @type AgentId: String
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，默认 100，最大 100</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件数组，多个 Filter 之间为 AND 关系，同一 Filter 内多个 Values 为 OR 关系</p>
        # @type Filters: Array

        attr_accessor :SessionId, :AgentId, :Offset, :Limit, :Filters

        def initialize(sessionid=nil, agentid=nil, offset=nil, limit=nil, filters=nil)
          @SessionId = sessionid
          @AgentId = agentid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @AgentId = params['AgentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeMessageEventList返回参数结构体
      class DescribeMessageEventListResponse < TencentCloud::Common::AbstractModel
        # @param MessageEventSet: <p>消息事件列表</p>
        # @type MessageEventSet: Array
        # @param TotalCount: <p>符合过滤条件的事件总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageEventSet, :TotalCount, :RequestId

        def initialize(messageeventset=nil, totalcount=nil, requestid=nil)
          @MessageEventSet = messageeventset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MessageEventSet'].nil?
            @MessageEventSet = []
            params['MessageEventSet'].each do |i|
              messageevent_tmp = MessageEvent.new
              messageevent_tmp.deserialize(i)
              @MessageEventSet << messageevent_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSkillList请求参数结构体
      class DescribeSkillListRequest < TencentCloud::Common::AbstractModel
        # @param Source: 技能来源，必填：BUILTIN（内置）/ CUSTOM（自建）/ AUTHORIZED（企业授权）。数据通路判别，非筛选条件
        # @type Source: String
        # @param Filters: 标准过滤条件：SkillId（精确，多值 OR ≤100，携带即按 ID 批量查询）/ Keyword（模糊）/ PublishStatus（DRAFT/PUBLISHED/ALL）/ Status（ENABLED/DISABLED/ALL）
        # @type Filters: Array
        # @param Offset: 偏移量，默认 0（按 ID 批量查询时忽略）
        # @type Offset: Integer
        # @param Limit: 每页数量，默认 20，最大 200（按 ID 批量查询时忽略）
        # @type Limit: Integer
        # @param AccountId: 授权方企业账号标识；仅 Source=AUTHORIZED 时生效。不传则由后端用 Uin 推导全部已授权范围；未携带 SkillId 的分页查询必传
        # @type AccountId: String
        # @param AgentId: 仅 Source=AUTHORIZED 时生效。Agent 绑定了 OneID 租户时，授权集合强制收窄到绑定租户；显式传入的 AccountId 必须等于绑定值，否则请求被拒绝。绑定 Agent 的分页查询可不传 AccountId（服务端按绑定值收窄到单一授权方）
        # @type AgentId: String

        attr_accessor :Source, :Filters, :Offset, :Limit, :AccountId, :AgentId

        def initialize(source=nil, filters=nil, offset=nil, limit=nil, accountid=nil, agentid=nil)
          @Source = source
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @AccountId = accountid
          @AgentId = agentid
        end

        def deserialize(params)
          @Source = params['Source']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AccountId = params['AccountId']
          @AgentId = params['AgentId']
        end
      end

      # DescribeSkillList返回参数结构体
      class DescribeSkillListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的技能总数（按 ID 批量时为实际命中数）
        # @type TotalCount: Integer
        # @param SkillSet: 技能列表（仅列表展示所需字段，完整信息走 DescribeSkill）
        # @type SkillSet: Array
        # @param Counts: 全局计数（不受 keyword 影响）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Counts: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.SkillCounts`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SkillSet, :Counts, :RequestId

        def initialize(totalcount=nil, skillset=nil, counts=nil, requestid=nil)
          @TotalCount = totalcount
          @SkillSet = skillset
          @Counts = counts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SkillSet'].nil?
            @SkillSet = []
            params['SkillSet'].each do |i|
              skillitem_tmp = SkillItem.new
              skillitem_tmp.deserialize(i)
              @SkillSet << skillitem_tmp
            end
          end
          unless params['Counts'].nil?
            @Counts = SkillCounts.new
            @Counts.deserialize(params['Counts'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 全局专家计数
      class ExpertCounts < TencentCloud::Common::AbstractModel
        # @param Builtin: <p>内置专家数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Builtin: Integer
        # @param Custom: <p>自建专家数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Custom: Integer
        # @param Total: <p>总数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :Builtin, :Custom, :Total

        def initialize(builtin=nil, custom=nil, total=nil)
          @Builtin = builtin
          @Custom = custom
          @Total = total
        end

        def deserialize(params)
          @Builtin = params['Builtin']
          @Custom = params['Custom']
          @Total = params['Total']
        end
      end

      # 专家列表/详情项
      class ExpertItem < TencentCloud::Common::AbstractModel
        # @param Source: <p>专家来源：builtin、custom</p>
        # @type Source: String
        # @param DisplayName: <p>展示名</p>
        # @type DisplayName: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param Icon: <p>图标 URL</p>
        # @type Icon: String
        # @param Enabled: <p>是否启用</p>
        # @type Enabled: Boolean
        # @param DownloadUrl: <p>下载 URL</p>
        # @type DownloadUrl: String
        # @param ModifiedTime: <p>更新时间</p>
        # @type ModifiedTime: String
        # @param Status: <p>启停状态：enabled、disabled</p>
        # @type Status: String
        # @param ExpertId: <p>专家标识</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpertId: String
        # @param ExpertVersion: <p>当前生效版本号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpertVersion: String

        attr_accessor :Source, :DisplayName, :Description, :Icon, :Enabled, :DownloadUrl, :ModifiedTime, :Status, :ExpertId, :ExpertVersion

        def initialize(source=nil, displayname=nil, description=nil, icon=nil, enabled=nil, downloadurl=nil, modifiedtime=nil, status=nil, expertid=nil, expertversion=nil)
          @Source = source
          @DisplayName = displayname
          @Description = description
          @Icon = icon
          @Enabled = enabled
          @DownloadUrl = downloadurl
          @ModifiedTime = modifiedtime
          @Status = status
          @ExpertId = expertid
          @ExpertVersion = expertversion
        end

        def deserialize(params)
          @Source = params['Source']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @Icon = params['Icon']
          @Enabled = params['Enabled']
          @DownloadUrl = params['DownloadUrl']
          @ModifiedTime = params['ModifiedTime']
          @Status = params['Status']
          @ExpertId = params['ExpertId']
          @ExpertVersion = params['ExpertVersion']
        end
      end

      # 外部 Agent 列表/详情项
      class ExternalAgentInfo < TencentCloud::Common::AbstractModel
        # @param A2AAgentId: 外部 A2A agent ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AAgentId: String
        # @param Name: 外部 Agent 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Endpoint: 外部 A2A Server URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endpoint: String
        # @param BindingId: 绑定记录 ID（已绑定时返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindingId: String
        # @param Bound: 是否已绑定到当前 Agent
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bound: Boolean
        # @param IconUrl: 头像地址（取自 provider card 的 iconUrl）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrl: String
        # @param A2AVersion: 外部 agent card 声明的版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2AVersion: String
        # @param A2ASkillSet: A2A card skills 集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type A2ASkillSet: Array

        attr_accessor :A2AAgentId, :Name, :Description, :Endpoint, :BindingId, :Bound, :IconUrl, :A2AVersion, :A2ASkillSet

        def initialize(a2aagentid=nil, name=nil, description=nil, endpoint=nil, bindingid=nil, bound=nil, iconurl=nil, a2aversion=nil, a2askillset=nil)
          @A2AAgentId = a2aagentid
          @Name = name
          @Description = description
          @Endpoint = endpoint
          @BindingId = bindingid
          @Bound = bound
          @IconUrl = iconurl
          @A2AVersion = a2aversion
          @A2ASkillSet = a2askillset
        end

        def deserialize(params)
          @A2AAgentId = params['A2AAgentId']
          @Name = params['Name']
          @Description = params['Description']
          @Endpoint = params['Endpoint']
          @BindingId = params['BindingId']
          @Bound = params['Bound']
          @IconUrl = params['IconUrl']
          @A2AVersion = params['A2AVersion']
          unless params['A2ASkillSet'].nil?
            @A2ASkillSet = []
            params['A2ASkillSet'].each do |i|
              a2askillitem_tmp = A2ASkillItem.new
              a2askillitem_tmp.deserialize(i)
              @A2ASkillSet << a2askillitem_tmp
            end
          end
        end
      end

      # 云 API 通用过滤结构。多个 Filter 之间为 AND 关系；同一 Filter 内多个 Values 为 OR 关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤属性名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Values: 过滤值列表（同一 Filter 内多个值为 OR 关系）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array
        # @param ExactMatch: 是否精确匹配，默认 false（模糊匹配）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch

        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 消息事件
      class MessageEvent < TencentCloud::Common::AbstractModel
        # @param Sequence: <p>序号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sequence: Integer
        # @param EventType: <p>类型 USER/TOOL/ASSISTANT</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType: String
        # @param OccurredAt: <p>发生时间 ISO8601</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OccurredAt: String
        # @param Message: <p>消息内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.MessageEventMessage`
        # @param ToolCall: <p>工具调用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCall: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.MessageEventToolCall`

        attr_accessor :Sequence, :EventType, :OccurredAt, :Message, :ToolCall

        def initialize(sequence=nil, eventtype=nil, occurredat=nil, message=nil, toolcall=nil)
          @Sequence = sequence
          @EventType = eventtype
          @OccurredAt = occurredat
          @Message = message
          @ToolCall = toolcall
        end

        def deserialize(params)
          @Sequence = params['Sequence']
          @EventType = params['EventType']
          @OccurredAt = params['OccurredAt']
          unless params['Message'].nil?
            @Message = MessageEventMessage.new
            @Message.deserialize(params['Message'])
          end
          unless params['ToolCall'].nil?
            @ToolCall = MessageEventToolCall.new
            @ToolCall.deserialize(params['ToolCall'])
          end
        end
      end

      # 消息内容
      class MessageEventMessage < TencentCloud::Common::AbstractModel
        # @param Content: <p>文本内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param TokenUsage: <p>Token用量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenUsage: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.TokenUsage`

        attr_accessor :Content, :TokenUsage

        def initialize(content=nil, tokenusage=nil)
          @Content = content
          @TokenUsage = tokenusage
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['TokenUsage'].nil?
            @TokenUsage = TokenUsage.new
            @TokenUsage.deserialize(params['TokenUsage'])
          end
        end
      end

      # 工具调用
      class MessageEventToolCall < TencentCloud::Common::AbstractModel
        # @param ToolCallId: <p>调用ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCallId: String
        # @param ToolName: <p>工具名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolName: String
        # @param Status: <p>状态 PENDING/IN_PROGRESS/SUCCEEDED/FAILED</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Input: <p>工具调用Input（已递归脱敏，JSON 字符串）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: String
        # @param Output: <p>工具调用Output（已递归脱敏，JSON 字符串）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String
        # @param EndedAt: <p>结束时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndedAt: String
        # @param DurationMs: <p>耗时毫秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationMs: Integer
        # @param StartedAt: <p>调用开始时间（RFC3339 格式）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartedAt: String

        attr_accessor :ToolCallId, :ToolName, :Status, :Input, :Output, :EndedAt, :DurationMs, :StartedAt

        def initialize(toolcallid=nil, toolname=nil, status=nil, input=nil, output=nil, endedat=nil, durationms=nil, startedat=nil)
          @ToolCallId = toolcallid
          @ToolName = toolname
          @Status = status
          @Input = input
          @Output = output
          @EndedAt = endedat
          @DurationMs = durationms
          @StartedAt = startedat
        end

        def deserialize(params)
          @ToolCallId = params['ToolCallId']
          @ToolName = params['ToolName']
          @Status = params['Status']
          @Input = params['Input']
          @Output = params['Output']
          @EndedAt = params['EndedAt']
          @DurationMs = params['DurationMs']
          @StartedAt = params['StartedAt']
        end
      end

      # MigrateAgentSession请求参数结构体
      class MigrateAgentSessionRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>待迁移的会话 ID（必填）</p>
        # @type SessionId: String
        # @param AgentId: <p>目标 Agent 业务 ID（必填），必须与 Session 原 Agent 相同</p>
        # @type AgentId: String
        # @param TargetVersionId: <p>目标版本 ID（必填，字符串形式）。需归属同一 Agent 且未被废弃</p>
        # @type TargetVersionId: String

        attr_accessor :SessionId, :AgentId, :TargetVersionId

        def initialize(sessionid=nil, agentid=nil, targetversionid=nil)
          @SessionId = sessionid
          @AgentId = agentid
          @TargetVersionId = targetversionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @AgentId = params['AgentId']
          @TargetVersionId = params['TargetVersionId']
        end
      end

      # MigrateAgentSession返回参数结构体
      class MigrateAgentSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: <p>会话 ID（回显原值，保持不变）</p>
        # @type SessionId: String
        # @param Status: <p>迁移后的会话状态</p>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :Status, :RequestId

        def initialize(sessionid=nil, status=nil, requestid=nil)
          @SessionId = sessionid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAgentA2AConfig请求参数结构体
      class ModifyAgentA2AConfigRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param A2AEnabled: <p>Agent 级唯一 A2A 开关</p>
        # @type A2AEnabled: Boolean
        # @param A2ASkillSet: <p>A2A 技能集合（原 A2ASkills）</p>
        # @type A2ASkillSet: Array

        attr_accessor :AgentId, :A2AEnabled, :A2ASkillSet

        def initialize(agentid=nil, a2aenabled=nil, a2askillset=nil)
          @AgentId = agentid
          @A2AEnabled = a2aenabled
          @A2ASkillSet = a2askillset
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @A2AEnabled = params['A2AEnabled']
          unless params['A2ASkillSet'].nil?
            @A2ASkillSet = []
            params['A2ASkillSet'].each do |i|
              a2askillinput_tmp = A2ASkillInput.new
              a2askillinput_tmp.deserialize(i)
              @A2ASkillSet << a2askillinput_tmp
            end
          end
        end
      end

      # ModifyAgentA2AConfig返回参数结构体
      class ModifyAgentA2AConfigResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>Agent 业务 ID</p>
        # @type AgentId: String
        # @param AgentName: <p>Agent 名称</p>
        # @type AgentName: String
        # @param Description: <p>Agent 描述</p>
        # @type Description: String
        # @param AvatarUrl: <p>头像 URL</p>
        # @type AvatarUrl: String
        # @param IsDebug: <p>是否调试 Agent</p>
        # @type IsDebug: Boolean
        # @param CreatedTime: <p>创建时间（RFC3339）</p>
        # @type CreatedTime: String
        # @param ModifiedTime: <p>更新时间（RFC3339）</p>
        # @type ModifiedTime: String
        # @param RoutingSet: <p>流量路由配置（VersionId 恒为字符串，防 JS 精度丢失）</p>
        # @type RoutingSet: Array
        # @param A2AConfig: <p>A2A 对外互通配置与注册态（只读回显；原四个平铺字段收进结构）</p>
        # @type A2AConfig: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.A2AConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :AgentName, :Description, :AvatarUrl, :IsDebug, :CreatedTime, :ModifiedTime, :RoutingSet, :A2AConfig, :RequestId

        def initialize(agentid=nil, agentname=nil, description=nil, avatarurl=nil, isdebug=nil, createdtime=nil, modifiedtime=nil, routingset=nil, a2aconfig=nil, requestid=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
          @IsDebug = isdebug
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @RoutingSet = routingset
          @A2AConfig = a2aconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @IsDebug = params['IsDebug']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          unless params['RoutingSet'].nil?
            @RoutingSet = []
            params['RoutingSet'].each do |i|
              routingitem_tmp = RoutingItem.new
              routingitem_tmp.deserialize(i)
              @RoutingSet << routingitem_tmp
            end
          end
          unless params['A2AConfig'].nil?
            @A2AConfig = A2AConfig.new
            @A2AConfig.deserialize(params['A2AConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyAgent请求参数结构体
      class ModifyAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param AgentName: Agent 名称（可选，仅传递需要更新的字段）
        # @type AgentName: String
        # @param Description: Agent 描述（可选）
        # @type Description: String
        # @param AvatarUrl: 头像 URL（可选）
        # @type AvatarUrl: String

        attr_accessor :AgentId, :AgentName, :Description, :AvatarUrl

        def initialize(agentid=nil, agentname=nil, description=nil, avatarurl=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
        end
      end

      # ModifyAgent返回参数结构体
      class ModifyAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param AgentName: Agent 名称
        # @type AgentName: String
        # @param Description: Agent 描述
        # @type Description: String
        # @param AvatarUrl: 头像 URL
        # @type AvatarUrl: String
        # @param IsDebug: 是否调试 Agent
        # @type IsDebug: Boolean
        # @param CreatedTime: 创建时间（RFC3339）
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间（RFC3339）
        # @type ModifiedTime: String
        # @param RoutingSet: 流量路由配置（VersionId 恒为字符串，防 JS 精度丢失）
        # @type RoutingSet: Array
        # @param A2AConfig: A2A 对外互通配置与注册态（只读回显；原四个平铺字段收进结构）
        # @type A2AConfig: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.A2AConfig`
        # @param AccountId: 绑定的 OneID 企业账号 ID。允许为空：未绑定的存量与新建 Agent 该字段缺省，绑定后回显绑定值
        # @type AccountId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :AgentName, :Description, :AvatarUrl, :IsDebug, :CreatedTime, :ModifiedTime, :RoutingSet, :A2AConfig, :AccountId, :RequestId

        def initialize(agentid=nil, agentname=nil, description=nil, avatarurl=nil, isdebug=nil, createdtime=nil, modifiedtime=nil, routingset=nil, a2aconfig=nil, accountid=nil, requestid=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
          @IsDebug = isdebug
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @RoutingSet = routingset
          @A2AConfig = a2aconfig
          @AccountId = accountid
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @IsDebug = params['IsDebug']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          unless params['RoutingSet'].nil?
            @RoutingSet = []
            params['RoutingSet'].each do |i|
              routingitem_tmp = RoutingItem.new
              routingitem_tmp.deserialize(i)
              @RoutingSet << routingitem_tmp
            end
          end
          unless params['A2AConfig'].nil?
            @A2AConfig = A2AConfig.new
            @A2AConfig.deserialize(params['A2AConfig'])
          end
          @AccountId = params['AccountId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAgentRouting请求参数结构体
      class ModifyAgentRoutingRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param RoutingSet: 路由配置，覆盖式写入（与出参 AgentInfo.RoutingSet 命名对齐）
        # @type RoutingSet: Array

        attr_accessor :AgentId, :RoutingSet

        def initialize(agentid=nil, routingset=nil)
          @AgentId = agentid
          @RoutingSet = routingset
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          unless params['RoutingSet'].nil?
            @RoutingSet = []
            params['RoutingSet'].each do |i|
              routingitem_tmp = RoutingItem.new
              routingitem_tmp.deserialize(i)
              @RoutingSet << routingitem_tmp
            end
          end
        end
      end

      # ModifyAgentRouting返回参数结构体
      class ModifyAgentRoutingResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param AgentName: Agent 名称
        # @type AgentName: String
        # @param Description: Agent 描述
        # @type Description: String
        # @param AvatarUrl: 头像 URL
        # @type AvatarUrl: String
        # @param IsDebug: 是否调试 Agent
        # @type IsDebug: Boolean
        # @param CreatedTime: 创建时间（RFC3339）
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间（RFC3339）
        # @type ModifiedTime: String
        # @param RoutingSet: 流量路由配置（VersionId 恒为字符串，防 JS 精度丢失）
        # @type RoutingSet: Array
        # @param A2AConfig: A2A 对外互通配置与注册态（只读回显；原四个平铺字段收进结构）
        # @type A2AConfig: :class:`Tencentcloud::Workbuddyenterprise.v20260709.models.A2AConfig`
        # @param AccountId: 绑定的 OneID 企业账号 ID。允许为空：未绑定的存量与新建 Agent 该字段缺省，绑定后回显绑定值
        # @type AccountId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :AgentName, :Description, :AvatarUrl, :IsDebug, :CreatedTime, :ModifiedTime, :RoutingSet, :A2AConfig, :AccountId, :RequestId

        def initialize(agentid=nil, agentname=nil, description=nil, avatarurl=nil, isdebug=nil, createdtime=nil, modifiedtime=nil, routingset=nil, a2aconfig=nil, accountid=nil, requestid=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Description = description
          @AvatarUrl = avatarurl
          @IsDebug = isdebug
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @RoutingSet = routingset
          @A2AConfig = a2aconfig
          @AccountId = accountid
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Description = params['Description']
          @AvatarUrl = params['AvatarUrl']
          @IsDebug = params['IsDebug']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          unless params['RoutingSet'].nil?
            @RoutingSet = []
            params['RoutingSet'].each do |i|
              routingitem_tmp = RoutingItem.new
              routingitem_tmp.deserialize(i)
              @RoutingSet << routingitem_tmp
            end
          end
          unless params['A2AConfig'].nil?
            @A2AConfig = A2AConfig.new
            @A2AConfig.deserialize(params['A2AConfig'])
          end
          @AccountId = params['AccountId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAgentVersion请求参数结构体
      class ModifyAgentVersionRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param VersionId: 版本 ID（仅 default 或 test 版本可原地更新，prod 拒绝）
        # @type VersionId: String
        # @param Manifest: Manifest v2.0 原文（可选；Manifest / Model / Description / SandboxTemplateId / ConnectorSet 五个可选字段至少提供一个）
        # @type Manifest: String
        # @param Model: 模型标识（可选）
        # @type Model: String
        # @param Description: 版本变更说明（可选）
        # @type Description: String
        # @param SandboxTemplateId: 沙箱模板 ID。可选，patch 语义：null 不修改；空串解绑（恢复系统默认模板）；非空时模板须属于当前企业且可用（未删除、状态正常）。
        # @type SandboxTemplateId: String
        # @param ConnectorSet: 该版本最终绑定的连接器集合（全量覆盖语义）：缺省 = 本次不改动连接器绑定；空数组 = 解绑全部连接器；非空 = 物化为 manifest v2 mcp_servers 网关条目，manifest 中不在本集合内的连接器条目会被移除（解绑在服务端闭环，无需调用方改写 Manifest）
        # @type ConnectorSet: Array

        attr_accessor :AgentId, :VersionId, :Manifest, :Model, :Description, :SandboxTemplateId, :ConnectorSet

        def initialize(agentid=nil, versionid=nil, manifest=nil, model=nil, description=nil, sandboxtemplateid=nil, connectorset=nil)
          @AgentId = agentid
          @VersionId = versionid
          @Manifest = manifest
          @Model = model
          @Description = description
          @SandboxTemplateId = sandboxtemplateid
          @ConnectorSet = connectorset
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @VersionId = params['VersionId']
          @Manifest = params['Manifest']
          @Model = params['Model']
          @Description = params['Description']
          @SandboxTemplateId = params['SandboxTemplateId']
          unless params['ConnectorSet'].nil?
            @ConnectorSet = []
            params['ConnectorSet'].each do |i|
              connectorrefinput_tmp = ConnectorRefInput.new
              connectorrefinput_tmp.deserialize(i)
              @ConnectorSet << connectorrefinput_tmp
            end
          end
        end
      end

      # ModifyAgentVersion返回参数结构体
      class ModifyAgentVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: 版本 ID
        # @type VersionId: String
        # @param AgentId: Agent 业务 ID
        # @type AgentId: String
        # @param VersionName: 版本名称
        # @type VersionName: String
        # @param VersionType: 版本类型：DEFAULT / TEST / PROD
        # @type VersionType: String
        # @param Description: 版本变更说明
        # @type Description: String
        # @param Model: 模型标识
        # @type Model: String
        # @param Manifest: Manifest v2.0 精简 manifest 原文（JSON 字符串）
        # @type Manifest: String
        # @param Status: 版本状态：DRAFT / ENABLED / DISABLED
        # @type Status: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间
        # @type ModifiedTime: String
        # @param SandboxTemplateId: 绑定的沙箱模板 ID；未绑定时为空，创建会话沙箱使用系统默认模板。
        # @type SandboxTemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :AgentId, :VersionName, :VersionType, :Description, :Model, :Manifest, :Status, :CreatedTime, :ModifiedTime, :SandboxTemplateId, :RequestId

        def initialize(versionid=nil, agentid=nil, versionname=nil, versiontype=nil, description=nil, model=nil, manifest=nil, status=nil, createdtime=nil, modifiedtime=nil, sandboxtemplateid=nil, requestid=nil)
          @VersionId = versionid
          @AgentId = agentid
          @VersionName = versionname
          @VersionType = versiontype
          @Description = description
          @Model = model
          @Manifest = manifest
          @Status = status
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @SandboxTemplateId = sandboxtemplateid
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @AgentId = params['AgentId']
          @VersionName = params['VersionName']
          @VersionType = params['VersionType']
          @Description = params['Description']
          @Model = params['Model']
          @Manifest = params['Manifest']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @SandboxTemplateId = params['SandboxTemplateId']
          @RequestId = params['RequestId']
        end
      end

      # 路由项
      class RoutingItem < TencentCloud::Common::AbstractModel
        # @param VersionId: 版本 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param Weight: 权重，(0, 1] 之间的浮点百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Float

        attr_accessor :VersionId, :Weight

        def initialize(versionid=nil, weight=nil)
          @VersionId = versionid
          @Weight = weight
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @Weight = params['Weight']
        end
      end

      # 会话列表项
      class SessionItem < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param SessionName: 会话名称（AI 生成标题或用户改名；缺失时为空）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionName: String
        # @param AgentId: Agent 业务 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param AgentName: Agent 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String
        # @param VersionName: 会话使用的版本名称（与 VersionId 区分：此为版本名，非 ID；原 AgentVersion）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param VersionId: 会话使用的 Agent 版本 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param Status: 会话状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Creator: 创建者 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param Source: 会话来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param CreatedTime: 创建时间（RFC3339）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 更新时间（RFC3339）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String

        attr_accessor :SessionId, :SessionName, :AgentId, :AgentName, :VersionName, :VersionId, :Status, :Creator, :Source, :CreatedTime, :ModifiedTime

        def initialize(sessionid=nil, sessionname=nil, agentid=nil, agentname=nil, versionname=nil, versionid=nil, status=nil, creator=nil, source=nil, createdtime=nil, modifiedtime=nil)
          @SessionId = sessionid
          @SessionName = sessionname
          @AgentId = agentid
          @AgentName = agentname
          @VersionName = versionname
          @VersionId = versionid
          @Status = status
          @Creator = creator
          @Source = source
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @SessionName = params['SessionName']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @VersionName = params['VersionName']
          @VersionId = params['VersionId']
          @Status = params['Status']
          @Creator = params['Creator']
          @Source = params['Source']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 全局技能计数
      class SkillCounts < TencentCloud::Common::AbstractModel
        # @param Builtin: 内置技能数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Builtin: Integer
        # @param Custom: 自建技能数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Custom: Integer
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :Builtin, :Custom, :Total

        def initialize(builtin=nil, custom=nil, total=nil)
          @Builtin = builtin
          @Custom = custom
          @Total = total
        end

        def deserialize(params)
          @Builtin = params['Builtin']
          @Custom = params['Custom']
          @Total = params['Total']
        end
      end

      # Skill 列表项（按列表页展示裁剪：名称/版本/描述/状态/操作五列 + 编排所需的 Source 与 DownloadUrl）
      class SkillItem < TencentCloud::Common::AbstractModel
        # @param Source: 技能来源：BUILTIN（内置）/ CUSTOM（自建）/ AUTHORIZED（企业授权）
        # @type Source: String
        # @param Name: <p>slug（仅 custom 返回）</p>
        # @type Name: String
        # @param DisplayName: <p>展示名</p>
        # @type DisplayName: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param Icon: <p>图标 URL</p>
        # @type Icon: String
        # @param Enabled: <p>是否启用</p>
        # @type Enabled: Boolean
        # @param DownloadUrl: <p>下载 URL</p>
        # @type DownloadUrl: String
        # @param SkillId: <p>技能标识</p>
        # @type SkillId: String
        # @param SkillVersion: <p>当前生效版本号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillVersion: String
        # @param CreateTime: 创建时间，RFC3339 UTC 格式（如 2026-08-11T09:23:10Z）
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，RFC3339 UTC 格式（如 2026-09-15T06:51:26Z）
        # @type UpdateTime: String

        attr_accessor :Source, :Name, :DisplayName, :Description, :Icon, :Enabled, :DownloadUrl, :SkillId, :SkillVersion, :CreateTime, :UpdateTime

        def initialize(source=nil, name=nil, displayname=nil, description=nil, icon=nil, enabled=nil, downloadurl=nil, skillid=nil, skillversion=nil, createtime=nil, updatetime=nil)
          @Source = source
          @Name = name
          @DisplayName = displayname
          @Description = description
          @Icon = icon
          @Enabled = enabled
          @DownloadUrl = downloadurl
          @SkillId = skillid
          @SkillVersion = skillversion
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Source = params['Source']
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @Icon = params['Icon']
          @Enabled = params['Enabled']
          @DownloadUrl = params['DownloadUrl']
          @SkillId = params['SkillId']
          @SkillVersion = params['SkillVersion']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Token用量
      class TokenUsage < TencentCloud::Common::AbstractModel
        # @param InputTokens: <p>输入Token</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputTokens: Integer
        # @param OutputTokens: <p>输出Token</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputTokens: Integer
        # @param TotalTokens: <p>总Token</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTokens: Integer
        # @param Scope: <p>统计口径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: String

        attr_accessor :InputTokens, :OutputTokens, :TotalTokens, :Scope

        def initialize(inputtokens=nil, outputtokens=nil, totaltokens=nil, scope=nil)
          @InputTokens = inputtokens
          @OutputTokens = outputtokens
          @TotalTokens = totaltokens
          @Scope = scope
        end

        def deserialize(params)
          @InputTokens = params['InputTokens']
          @OutputTokens = params['OutputTokens']
          @TotalTokens = params['TotalTokens']
          @Scope = params['Scope']
        end
      end

      # UnbindExternalAgent请求参数结构体
      class UnbindExternalAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: TMA managed agent 业务 ID
        # @type AgentId: String
        # @param A2AAgentId: 已绑定的外部 A2A agent ID
        # @type A2AAgentId: String
        # @param BindingId: 绑定记录 ID（自增 ID 字符串）
        # @type BindingId: String
        # @param VersionId: 版本 ID
        # @type VersionId: String

        attr_accessor :AgentId, :A2AAgentId, :BindingId, :VersionId

        def initialize(agentid=nil, a2aagentid=nil, bindingid=nil, versionid=nil)
          @AgentId = agentid
          @A2AAgentId = a2aagentid
          @BindingId = bindingid
          @VersionId = versionid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @A2AAgentId = params['A2AAgentId']
          @BindingId = params['BindingId']
          @VersionId = params['VersionId']
        end
      end

      # UnbindExternalAgent返回参数结构体
      class UnbindExternalAgentResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果状态（大写枚举）：BOUND=已绑定 / UNBOUND=已解绑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

