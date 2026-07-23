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
  module Apis
    module V20240801
      # 关联的mcp服务配置
      class AgentAppMcpServerDTO < TencentCloud::Common::AbstractModel
        # @param ID: mcp server id
        # @type ID: String
        # @param NeedAuth: 是否需要鉴权
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeedAuth: Boolean
        # @param AgentCredentialID: 凭据代填的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentCredentialID: String
        # @param SSEResourceIdentifier: 应用为OAuth2认证时，sse模式请求mcp时的资源标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSEResourceIdentifier: String
        # @param StreamableResourceIdentifier: 应用为OAuth2认证时，streamable模式请求mcp时的资源标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamableResourceIdentifier: String

        attr_accessor :ID, :NeedAuth, :AgentCredentialID, :SSEResourceIdentifier, :StreamableResourceIdentifier

        def initialize(id=nil, needauth=nil, agentcredentialid=nil, sseresourceidentifier=nil, streamableresourceidentifier=nil)
          @ID = id
          @NeedAuth = needauth
          @AgentCredentialID = agentcredentialid
          @SSEResourceIdentifier = sseresourceidentifier
          @StreamableResourceIdentifier = streamableresourceidentifier
        end

        def deserialize(params)
          @ID = params['ID']
          @NeedAuth = params['NeedAuth']
          @AgentCredentialID = params['AgentCredentialID']
          @SSEResourceIdentifier = params['SSEResourceIdentifier']
          @StreamableResourceIdentifier = params['StreamableResourceIdentifier']
        end
      end

      # 应用关联的mcp响应
      class AgentAppMcpServerVO < TencentCloud::Common::AbstractModel
        # @param ID: 绑定ID
        # @type ID: String
        # @param NeedAuth: 需要认证
        # @type NeedAuth: Boolean
        # @param AgentCredentialID: 凭据ID
        # @type AgentCredentialID: String
        # @param AgentCredentialVO: 凭据详情
        # @type AgentCredentialVO: :class:`Tencentcloud::Apis.v20240801.models.DescribeAgentCredentialResp`
        # @param McpServerVO: mcp详情
        # @type McpServerVO: :class:`Tencentcloud::Apis.v20240801.models.DescribeMcpServerResponseVO`
        # @param RelateTime: 关联时间
        # @type RelateTime: String
        # @param SSEResourceIdentifier: 应用为OAuth2认证时，sse模式请求mcp时的资源标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSEResourceIdentifier: String
        # @param StreamableResourceIdentifier: 应用为OAuth2认证时，streamable模式请求mcp时的资源标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamableResourceIdentifier: String
        # @param AgentAppID: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentAppID: String
        # @param McpServerID: mcp ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type McpServerID: String

        attr_accessor :ID, :NeedAuth, :AgentCredentialID, :AgentCredentialVO, :McpServerVO, :RelateTime, :SSEResourceIdentifier, :StreamableResourceIdentifier, :AgentAppID, :McpServerID

        def initialize(id=nil, needauth=nil, agentcredentialid=nil, agentcredentialvo=nil, mcpservervo=nil, relatetime=nil, sseresourceidentifier=nil, streamableresourceidentifier=nil, agentappid=nil, mcpserverid=nil)
          @ID = id
          @NeedAuth = needauth
          @AgentCredentialID = agentcredentialid
          @AgentCredentialVO = agentcredentialvo
          @McpServerVO = mcpservervo
          @RelateTime = relatetime
          @SSEResourceIdentifier = sseresourceidentifier
          @StreamableResourceIdentifier = streamableresourceidentifier
          @AgentAppID = agentappid
          @McpServerID = mcpserverid
        end

        def deserialize(params)
          @ID = params['ID']
          @NeedAuth = params['NeedAuth']
          @AgentCredentialID = params['AgentCredentialID']
          unless params['AgentCredentialVO'].nil?
            @AgentCredentialVO = DescribeAgentCredentialResp.new
            @AgentCredentialVO.deserialize(params['AgentCredentialVO'])
          end
          unless params['McpServerVO'].nil?
            @McpServerVO = DescribeMcpServerResponseVO.new
            @McpServerVO.deserialize(params['McpServerVO'])
          end
          @RelateTime = params['RelateTime']
          @SSEResourceIdentifier = params['SSEResourceIdentifier']
          @StreamableResourceIdentifier = params['StreamableResourceIdentifier']
          @AgentAppID = params['AgentAppID']
          @McpServerID = params['McpServerID']
        end
      end

      # 应用绑定模型服务入参
      class AgentAppModelServiceDTO < TencentCloud::Common::AbstractModel
        # @param ID: 模型服务ID
        # @type ID: String
        # @param InvokeLimitConfigStatus: 是否开启流量控制
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: 流量控制
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param TokenLimitStatus: 是否开启token控制
        # @type TokenLimitStatus: Boolean
        # @param TokenLimitConfig: token控制
        # @type TokenLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.TokenLimitConfigDTO`

        attr_accessor :ID, :InvokeLimitConfigStatus, :InvokeLimitConfig, :TokenLimitStatus, :TokenLimitConfig

        def initialize(id=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, tokenlimitstatus=nil, tokenlimitconfig=nil)
          @ID = id
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @TokenLimitStatus = tokenlimitstatus
          @TokenLimitConfig = tokenlimitconfig
        end

        def deserialize(params)
          @ID = params['ID']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @TokenLimitStatus = params['TokenLimitStatus']
          unless params['TokenLimitConfig'].nil?
            @TokenLimitConfig = TokenLimitConfigDTO.new
            @TokenLimitConfig.deserialize(params['TokenLimitConfig'])
          end
        end
      end

      # secretKey的出参
      class AgentAppSecretKeyVO < TencentCloud::Common::AbstractModel
        # @param SecretID: secret id
        # @type SecretID: String
        # @param SecretKey: secret key
        # @type SecretKey: String

        attr_accessor :SecretID, :SecretKey

        def initialize(secretid=nil, secretkey=nil)
          @SecretID = secretid
          @SecretKey = secretkey
        end

        def deserialize(params)
          @SecretID = params['SecretID']
          @SecretKey = params['SecretKey']
        end
      end

      # Agent应用关联的服务配置
      class AgentAppServiceDTO < TencentCloud::Common::AbstractModel
        # @param ID: <p>ID</p>
        # @type ID: String
        # @param InvokeLimitConfigStatus: <p>是否限流</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>限流配置</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param NeedAuth: <p>是否要认证</p>
        # @type NeedAuth: Boolean
        # @param AgentCredentialID: <p>凭据ID</p>
        # @type AgentCredentialID: String

        attr_accessor :ID, :InvokeLimitConfigStatus, :InvokeLimitConfig, :NeedAuth, :AgentCredentialID

        def initialize(id=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, needauth=nil, agentcredentialid=nil)
          @ID = id
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @NeedAuth = needauth
          @AgentCredentialID = agentcredentialid
        end

        def deserialize(params)
          @ID = params['ID']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @NeedAuth = params['NeedAuth']
          @AgentCredentialID = params['AgentCredentialID']
        end
      end

      # 应用API详情
      class AgentAppServiceVO < TencentCloud::Common::AbstractModel
        # @param ID: <p>ID</p>
        # @type ID: String
        # @param AgentAppID: <p>应用ID</p>
        # @type AgentAppID: String
        # @param ServiceID: <p>服务ID</p>
        # @type ServiceID: String
        # @param InvokeLimitConfigStatus: <p>是否限流</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>限流配置</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param ServiceVO: <p>服务详情</p>
        # @type ServiceVO: :class:`Tencentcloud::Apis.v20240801.models.ServiceVO`
        # @param RelateTime: <p>关联时间</p>
        # @type RelateTime: String
        # @param NeedAuth: <p>是否需要认证</p>
        # @type NeedAuth: Boolean
        # @param AgentCredentialID: <p>凭据ID</p>
        # @type AgentCredentialID: String
        # @param AgentCredentialVO: <p>凭据详情</p>
        # @type AgentCredentialVO: :class:`Tencentcloud::Apis.v20240801.models.DescribeAgentCredentialResp`

        attr_accessor :ID, :AgentAppID, :ServiceID, :InvokeLimitConfigStatus, :InvokeLimitConfig, :ServiceVO, :RelateTime, :NeedAuth, :AgentCredentialID, :AgentCredentialVO

        def initialize(id=nil, agentappid=nil, serviceid=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, servicevo=nil, relatetime=nil, needauth=nil, agentcredentialid=nil, agentcredentialvo=nil)
          @ID = id
          @AgentAppID = agentappid
          @ServiceID = serviceid
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @ServiceVO = servicevo
          @RelateTime = relatetime
          @NeedAuth = needauth
          @AgentCredentialID = agentcredentialid
          @AgentCredentialVO = agentcredentialvo
        end

        def deserialize(params)
          @ID = params['ID']
          @AgentAppID = params['AgentAppID']
          @ServiceID = params['ServiceID']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          unless params['ServiceVO'].nil?
            @ServiceVO = ServiceVO.new
            @ServiceVO.deserialize(params['ServiceVO'])
          end
          @RelateTime = params['RelateTime']
          @NeedAuth = params['NeedAuth']
          @AgentCredentialID = params['AgentCredentialID']
          unless params['AgentCredentialVO'].nil?
            @AgentCredentialVO = DescribeAgentCredentialResp.new
            @AgentCredentialVO.deserialize(params['AgentCredentialVO'])
          end
        end
      end

      # 凭证内容
      class AgentCredentialContentDTO < TencentCloud::Common::AbstractModel
        # @param STSSystem: 如果认证类型为sts时，该项必填
        # @type STSSystem: String
        # @param STSService: 如果认证类型为sts时，该项必填
        # @type STSService: String
        # @param Headers: 如果认证类型为reqKey时，该项必填
        # @type Headers: Array

        attr_accessor :STSSystem, :STSService, :Headers

        def initialize(stssystem=nil, stsservice=nil, headers=nil)
          @STSSystem = stssystem
          @STSService = stsservice
          @Headers = headers
        end

        def deserialize(params)
          @STSSystem = params['STSSystem']
          @STSService = params['STSService']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              agentcredentialcontentheaderdto_tmp = AgentCredentialContentHeaderDTO.new
              agentcredentialcontentheaderdto_tmp.deserialize(i)
              @Headers << agentcredentialcontentheaderdto_tmp
            end
          end
        end
      end

      # 凭证内容头
      class AgentCredentialContentHeaderDTO < TencentCloud::Common::AbstractModel
        # @param Key: 凭据header key
        # @type Key: String
        # @param Value: 凭据header value
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

      # BindMcpSecurityRuleDTO，替换之前的McpSecurityRule
      class BindMcpSecurityRuleDTO < TencentCloud::Common::AbstractModel
        # @param ID: 规则ID
        # @type ID: String
        # @param Act: 处置动作
        # @type Act: String

        attr_accessor :ID, :Act

        def initialize(id=nil, act=nil)
          @ID = id
          @Act = act
        end

        def deserialize(params)
          @ID = params['ID']
          @Act = params['Act']
        end
      end

      # BindMcpSecurityRuleVO，重新定义了之前的McpSecurityRulesVO
      class BindMcpSecurityRuleVO < TencentCloud::Common::AbstractModel
        # @param ID: 规则ID
        # @type ID: String
        # @param Type: 规则类型
        # @type Type: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Description: 规则描述
        # @type Description: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param VersionNumber: 版本号
        # @type VersionNumber: String
        # @param Act: 当前选择的处置动作
        # @type Act: String
        # @param SupportActs: 支持的处置动作
        # @type SupportActs: Array
        # @param BodyType: 内容类型
        # @type BodyType: String
        # @param IconType: icon类型
        # @type IconType: String

        attr_accessor :ID, :Type, :Name, :Description, :RiskLevel, :VersionNumber, :Act, :SupportActs, :BodyType, :IconType

        def initialize(id=nil, type=nil, name=nil, description=nil, risklevel=nil, versionnumber=nil, act=nil, supportacts=nil, bodytype=nil, icontype=nil)
          @ID = id
          @Type = type
          @Name = name
          @Description = description
          @RiskLevel = risklevel
          @VersionNumber = versionnumber
          @Act = act
          @SupportActs = supportacts
          @BodyType = bodytype
          @IconType = icontype
        end

        def deserialize(params)
          @ID = params['ID']
          @Type = params['Type']
          @Name = params['Name']
          @Description = params['Description']
          @RiskLevel = params['RiskLevel']
          @VersionNumber = params['VersionNumber']
          @Act = params['Act']
          @SupportActs = params['SupportActs']
          @BodyType = params['BodyType']
          @IconType = params['IconType']
        end
      end

      # 匹配条件
      class CompoundCondition < TencentCloud::Common::AbstractModel
        # @param Enable: <p>是否启用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Boolean
        # @param Rules: <p>匹配信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array

        attr_accessor :Enable, :Rules

        def initialize(enable=nil, rules=nil)
          @Enable = enable
          @Rules = rules
        end

        def deserialize(params)
          @Enable = params['Enable']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              simplecondition_tmp = SimpleCondition.new
              simplecondition_tmp.deserialize(i)
              @Rules << simplecondition_tmp
            end
          end
        end
      end

      # CreateAgentAppMcpServers请求参数结构体
      class CreateAgentAppMcpServersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String
        # @param McpServers: 关联的mcp server
        # @type McpServers: Array

        attr_accessor :InstanceID, :ID, :McpServers

        def initialize(instanceid=nil, id=nil, mcpservers=nil)
          @InstanceID = instanceid
          @ID = id
          @McpServers = mcpservers
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          unless params['McpServers'].nil?
            @McpServers = []
            params['McpServers'].each do |i|
              agentappmcpserverdto_tmp = AgentAppMcpServerDTO.new
              agentappmcpserverdto_tmp.deserialize(i)
              @McpServers << agentappmcpserverdto_tmp
            end
          end
        end
      end

      # CreateAgentAppMcpServers返回参数结构体
      class CreateAgentAppMcpServersResponse < TencentCloud::Common::AbstractModel
        # @param Data: app id
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentAppModelServices请求参数结构体
      class CreateAgentAppModelServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String
        # @param ModelServices: 关联的model service
        # @type ModelServices: Array

        attr_accessor :InstanceID, :ID, :ModelServices

        def initialize(instanceid=nil, id=nil, modelservices=nil)
          @InstanceID = instanceid
          @ID = id
          @ModelServices = modelservices
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          unless params['ModelServices'].nil?
            @ModelServices = []
            params['ModelServices'].each do |i|
              agentappmodelservicedto_tmp = AgentAppModelServiceDTO.new
              agentappmodelservicedto_tmp.deserialize(i)
              @ModelServices << agentappmodelservicedto_tmp
            end
          end
        end
      end

      # CreateAgentAppModelServices返回参数结构体
      class CreateAgentAppModelServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: app id
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentApp请求参数结构体
      class CreateAgentAppRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param AuthType: <p>认证类型</p>
        # @type AuthType: String
        # @param OAuth2ResourceServerID: <p>OAuth2资源服务器ID</p>
        # @type OAuth2ResourceServerID: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param ConnectorIDs: <p>API认证列表</p>
        # @type ConnectorIDs: Array

        attr_accessor :InstanceID, :Name, :AuthType, :OAuth2ResourceServerID, :Description, :ConnectorIDs

        def initialize(instanceid=nil, name=nil, authtype=nil, oauth2resourceserverid=nil, description=nil, connectorids=nil)
          @InstanceID = instanceid
          @Name = name
          @AuthType = authtype
          @OAuth2ResourceServerID = oauth2resourceserverid
          @Description = description
          @ConnectorIDs = connectorids
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @AuthType = params['AuthType']
          @OAuth2ResourceServerID = params['OAuth2ResourceServerID']
          @Description = params['Description']
          @ConnectorIDs = params['ConnectorIDs']
        end
      end

      # 创建Agent应用的返回值，根据创建的AuthType，返回ApiKey或者SecretKey
      class CreateAgentAppResp < TencentCloud::Common::AbstractModel
        # @param ID: app id
        # @type ID: String
        # @param ApiKey: 如果authType为apiKey时，返回该字段
        # @type ApiKey: String
        # @param SecretKey: 如果authType为secretKey时，返回该字段
        # @type SecretKey: String
        # @param SecretID: 如果authType为secretKey时，返回该字段
        # @type SecretID: String

        attr_accessor :ID, :ApiKey, :SecretKey, :SecretID

        def initialize(id=nil, apikey=nil, secretkey=nil, secretid=nil)
          @ID = id
          @ApiKey = apikey
          @SecretKey = secretkey
          @SecretID = secretid
        end

        def deserialize(params)
          @ID = params['ID']
          @ApiKey = params['ApiKey']
          @SecretKey = params['SecretKey']
          @SecretID = params['SecretID']
        end
      end

      # CreateAgentApp返回参数结构体
      class CreateAgentAppResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>app id</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.CreateAgentAppResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateAgentAppResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentAppServices请求参数结构体
      class CreateAgentAppServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param ID: <p>应用ID</p>
        # @type ID: String
        # @param Services: <p>服务详情</p>
        # @type Services: Array

        attr_accessor :InstanceID, :ID, :Services

        def initialize(instanceid=nil, id=nil, services=nil)
          @InstanceID = instanceid
          @ID = id
          @Services = services
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          unless params['Services'].nil?
            @Services = []
            params['Services'].each do |i|
              agentappservicedto_tmp = AgentAppServiceDTO.new
              agentappservicedto_tmp.deserialize(i)
              @Services << agentappservicedto_tmp
            end
          end
        end
      end

      # CreateAgentAppServices返回参数结构体
      class CreateAgentAppServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>app id</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentCredential请求参数结构体
      class CreateAgentCredentialRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateAgentCredential返回参数结构体
      class CreateAgentCredentialResponse < TencentCloud::Common::AbstractModel
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

      # CreateMcpServer请求参数结构体
      class CreateMcpServerRequest < TencentCloud::Common::AbstractModel
        # @param Mode: <p>模式：proxy代理模式； wrap封装模式；</p>
        # @type Mode: String
        # @param McpVersion: <p>版本号：2024-11-05 2025-03-26</p>
        # @type McpVersion: String
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param WrapServices: <p>封装服务列表</p>
        # @type WrapServices: Array
        # @param TargetSelect: <p>负载方式，robin random consistentHash</p>
        # @type TargetSelect: String
        # @param TargetHosts: <p>目标服务器</p>
        # @type TargetHosts: Array
        # @param HttpProtocolType: <p>后端协议：http https</p>
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: <p>证书检查</p>
        # @type CheckTargetCertsError: Boolean
        # @param TargetPath: <p>目标路径</p>
        # @type TargetPath: String
        # @param InvokeLimitConfigStatus: <p>流量控制开启状态</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>流量控制配置</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param IpWhiteStatus: <p>IP白名单开启状态</p>
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteConfig: <p>IP白名单配置</p>
        # @type IpWhiteConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param IpBlackStatus: <p>IP黑名单开启状态</p>
        # @type IpBlackStatus: Boolean
        # @param IpBlackConfig: <p>IP黑名单配置</p>
        # @type IpBlackConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param CustomHttpHost: <p>自定义host</p>
        # @type CustomHttpHost: String
        # @param HttpHostType: <p>Http 请求host类型：useRequestHost 保持源请求；host targetHost 修正为源站host；  customHost 自定义host</p>
        # @type HttpHostType: String
        # @param Timeout: <p>请求的超时时间</p>
        # @type Timeout: Integer
        # @param McpSecurityRules: <p>安全规则集</p>
        # @type McpSecurityRules: Array
        # @param ToolConfigs: <p>工具集配置（openapi时或许用的是）</p>
        # @type ToolConfigs: Array
        # @param WrapPaasID: <p>封装的API分组ID</p>
        # @type WrapPaasID: String
        # @param PluginConfigs: <p>插件配置</p>
        # @type PluginConfigs: Array
        # @param IgnoreHealthCheck: <p>是否忽略健康检查</p>
        # @type IgnoreHealthCheck: Boolean

        attr_accessor :Mode, :McpVersion, :InstanceID, :Name, :Description, :WrapServices, :TargetSelect, :TargetHosts, :HttpProtocolType, :CheckTargetCertsError, :TargetPath, :InvokeLimitConfigStatus, :InvokeLimitConfig, :IpWhiteStatus, :IpWhiteConfig, :IpBlackStatus, :IpBlackConfig, :CustomHttpHost, :HttpHostType, :Timeout, :McpSecurityRules, :ToolConfigs, :WrapPaasID, :PluginConfigs, :IgnoreHealthCheck

        def initialize(mode=nil, mcpversion=nil, instanceid=nil, name=nil, description=nil, wrapservices=nil, targetselect=nil, targethosts=nil, httpprotocoltype=nil, checktargetcertserror=nil, targetpath=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, ipwhitestatus=nil, ipwhiteconfig=nil, ipblackstatus=nil, ipblackconfig=nil, customhttphost=nil, httphosttype=nil, timeout=nil, mcpsecurityrules=nil, toolconfigs=nil, wrappaasid=nil, pluginconfigs=nil, ignorehealthcheck=nil)
          @Mode = mode
          @McpVersion = mcpversion
          @InstanceID = instanceid
          @Name = name
          @Description = description
          @WrapServices = wrapservices
          @TargetSelect = targetselect
          @TargetHosts = targethosts
          @HttpProtocolType = httpprotocoltype
          @CheckTargetCertsError = checktargetcertserror
          @TargetPath = targetpath
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteConfig = ipwhiteconfig
          @IpBlackStatus = ipblackstatus
          @IpBlackConfig = ipblackconfig
          @CustomHttpHost = customhttphost
          @HttpHostType = httphosttype
          @Timeout = timeout
          @McpSecurityRules = mcpsecurityrules
          @ToolConfigs = toolconfigs
          @WrapPaasID = wrappaasid
          @PluginConfigs = pluginconfigs
          @IgnoreHealthCheck = ignorehealthcheck
        end

        def deserialize(params)
          @Mode = params['Mode']
          @McpVersion = params['McpVersion']
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @Description = params['Description']
          @WrapServices = params['WrapServices']
          @TargetSelect = params['TargetSelect']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @HttpProtocolType = params['HttpProtocolType']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @TargetPath = params['TargetPath']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          unless params['IpWhiteConfig'].nil?
            @IpWhiteConfig = IpConfig.new
            @IpWhiteConfig.deserialize(params['IpWhiteConfig'])
          end
          @IpBlackStatus = params['IpBlackStatus']
          unless params['IpBlackConfig'].nil?
            @IpBlackConfig = IpConfig.new
            @IpBlackConfig.deserialize(params['IpBlackConfig'])
          end
          @CustomHttpHost = params['CustomHttpHost']
          @HttpHostType = params['HttpHostType']
          @Timeout = params['Timeout']
          unless params['McpSecurityRules'].nil?
            @McpSecurityRules = []
            params['McpSecurityRules'].each do |i|
              mcpsecurityrule_tmp = McpSecurityRule.new
              mcpsecurityrule_tmp.deserialize(i)
              @McpSecurityRules << mcpsecurityrule_tmp
            end
          end
          unless params['ToolConfigs'].nil?
            @ToolConfigs = []
            params['ToolConfigs'].each do |i|
              toolconfigdto_tmp = ToolConfigDTO.new
              toolconfigdto_tmp.deserialize(i)
              @ToolConfigs << toolconfigdto_tmp
            end
          end
          @WrapPaasID = params['WrapPaasID']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @IgnoreHealthCheck = params['IgnoreHealthCheck']
        end
      end

      # CreateMcpServer返回参数结构体
      class CreateMcpServerResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>mcp server ID</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateModel请求参数结构体
      class CreateModelRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例</p>
        # @type InstanceID: String
        # @param Name: <p>模型名称</p>
        # @type Name: String
        # @param HttpProtocolType: <p>协议类型：http/https</p>
        # @type HttpProtocolType: String
        # @param TargetPath: <p>目标路径</p>
        # @type TargetPath: String
        # @param TargetHosts: <p>目标服务器</p>
        # @type TargetHosts: Array
        # @param CredentialID: <p>凭据ID</p>
        # @type CredentialID: String
        # @param CheckTargetCertsError: <p>https时，是否检查证书合法</p>
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: <p>http协议版本：1.1/2.0</p>
        # @type HttpProtocolVersion: String
        # @param ModelID: <p>model ID</p>
        # @type ModelID: String
        # @param Description: <p>描述</p>
        # @type Description: String

        attr_accessor :InstanceID, :Name, :HttpProtocolType, :TargetPath, :TargetHosts, :CredentialID, :CheckTargetCertsError, :HttpProtocolVersion, :ModelID, :Description

        def initialize(instanceid=nil, name=nil, httpprotocoltype=nil, targetpath=nil, targethosts=nil, credentialid=nil, checktargetcertserror=nil, httpprotocolversion=nil, modelid=nil, description=nil)
          @InstanceID = instanceid
          @Name = name
          @HttpProtocolType = httpprotocoltype
          @TargetPath = targetpath
          @TargetHosts = targethosts
          @CredentialID = credentialid
          @CheckTargetCertsError = checktargetcertserror
          @HttpProtocolVersion = httpprotocolversion
          @ModelID = modelid
          @Description = description
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @HttpProtocolType = params['HttpProtocolType']
          @TargetPath = params['TargetPath']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @CredentialID = params['CredentialID']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @HttpProtocolVersion = params['HttpProtocolVersion']
          @ModelID = params['ModelID']
          @Description = params['Description']
        end
      end

      # CreateModel返回参数结构体
      class CreateModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>结果集</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateModelService请求参数结构体
      class CreateModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例</p>
        # @type InstanceID: String
        # @param Name: <p>模型服务名称</p>
        # @type Name: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param PubPath: <p>访问路径</p>
        # @type PubPath: String
        # @param TargetModels: <p>模型ID列表</p>
        # @type TargetModels: Array
        # @param PathMatchType: <p>路径匹配类型: prefix 前缀匹配(不送默认); absolute 绝对匹配; regex正则匹配;</p>
        # @type PathMatchType: String
        # @param InvokeLimitConfigStatus: <p>是否开启限流</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>限流配置</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param TokenLimitStatus: <p>是否开启token控制</p>
        # @type TokenLimitStatus: Boolean
        # @param TokenLimitConfig: <p>token控制</p>
        # @type TokenLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.TokenLimitConfigDTO`
        # @param TmsStatus: <p>是否开启内容安全</p>
        # @type TmsStatus: Boolean
        # @param TmsConfig: <p>内容安全配置</p>
        # @type TmsConfig: :class:`Tencentcloud::Apis.v20240801.models.TmsConfigDTO`
        # @param IpWhiteStatus: <p>是否开启IP白名单</p>
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteList: <p>IP白名单</p>
        # @type IpWhiteList: Array
        # @param IpBlackList: <p>IP黑名单</p>
        # @type IpBlackList: Array
        # @param PluginConfigs: <p>插件配置</p>
        # @type PluginConfigs: Array
        # @param Timeout: <p>超时配置，秒</p>
        # @type Timeout: Integer
        # @param PromptModerateStatus: <p>是否开启提示词安全检测</p>
        # @type PromptModerateStatus: Boolean
        # @param PromptModerateConfig: <p>提示词安全检测配置</p>
        # @type PromptModerateConfig: :class:`Tencentcloud::Apis.v20240801.models.PromptModerateConfigDTO`
        # @param SensitiveDataCheckStatus: <p>是否开启敏感数据检测</p>
        # @type SensitiveDataCheckStatus: Boolean
        # @param SensitiveDataCheckConfig: <p>敏感数据检测配置</p>
        # @type SensitiveDataCheckConfig: :class:`Tencentcloud::Apis.v20240801.models.SensitiveDataCheckConfigDTO`
        # @param TargetSelect: <p>负载方式</p><p>枚举值：</p><ul><li>random： 随机</li><li>consistentHash： 会话保持</li></ul>
        # @type TargetSelect: String
        # @param FindHostKeyMethod: <p>会话判断方式</p><p>枚举值：</p><ul><li>fromClientIP： 客户端IP</li><li>fromHeader： 通过header值</li><li>autoDetect： 自动探测</li></ul>
        # @type FindHostKeyMethod: String
        # @param HostKeyHeaderName: <p>会话判定方式为fromHeader时会话的header名称</p>
        # @type HostKeyHeaderName: String
        # @param FallbackStatus: <p>是否启用Fallback模型</p>
        # @type FallbackStatus: Boolean
        # @param FallbackModels: <p>Fallback模型配置</p>
        # @type FallbackModels: Array
        # @param ModelProtocol: <p>模型协议</p>
        # @type ModelProtocol: String
        # @param RawCustomModelProtocolConfig: <p>自定义模型协议配置</p>
        # @type RawCustomModelProtocolConfig: String

        attr_accessor :InstanceID, :Name, :Description, :PubPath, :TargetModels, :PathMatchType, :InvokeLimitConfigStatus, :InvokeLimitConfig, :TokenLimitStatus, :TokenLimitConfig, :TmsStatus, :TmsConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackList, :PluginConfigs, :Timeout, :PromptModerateStatus, :PromptModerateConfig, :SensitiveDataCheckStatus, :SensitiveDataCheckConfig, :TargetSelect, :FindHostKeyMethod, :HostKeyHeaderName, :FallbackStatus, :FallbackModels, :ModelProtocol, :RawCustomModelProtocolConfig

        def initialize(instanceid=nil, name=nil, description=nil, pubpath=nil, targetmodels=nil, pathmatchtype=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, tokenlimitstatus=nil, tokenlimitconfig=nil, tmsstatus=nil, tmsconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblacklist=nil, pluginconfigs=nil, timeout=nil, promptmoderatestatus=nil, promptmoderateconfig=nil, sensitivedatacheckstatus=nil, sensitivedatacheckconfig=nil, targetselect=nil, findhostkeymethod=nil, hostkeyheadername=nil, fallbackstatus=nil, fallbackmodels=nil, modelprotocol=nil, rawcustommodelprotocolconfig=nil)
          @InstanceID = instanceid
          @Name = name
          @Description = description
          @PubPath = pubpath
          @TargetModels = targetmodels
          @PathMatchType = pathmatchtype
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @TokenLimitStatus = tokenlimitstatus
          @TokenLimitConfig = tokenlimitconfig
          @TmsStatus = tmsstatus
          @TmsConfig = tmsconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteList = ipwhitelist
          @IpBlackList = ipblacklist
          @PluginConfigs = pluginconfigs
          @Timeout = timeout
          @PromptModerateStatus = promptmoderatestatus
          @PromptModerateConfig = promptmoderateconfig
          @SensitiveDataCheckStatus = sensitivedatacheckstatus
          @SensitiveDataCheckConfig = sensitivedatacheckconfig
          @TargetSelect = targetselect
          @FindHostKeyMethod = findhostkeymethod
          @HostKeyHeaderName = hostkeyheadername
          @FallbackStatus = fallbackstatus
          @FallbackModels = fallbackmodels
          @ModelProtocol = modelprotocol
          @RawCustomModelProtocolConfig = rawcustommodelprotocolconfig
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @Description = params['Description']
          @PubPath = params['PubPath']
          unless params['TargetModels'].nil?
            @TargetModels = []
            params['TargetModels'].each do |i|
              targetmodeldto_tmp = TargetModelDTO.new
              targetmodeldto_tmp.deserialize(i)
              @TargetModels << targetmodeldto_tmp
            end
          end
          @PathMatchType = params['PathMatchType']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @TokenLimitStatus = params['TokenLimitStatus']
          unless params['TokenLimitConfig'].nil?
            @TokenLimitConfig = TokenLimitConfigDTO.new
            @TokenLimitConfig.deserialize(params['TokenLimitConfig'])
          end
          @TmsStatus = params['TmsStatus']
          unless params['TmsConfig'].nil?
            @TmsConfig = TmsConfigDTO.new
            @TmsConfig.deserialize(params['TmsConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          @IpWhiteList = params['IpWhiteList']
          @IpBlackList = params['IpBlackList']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @Timeout = params['Timeout']
          @PromptModerateStatus = params['PromptModerateStatus']
          unless params['PromptModerateConfig'].nil?
            @PromptModerateConfig = PromptModerateConfigDTO.new
            @PromptModerateConfig.deserialize(params['PromptModerateConfig'])
          end
          @SensitiveDataCheckStatus = params['SensitiveDataCheckStatus']
          unless params['SensitiveDataCheckConfig'].nil?
            @SensitiveDataCheckConfig = SensitiveDataCheckConfigDTO.new
            @SensitiveDataCheckConfig.deserialize(params['SensitiveDataCheckConfig'])
          end
          @TargetSelect = params['TargetSelect']
          @FindHostKeyMethod = params['FindHostKeyMethod']
          @HostKeyHeaderName = params['HostKeyHeaderName']
          @FallbackStatus = params['FallbackStatus']
          unless params['FallbackModels'].nil?
            @FallbackModels = []
            params['FallbackModels'].each do |i|
              targetmodeldto_tmp = TargetModelDTO.new
              targetmodeldto_tmp.deserialize(i)
              @FallbackModels << targetmodeldto_tmp
            end
          end
          @ModelProtocol = params['ModelProtocol']
          @RawCustomModelProtocolConfig = params['RawCustomModelProtocolConfig']
        end
      end

      # CreateModelService返回参数结构体
      class CreateModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>结果集</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateService请求参数结构体
      class CreateServiceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateService返回参数结构体
      class CreateServiceResponse < TencentCloud::Common::AbstractModel
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

      # 自定义匹配条件
      class CustomMatch < TencentCloud::Common::AbstractModel
        # @param HeadersMatch: <p>请求头  匹配条件</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadersMatch: :class:`Tencentcloud::Apis.v20240801.models.CompoundCondition`
        # @param QueryMatch: <p>请求参数 匹配条件</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryMatch: :class:`Tencentcloud::Apis.v20240801.models.CompoundCondition`

        attr_accessor :HeadersMatch, :QueryMatch

        def initialize(headersmatch=nil, querymatch=nil)
          @HeadersMatch = headersmatch
          @QueryMatch = querymatch
        end

        def deserialize(params)
          unless params['HeadersMatch'].nil?
            @HeadersMatch = CompoundCondition.new
            @HeadersMatch.deserialize(params['HeadersMatch'])
          end
          unless params['QueryMatch'].nil?
            @QueryMatch = CompoundCondition.new
            @QueryMatch.deserialize(params['QueryMatch'])
          end
        end
      end

      # DeleteAgentAppMcpServers请求参数结构体
      class DeleteAgentAppMcpServersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String
        # @param McpServerIDs: mcp server id数组
        # @type McpServerIDs: Array

        attr_accessor :InstanceID, :ID, :McpServerIDs

        def initialize(instanceid=nil, id=nil, mcpserverids=nil)
          @InstanceID = instanceid
          @ID = id
          @McpServerIDs = mcpserverids
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @McpServerIDs = params['McpServerIDs']
        end
      end

      # DeleteAgentAppMcpServers返回参数结构体
      class DeleteAgentAppMcpServersResponse < TencentCloud::Common::AbstractModel
        # @param Data: app id
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAgentAppModelServices请求参数结构体
      class DeleteAgentAppModelServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String
        # @param ModelServiceIDs: 关联的model service id
        # @type ModelServiceIDs: Array

        attr_accessor :InstanceID, :ID, :ModelServiceIDs

        def initialize(instanceid=nil, id=nil, modelserviceids=nil)
          @InstanceID = instanceid
          @ID = id
          @ModelServiceIDs = modelserviceids
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @ModelServiceIDs = params['ModelServiceIDs']
        end
      end

      # DeleteAgentAppModelServices返回参数结构体
      class DeleteAgentAppModelServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: app id
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAgentApp请求参数结构体
      class DeleteAgentAppRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteAgentApp返回参数结构体
      class DeleteAgentAppResponse < TencentCloud::Common::AbstractModel
        # @param Data: app id
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAgentAppServices请求参数结构体
      class DeleteAgentAppServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param ID: <p>应用ID</p>
        # @type ID: String
        # @param ServiceIDs: <p>服务IDs</p>
        # @type ServiceIDs: Array

        attr_accessor :InstanceID, :ID, :ServiceIDs

        def initialize(instanceid=nil, id=nil, serviceids=nil)
          @InstanceID = instanceid
          @ID = id
          @ServiceIDs = serviceids
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @ServiceIDs = params['ServiceIDs']
        end
      end

      # DeleteAgentAppServices返回参数结构体
      class DeleteAgentAppServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>app id</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAgentCredential请求参数结构体
      class DeleteAgentCredentialRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteAgentCredential返回参数结构体
      class DeleteAgentCredentialResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMcpServer请求参数结构体
      class DeleteMcpServerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: mcp server ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteMcpServer返回参数结构体
      class DeleteMcpServerResponse < TencentCloud::Common::AbstractModel
        # @param Data: mcp server ID
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteModel请求参数结构体
      class DeleteModelRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例
        # @type InstanceID: String
        # @param IDs: 模型ID数组
        # @type IDs: Array

        attr_accessor :InstanceID, :IDs

        def initialize(instanceid=nil, ids=nil)
          @InstanceID = instanceid
          @IDs = ids
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @IDs = params['IDs']
        end
      end

      # DeleteModel返回参数结构体
      class DeleteModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果集
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDsVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDsVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteModelService请求参数结构体
      class DeleteModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例
        # @type InstanceID: String
        # @param ID: 模型服务ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteModelService返回参数结构体
      class DeleteModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果集
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteService请求参数结构体
      class DeleteServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 业务ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteService返回参数结构体
      class DeleteServiceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAgentAppMcpServers请求参数结构体
      class DescribeAgentAppMcpServersRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param AgentAppIDs: 应用ID
        # @type AgentAppIDs: Array
        # @param McpServerIDs: 关联的mcp
        # @type McpServerIDs: Array
        # @param AgentCredentialIDs: 凭据ID
        # @type AgentCredentialIDs: Array
        # @param Keyword: 关键词
        # @type Keyword: String

        attr_accessor :Limit, :Offset, :InstanceID, :AgentAppIDs, :McpServerIDs, :AgentCredentialIDs, :Keyword

        def initialize(limit=nil, offset=nil, instanceid=nil, agentappids=nil, mcpserverids=nil, agentcredentialids=nil, keyword=nil)
          @Limit = limit
          @Offset = offset
          @InstanceID = instanceid
          @AgentAppIDs = agentappids
          @McpServerIDs = mcpserverids
          @AgentCredentialIDs = agentcredentialids
          @Keyword = keyword
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceID = params['InstanceID']
          @AgentAppIDs = params['AgentAppIDs']
          @McpServerIDs = params['McpServerIDs']
          @AgentCredentialIDs = params['AgentCredentialIDs']
          @Keyword = params['Keyword']
        end
      end

      # 查询App mcpServer绑定列表响应
      class DescribeAgentAppMcpServersResp < TencentCloud::Common::AbstractModel
        # @param Total: 条目总数
        # @type Total: Integer
        # @param Items: 具体条目
        # @type Items: Array

        attr_accessor :Total, :Items

        def initialize(total=nil, items=nil)
          @Total = total
          @Items = items
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              agentappmcpservervo_tmp = AgentAppMcpServerVO.new
              agentappmcpservervo_tmp.deserialize(i)
              @Items << agentappmcpservervo_tmp
            end
          end
        end
      end

      # DescribeAgentAppMcpServers返回参数结构体
      class DescribeAgentAppMcpServersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeAgentAppMcpServersResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAgentAppMcpServersResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentAppModelServices请求参数结构体
      class DescribeAgentAppModelServicesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAgentAppModelServices返回参数结构体
      class DescribeAgentAppModelServicesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAgentApp请求参数结构体
      class DescribeAgentAppRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: app id
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # 查询app详情响应
      class DescribeAgentAppResp < TencentCloud::Common::AbstractModel
        # @param AppID: <p>租户appID</p>
        # @type AppID: Integer
        # @param Uin: <p>租户ID</p>
        # @type Uin: String
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param ID: <p>应用ID</p>
        # @type ID: String
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param Status: <p>状态</p>
        # @type Status: String
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>修改时间</p>
        # @type UpdateTime: String
        # @param AuthType: <p>认证类型</p>
        # @type AuthType: String
        # @param ApiKeys: <p>apiKeys列表，脱敏</p>
        # @type ApiKeys: Array
        # @param SecretKeys: <p>secretKey列表，脱敏</p>
        # @type SecretKeys: Array
        # @param OAuth2ResourceServerID: <p>OAuth2 Resource Server ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OAuth2ResourceServerID: String
        # @param McpServersNum: <p>绑定mcpServer数量</p>
        # @type McpServersNum: Integer
        # @param ModelServicesNum: <p>绑定的模型服务数量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelServicesNum: Integer
        # @param ConnectorIDs: <p>API认证列表</p>
        # @type ConnectorIDs: Array
        # @param ServicesNum: <p>关联API数量</p>
        # @type ServicesNum: Integer

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :Description, :Status, :CreateTime, :UpdateTime, :AuthType, :ApiKeys, :SecretKeys, :OAuth2ResourceServerID, :McpServersNum, :ModelServicesNum, :ConnectorIDs, :ServicesNum

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, description=nil, status=nil, createtime=nil, updatetime=nil, authtype=nil, apikeys=nil, secretkeys=nil, oauth2resourceserverid=nil, mcpserversnum=nil, modelservicesnum=nil, connectorids=nil, servicesnum=nil)
          @AppID = appid
          @Uin = uin
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @Description = description
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AuthType = authtype
          @ApiKeys = apikeys
          @SecretKeys = secretkeys
          @OAuth2ResourceServerID = oauth2resourceserverid
          @McpServersNum = mcpserversnum
          @ModelServicesNum = modelservicesnum
          @ConnectorIDs = connectorids
          @ServicesNum = servicesnum
        end

        def deserialize(params)
          @AppID = params['AppID']
          @Uin = params['Uin']
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @Description = params['Description']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AuthType = params['AuthType']
          @ApiKeys = params['ApiKeys']
          unless params['SecretKeys'].nil?
            @SecretKeys = []
            params['SecretKeys'].each do |i|
              agentappsecretkeyvo_tmp = AgentAppSecretKeyVO.new
              agentappsecretkeyvo_tmp.deserialize(i)
              @SecretKeys << agentappsecretkeyvo_tmp
            end
          end
          @OAuth2ResourceServerID = params['OAuth2ResourceServerID']
          @McpServersNum = params['McpServersNum']
          @ModelServicesNum = params['ModelServicesNum']
          @ConnectorIDs = params['ConnectorIDs']
          @ServicesNum = params['ServicesNum']
        end
      end

      # DescribeAgentApp返回参数结构体
      class DescribeAgentAppResponse < TencentCloud::Common::AbstractModel
        # @param Data: app详情
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeAgentAppResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAgentAppResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentAppServices请求参数结构体
      class DescribeAgentAppServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param Limit: <p>数据量</p>
        # @type Limit: Integer
        # @param IDs: <p>IDs</p>
        # @type IDs: Array
        # @param AgentAppIDs: <p>应用IDs</p>
        # @type AgentAppIDs: Array
        # @param ServiceIDs: <p>服务IDs</p>
        # @type ServiceIDs: Array
        # @param Keyword: <p>关键字</p>
        # @type Keyword: String
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param AgentCredentialExist: <p>是否有凭据</p>
        # @type AgentCredentialExist: Boolean
        # @param AgentCredentialIDs: <p>凭据ID</p>
        # @type AgentCredentialIDs: Array

        attr_accessor :InstanceID, :Limit, :IDs, :AgentAppIDs, :ServiceIDs, :Keyword, :Offset, :AgentCredentialExist, :AgentCredentialIDs

        def initialize(instanceid=nil, limit=nil, ids=nil, agentappids=nil, serviceids=nil, keyword=nil, offset=nil, agentcredentialexist=nil, agentcredentialids=nil)
          @InstanceID = instanceid
          @Limit = limit
          @IDs = ids
          @AgentAppIDs = agentappids
          @ServiceIDs = serviceids
          @Keyword = keyword
          @Offset = offset
          @AgentCredentialExist = agentcredentialexist
          @AgentCredentialIDs = agentcredentialids
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Limit = params['Limit']
          @IDs = params['IDs']
          @AgentAppIDs = params['AgentAppIDs']
          @ServiceIDs = params['ServiceIDs']
          @Keyword = params['Keyword']
          @Offset = params['Offset']
          @AgentCredentialExist = params['AgentCredentialExist']
          @AgentCredentialIDs = params['AgentCredentialIDs']
        end
      end

      # DescribeAgentAppServices返回参数结构体
      class DescribeAgentAppServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>app id</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeAgentAppServicesVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAgentAppServicesVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 应用服务查询
      class DescribeAgentAppServicesVO < TencentCloud::Common::AbstractModel
        # @param Total: <p>总数</p>
        # @type Total: Integer
        # @param Items: <p>数据列表</p>
        # @type Items: Array

        attr_accessor :Total, :Items

        def initialize(total=nil, items=nil)
          @Total = total
          @Items = items
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              agentappservicevo_tmp = AgentAppServiceVO.new
              agentappservicevo_tmp.deserialize(i)
              @Items << agentappservicevo_tmp
            end
          end
        end
      end

      # DescribeAgentApps请求参数结构体
      class DescribeAgentAppsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param IDs: 服务ID数组
        # @type IDs: Array
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param NotIDs: notID列表
        # @type NotIDs: Array
        # @param Status: 状态：normal正常状态，disabled下线状态
        # @type Status: String
        # @param Keyword: 关键词
        # @type Keyword: String
        # @param AuthType: 认证类型：apiKey，secretKey
        # @type AuthType: String
        # @param Sort: 排序
        # @type Sort: :class:`Tencentcloud::Apis.v20240801.models.DescribeAgentAppsSortDTO`
        # @param AgentCredentialID: 凭据ID
        # @type AgentCredentialID: String

        attr_accessor :Limit, :Offset, :IDs, :InstanceID, :NotIDs, :Status, :Keyword, :AuthType, :Sort, :AgentCredentialID

        def initialize(limit=nil, offset=nil, ids=nil, instanceid=nil, notids=nil, status=nil, keyword=nil, authtype=nil, sort=nil, agentcredentialid=nil)
          @Limit = limit
          @Offset = offset
          @IDs = ids
          @InstanceID = instanceid
          @NotIDs = notids
          @Status = status
          @Keyword = keyword
          @AuthType = authtype
          @Sort = sort
          @AgentCredentialID = agentcredentialid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @IDs = params['IDs']
          @InstanceID = params['InstanceID']
          @NotIDs = params['NotIDs']
          @Status = params['Status']
          @Keyword = params['Keyword']
          @AuthType = params['AuthType']
          unless params['Sort'].nil?
            @Sort = DescribeAgentAppsSortDTO.new
            @Sort.deserialize(params['Sort'])
          end
          @AgentCredentialID = params['AgentCredentialID']
        end
      end

      # 查询App列表响应
      class DescribeAgentAppsResp < TencentCloud::Common::AbstractModel
        # @param Total: 条目总数
        # @type Total: Integer
        # @param Items: 具体条目
        # @type Items: Array

        attr_accessor :Total, :Items

        def initialize(total=nil, items=nil)
          @Total = total
          @Items = items
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describeagentappresp_tmp = DescribeAgentAppResp.new
              describeagentappresp_tmp.deserialize(i)
              @Items << describeagentappresp_tmp
            end
          end
        end
      end

      # DescribeAgentApps返回参数结构体
      class DescribeAgentAppsResponse < TencentCloud::Common::AbstractModel
        # @param Data: app列表
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeAgentAppsResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAgentAppsResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # agentApp查询排序
      class DescribeAgentAppsSortDTO < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间
        # @type UpdateTime: Integer
        # @param Name: 名称
        # @type Name: Integer
        # @param Status: 状态
        # @type Status: Integer

        attr_accessor :CreateTime, :UpdateTime, :Name, :Status

        def initialize(createtime=nil, updatetime=nil, name=nil, status=nil)
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Name = name
          @Status = status
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Name = params['Name']
          @Status = params['Status']
        end
      end

      # DescribeAgentCredential请求参数结构体
      class DescribeAgentCredentialRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 凭据详情响应
      class DescribeAgentCredentialResp < TencentCloud::Common::AbstractModel
        # @param AppID: <p>租户应用ID</p>
        # @type AppID: Integer
        # @param Uin: <p>租户ID</p>
        # @type Uin: String
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param ID: <p>凭据ID</p>
        # @type ID: String
        # @param Name: <p>凭据名称</p>
        # @type Name: String
        # @param Status: <p>状态</p>
        # @type Status: String
        # @param RelateAgentAppNum: <p>关联应用数</p>
        # @type RelateAgentAppNum: Integer
        # @param RelateMcpServerNum: <p>关联mcp数</p>
        # @type RelateMcpServerNum: Integer
        # @param RelateModelNum: <p>关联模型数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelateModelNum: Integer
        # @param RelateServiceNum: <p>关联服务数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelateServiceNum: Integer
        # @param Content: <p>凭据内容</p>
        # @type Content: :class:`Tencentcloud::Apis.v20240801.models.AgentCredentialContentDTO`
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param LastUpdateTime: <p>修改时间</p>
        # @type LastUpdateTime: String
        # @param Type: <p>类型</p>
        # @type Type: String

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :Status, :RelateAgentAppNum, :RelateMcpServerNum, :RelateModelNum, :RelateServiceNum, :Content, :CreateTime, :LastUpdateTime, :Type
        extend Gem::Deprecate
        deprecate :RelateAgentAppNum, :none, 2026, 7
        deprecate :RelateAgentAppNum=, :none, 2026, 7

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, status=nil, relateagentappnum=nil, relatemcpservernum=nil, relatemodelnum=nil, relateservicenum=nil, content=nil, createtime=nil, lastupdatetime=nil, type=nil)
          @AppID = appid
          @Uin = uin
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @Status = status
          @RelateAgentAppNum = relateagentappnum
          @RelateMcpServerNum = relatemcpservernum
          @RelateModelNum = relatemodelnum
          @RelateServiceNum = relateservicenum
          @Content = content
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @Type = type
        end

        def deserialize(params)
          @AppID = params['AppID']
          @Uin = params['Uin']
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @Status = params['Status']
          @RelateAgentAppNum = params['RelateAgentAppNum']
          @RelateMcpServerNum = params['RelateMcpServerNum']
          @RelateModelNum = params['RelateModelNum']
          @RelateServiceNum = params['RelateServiceNum']
          unless params['Content'].nil?
            @Content = AgentCredentialContentDTO.new
            @Content.deserialize(params['Content'])
          end
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @Type = params['Type']
        end
      end

      # DescribeAgentCredential返回参数结构体
      class DescribeAgentCredentialResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAgentCredentials请求参数结构体
      class DescribeAgentCredentialsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAgentCredentials返回参数结构体
      class DescribeAgentCredentialsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeMcpServer请求参数结构体
      class DescribeMcpServerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: mcp server ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DescribeMcpServer返回参数结构体
      class DescribeMcpServerResponse < TencentCloud::Common::AbstractModel
        # @param Data: mcp server详情
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeMcpServerResponseVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeMcpServerResponseVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMcpServerResponseVO
      class DescribeMcpServerResponseVO < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
        # @param Name: <p>名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param LabelIDs: <p>标签ID数组</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelIDs: Array
        # @param CategoryIDs: <p>目录ID数组</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryIDs: Array
        # @param TargetSelect: <p>负载方式，robin random consistentHash</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSelect: String
        # @param TargetHosts: <p>目标服务器</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHosts: Array
        # @param HttpProtocolType: <p>后端协议：http https</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: <p>证书检查</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckTargetCertsError: Boolean
        # @param TargetPath: <p>目标路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPath: String
        # @param InvokeLimitConfigStatus: <p>流量控制状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>流量控制配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param IpWhiteStatus: <p>IP白名单开启状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteConfig: <p>IP白名单配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpWhiteConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param IpBlackStatus: <p>IP黑名单开启状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpBlackStatus: Boolean
        # @param IpBlackConfig: <p>IP黑名单配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpBlackConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param ID: <p>mcp server ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Status: <p>状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Url: <p>预览地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param App: <p>应用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type App: :class:`Tencentcloud::Apis.v20240801.models.IDNameVO`
        # @param Catalogs: <p>目录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalogs: Array
        # @param Labels: <p>标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param CreateTime: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdateTime: <p>最后修改时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param AppID: <p>用户appID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: Integer
        # @param Uin: <p>用户ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param CustomHttpHost: <p>自定义host</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomHttpHost: String
        # @param HttpHostType: <p>Http 请求host类型 useRequestHost 保持源请求host targetHost 修正为源站host  customHost 自定义host</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpHostType: String
        # @param Timeout: <p>请求的超时时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param Mode: <p>mcp server模式</p>
        # @type Mode: String
        # @param McpVersion: <p>mcp version</p>
        # @type McpVersion: String
        # @param WrapServices: <p>封装模式下绑定的服务ID列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WrapServices: Array
        # @param ToolNum: <p>工具数量</p>
        # @type ToolNum: Integer
        # @param McpSecurityRulesVO: <p>安全规则集响应</p>
        # @type McpSecurityRulesVO: Array
        # @param ToolConfigs: <p>真实工具级别配置，实时拉取了tool/list做渲染的，如果tool/list不通，就拉不到。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolConfigs: Array
        # @param UrlObj: <p>访问URL</p>
        # @type UrlObj: :class:`Tencentcloud::Apis.v20240801.models.McpUrlObj`
        # @param ToolMessage: <p>后端mcp服务是否正常</p>
        # @type ToolMessage: String
        # @param Tools: <p>后端mcp服务的工具列表</p>
        # @type Tools: Array
        # @param WrapPaasID: <p>封装的API分组ID</p>
        # @type WrapPaasID: String
        # @param RelateAgentAppNum: <p>关联的agentApp数量</p>
        # @type RelateAgentAppNum: Integer
        # @param PluginConfigs: <p>插件配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginConfigs: Array
        # @param IgnoreHealthCheck: <p>是否忽略健康检查</p>
        # @type IgnoreHealthCheck: Boolean

        attr_accessor :InstanceID, :Name, :Description, :LabelIDs, :CategoryIDs, :TargetSelect, :TargetHosts, :HttpProtocolType, :CheckTargetCertsError, :TargetPath, :InvokeLimitConfigStatus, :InvokeLimitConfig, :IpWhiteStatus, :IpWhiteConfig, :IpBlackStatus, :IpBlackConfig, :ID, :Status, :Url, :App, :Catalogs, :Labels, :CreateTime, :LastUpdateTime, :AppID, :Uin, :CustomHttpHost, :HttpHostType, :Timeout, :Mode, :McpVersion, :WrapServices, :ToolNum, :McpSecurityRulesVO, :ToolConfigs, :UrlObj, :ToolMessage, :Tools, :WrapPaasID, :RelateAgentAppNum, :PluginConfigs, :IgnoreHealthCheck

        def initialize(instanceid=nil, name=nil, description=nil, labelids=nil, categoryids=nil, targetselect=nil, targethosts=nil, httpprotocoltype=nil, checktargetcertserror=nil, targetpath=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, ipwhitestatus=nil, ipwhiteconfig=nil, ipblackstatus=nil, ipblackconfig=nil, id=nil, status=nil, url=nil, app=nil, catalogs=nil, labels=nil, createtime=nil, lastupdatetime=nil, appid=nil, uin=nil, customhttphost=nil, httphosttype=nil, timeout=nil, mode=nil, mcpversion=nil, wrapservices=nil, toolnum=nil, mcpsecurityrulesvo=nil, toolconfigs=nil, urlobj=nil, toolmessage=nil, tools=nil, wrappaasid=nil, relateagentappnum=nil, pluginconfigs=nil, ignorehealthcheck=nil)
          @InstanceID = instanceid
          @Name = name
          @Description = description
          @LabelIDs = labelids
          @CategoryIDs = categoryids
          @TargetSelect = targetselect
          @TargetHosts = targethosts
          @HttpProtocolType = httpprotocoltype
          @CheckTargetCertsError = checktargetcertserror
          @TargetPath = targetpath
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteConfig = ipwhiteconfig
          @IpBlackStatus = ipblackstatus
          @IpBlackConfig = ipblackconfig
          @ID = id
          @Status = status
          @Url = url
          @App = app
          @Catalogs = catalogs
          @Labels = labels
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @AppID = appid
          @Uin = uin
          @CustomHttpHost = customhttphost
          @HttpHostType = httphosttype
          @Timeout = timeout
          @Mode = mode
          @McpVersion = mcpversion
          @WrapServices = wrapservices
          @ToolNum = toolnum
          @McpSecurityRulesVO = mcpsecurityrulesvo
          @ToolConfigs = toolconfigs
          @UrlObj = urlobj
          @ToolMessage = toolmessage
          @Tools = tools
          @WrapPaasID = wrappaasid
          @RelateAgentAppNum = relateagentappnum
          @PluginConfigs = pluginconfigs
          @IgnoreHealthCheck = ignorehealthcheck
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @Description = params['Description']
          @LabelIDs = params['LabelIDs']
          @CategoryIDs = params['CategoryIDs']
          @TargetSelect = params['TargetSelect']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @HttpProtocolType = params['HttpProtocolType']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @TargetPath = params['TargetPath']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          unless params['IpWhiteConfig'].nil?
            @IpWhiteConfig = IpConfig.new
            @IpWhiteConfig.deserialize(params['IpWhiteConfig'])
          end
          @IpBlackStatus = params['IpBlackStatus']
          unless params['IpBlackConfig'].nil?
            @IpBlackConfig = IpConfig.new
            @IpBlackConfig.deserialize(params['IpBlackConfig'])
          end
          @ID = params['ID']
          @Status = params['Status']
          @Url = params['Url']
          unless params['App'].nil?
            @App = IDNameVO.new
            @App.deserialize(params['App'])
          end
          unless params['Catalogs'].nil?
            @Catalogs = []
            params['Catalogs'].each do |i|
              idnamevo_tmp = IDNameVO.new
              idnamevo_tmp.deserialize(i)
              @Catalogs << idnamevo_tmp
            end
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              idnamevo_tmp = IDNameVO.new
              idnamevo_tmp.deserialize(i)
              @Labels << idnamevo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @AppID = params['AppID']
          @Uin = params['Uin']
          @CustomHttpHost = params['CustomHttpHost']
          @HttpHostType = params['HttpHostType']
          @Timeout = params['Timeout']
          @Mode = params['Mode']
          @McpVersion = params['McpVersion']
          @WrapServices = params['WrapServices']
          @ToolNum = params['ToolNum']
          unless params['McpSecurityRulesVO'].nil?
            @McpSecurityRulesVO = []
            params['McpSecurityRulesVO'].each do |i|
              mcpsecurityrulesvo_tmp = McpSecurityRulesVO.new
              mcpsecurityrulesvo_tmp.deserialize(i)
              @McpSecurityRulesVO << mcpsecurityrulesvo_tmp
            end
          end
          unless params['ToolConfigs'].nil?
            @ToolConfigs = []
            params['ToolConfigs'].each do |i|
              toolconfigvo_tmp = ToolConfigVO.new
              toolconfigvo_tmp.deserialize(i)
              @ToolConfigs << toolconfigvo_tmp
            end
          end
          unless params['UrlObj'].nil?
            @UrlObj = McpUrlObj.new
            @UrlObj.deserialize(params['UrlObj'])
          end
          @ToolMessage = params['ToolMessage']
          unless params['Tools'].nil?
            @Tools = []
            params['Tools'].each do |i|
              mcptool_tmp = McpTool.new
              mcptool_tmp.deserialize(i)
              @Tools << mcptool_tmp
            end
          end
          @WrapPaasID = params['WrapPaasID']
          @RelateAgentAppNum = params['RelateAgentAppNum']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @IgnoreHealthCheck = params['IgnoreHealthCheck']
        end
      end

      # DescribeMcpServers请求参数结构体
      class DescribeMcpServersRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Statuses: 状态数组：normal正常状态，disabled下线状态
        # @type Statuses: Array
        # @param Keyword: 关键词
        # @type Keyword: String
        # @param IDs: 服务ID数组
        # @type IDs: Array
        # @param Modes: 模式：proxy代理模式； wrap封装模式；
        # @type Modes: Array
        # @param McpSecurityRuleID: 绑定的安全规则ID
        # @type McpSecurityRuleID: String
        # @param McpSecurityRuleAct: 绑定安全规则的处置动作（填写时McpSecurityRuleID得必填）
        # @type McpSecurityRuleAct: String
        # @param PluginID: 已绑定插件id
        # @type PluginID: String

        attr_accessor :Limit, :Offset, :InstanceID, :Statuses, :Keyword, :IDs, :Modes, :McpSecurityRuleID, :McpSecurityRuleAct, :PluginID

        def initialize(limit=nil, offset=nil, instanceid=nil, statuses=nil, keyword=nil, ids=nil, modes=nil, mcpsecurityruleid=nil, mcpsecurityruleact=nil, pluginid=nil)
          @Limit = limit
          @Offset = offset
          @InstanceID = instanceid
          @Statuses = statuses
          @Keyword = keyword
          @IDs = ids
          @Modes = modes
          @McpSecurityRuleID = mcpsecurityruleid
          @McpSecurityRuleAct = mcpsecurityruleact
          @PluginID = pluginid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceID = params['InstanceID']
          @Statuses = params['Statuses']
          @Keyword = params['Keyword']
          @IDs = params['IDs']
          @Modes = params['Modes']
          @McpSecurityRuleID = params['McpSecurityRuleID']
          @McpSecurityRuleAct = params['McpSecurityRuleAct']
          @PluginID = params['PluginID']
        end
      end

      # DescribeMcpServers返回参数结构体
      class DescribeMcpServersResponse < TencentCloud::Common::AbstractModel
        # @param Data: mcp server列表
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeMcpServersResponseVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeMcpServersResponseVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ServicesVO
      class DescribeMcpServersResponseVO < TencentCloud::Common::AbstractModel
        # @param Total: 条目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Items: 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :Total, :Items

        def initialize(total=nil, items=nil)
          @Total = total
          @Items = items
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describemcpserverresponsevo_tmp = DescribeMcpServerResponseVO.new
              describemcpserverresponsevo_tmp.deserialize(i)
              @Items << describemcpserverresponsevo_tmp
            end
          end
        end
      end

      # DescribeModel请求参数结构体
      class DescribeModelRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例
        # @type InstanceID: String
        # @param ID: 模型ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DescribeModel返回参数结构体
      class DescribeModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果集
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeModelResponseVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeModelResponseVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询模型详情的响应
      class DescribeModelResponseVO < TencentCloud::Common::AbstractModel
        # @param AppID: <p>腾讯云AppID</p>
        # @type AppID: Integer
        # @param Uin: <p>腾讯云Uin</p>
        # @type Uin: String
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param ID: <p>模型ID</p>
        # @type ID: String
        # @param Name: <p>模型名称</p>
        # @type Name: String
        # @param CredentialID: <p>凭据ID</p>
        # @type CredentialID: String
        # @param CredentialName: <p>凭据名称</p>
        # @type CredentialName: String
        # @param HttpProtocolType: <p>http协议类型</p>
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: <p>https时，是否校验目标证书</p>
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: <p>http协议版本：1.1/2.0</p>
        # @type HttpProtocolVersion: String
        # @param TargetPath: <p>目标路径</p>
        # @type TargetPath: String
        # @param TargetHosts: <p>目标器列表</p>
        # @type TargetHosts: Array
        # @param ModelServiceCount: <p>被模型服务使用的个数</p>
        # @type ModelServiceCount: Integer
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param LastUpdateTime: <p>最后修改时间</p>
        # @type LastUpdateTime: String
        # @param ModelID: <p>model ID</p>
        # @type ModelID: String
        # @param Description: <p>描述</p>
        # @type Description: String

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :CredentialID, :CredentialName, :HttpProtocolType, :CheckTargetCertsError, :HttpProtocolVersion, :TargetPath, :TargetHosts, :ModelServiceCount, :CreateTime, :LastUpdateTime, :ModelID, :Description

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, credentialid=nil, credentialname=nil, httpprotocoltype=nil, checktargetcertserror=nil, httpprotocolversion=nil, targetpath=nil, targethosts=nil, modelservicecount=nil, createtime=nil, lastupdatetime=nil, modelid=nil, description=nil)
          @AppID = appid
          @Uin = uin
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @CredentialID = credentialid
          @CredentialName = credentialname
          @HttpProtocolType = httpprotocoltype
          @CheckTargetCertsError = checktargetcertserror
          @HttpProtocolVersion = httpprotocolversion
          @TargetPath = targetpath
          @TargetHosts = targethosts
          @ModelServiceCount = modelservicecount
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @ModelID = modelid
          @Description = description
        end

        def deserialize(params)
          @AppID = params['AppID']
          @Uin = params['Uin']
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @CredentialID = params['CredentialID']
          @CredentialName = params['CredentialName']
          @HttpProtocolType = params['HttpProtocolType']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @HttpProtocolVersion = params['HttpProtocolVersion']
          @TargetPath = params['TargetPath']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @ModelServiceCount = params['ModelServiceCount']
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @ModelID = params['ModelID']
          @Description = params['Description']
        end
      end

      # DescribeModelService请求参数结构体
      class DescribeModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例
        # @type InstanceID: String
        # @param ID: 模型服务ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DescribeModelService返回参数结构体
      class DescribeModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果集
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeModelServiceResponseVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeModelServiceResponseVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询模型服务详情的响应
      class DescribeModelServiceResponseVO < TencentCloud::Common::AbstractModel
        # @param AppID: <p>腾讯云AppID</p>
        # @type AppID: Integer
        # @param Uin: <p>腾讯云Uin</p>
        # @type Uin: String
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param ID: <p>模型ID</p>
        # @type ID: String
        # @param Name: <p>模型名称</p>
        # @type Name: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param PubPath: <p>访问路径</p>
        # @type PubPath: String
        # @param PathMatchType: <p>路径匹配方式：absolute，prefix，regex</p>
        # @type PathMatchType: String
        # @param TargetModels: <p>目标模型列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetModels: Array
        # @param ModelNames: <p>模板模型的名称列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelNames: Array
        # @param InvokeLimitConfigStatus: <p>是否开启限流</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>限流配置</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param LastUpdateTime: <p>最后修改时间</p>
        # @type LastUpdateTime: String
        # @param TokenLimitStatus: <p>是否开启token控制</p>
        # @type TokenLimitStatus: Boolean
        # @param TokenLimitConfig: <p>token控制</p>
        # @type TokenLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.TokenLimitConfigDTO`
        # @param TmsStatus: <p>是否开启tms配置</p>
        # @type TmsStatus: Boolean
        # @param TmsConfig: <p>tms配置</p>
        # @type TmsConfig: :class:`Tencentcloud::Apis.v20240801.models.TmsConfigDTO`
        # @param IpWhiteStatus: <p>是否开启IP白名单</p>
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteList: <p>IP白名单列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpWhiteList: Array
        # @param IpBlackStatus: <p>是否开启IP黑名单</p>
        # @type IpBlackStatus: Boolean
        # @param IpBlackList: <p>IP黑名单列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpBlackList: Array
        # @param PluginConfigs: <p>插件配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginConfigs: Array
        # @param Timeout: <p>超时配置，单位秒</p>
        # @type Timeout: Integer
        # @param Status: <p>状态：normal，disabled</p>
        # @type Status: String
        # @param RelateAgentAppNum: <p>关联应用数</p>
        # @type RelateAgentAppNum: Integer
        # @param Url: <p>请求路径</p>
        # @type Url: String
        # @param PromptModerateStatus: <p>是否开启提示词安全检测</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PromptModerateStatus: Boolean
        # @param PromptModerateConfig: <p>提示词安全检测配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PromptModerateConfig: :class:`Tencentcloud::Apis.v20240801.models.PromptModerateConfigDTO`
        # @param SensitiveDataCheckStatus: <p>是否开启敏感数据检测</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SensitiveDataCheckStatus: Boolean
        # @param SensitiveDataCheckConfig: <p>敏感数据检测配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SensitiveDataCheckConfig: :class:`Tencentcloud::Apis.v20240801.models.SensitiveDataCheckConfigDTO`
        # @param TargetSelect: <p>负载方式</p><p>枚举值：</p><ul><li>random： 随机</li><li>consistentHash： 会话保持</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSelect: String
        # @param FindHostKeyMethod: <p>会话判断方式</p><p>枚举值：</p><ul><li>fromClientIP： 从客户端IP判断</li><li>fromHeader： 从请求header判断</li><li>autoDetect： 自动探测</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FindHostKeyMethod: String
        # @param HostKeyHeaderName: <p>会话判断header名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostKeyHeaderName: String
        # @param FallbackStatus: <p>是否开启备份模型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FallbackStatus: Boolean
        # @param FallbackModels: <p>备份模型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FallbackModels: Array
        # @param ModelProtocol: <p>模型类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelProtocol: String
        # @param RawCustomModelProtocolConfig: <p>自定义模型协议配置</p>
        # @type RawCustomModelProtocolConfig: String

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :Description, :PubPath, :PathMatchType, :TargetModels, :ModelNames, :InvokeLimitConfigStatus, :InvokeLimitConfig, :CreateTime, :LastUpdateTime, :TokenLimitStatus, :TokenLimitConfig, :TmsStatus, :TmsConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackStatus, :IpBlackList, :PluginConfigs, :Timeout, :Status, :RelateAgentAppNum, :Url, :PromptModerateStatus, :PromptModerateConfig, :SensitiveDataCheckStatus, :SensitiveDataCheckConfig, :TargetSelect, :FindHostKeyMethod, :HostKeyHeaderName, :FallbackStatus, :FallbackModels, :ModelProtocol, :RawCustomModelProtocolConfig

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, description=nil, pubpath=nil, pathmatchtype=nil, targetmodels=nil, modelnames=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, createtime=nil, lastupdatetime=nil, tokenlimitstatus=nil, tokenlimitconfig=nil, tmsstatus=nil, tmsconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblackstatus=nil, ipblacklist=nil, pluginconfigs=nil, timeout=nil, status=nil, relateagentappnum=nil, url=nil, promptmoderatestatus=nil, promptmoderateconfig=nil, sensitivedatacheckstatus=nil, sensitivedatacheckconfig=nil, targetselect=nil, findhostkeymethod=nil, hostkeyheadername=nil, fallbackstatus=nil, fallbackmodels=nil, modelprotocol=nil, rawcustommodelprotocolconfig=nil)
          @AppID = appid
          @Uin = uin
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @Description = description
          @PubPath = pubpath
          @PathMatchType = pathmatchtype
          @TargetModels = targetmodels
          @ModelNames = modelnames
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @TokenLimitStatus = tokenlimitstatus
          @TokenLimitConfig = tokenlimitconfig
          @TmsStatus = tmsstatus
          @TmsConfig = tmsconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteList = ipwhitelist
          @IpBlackStatus = ipblackstatus
          @IpBlackList = ipblacklist
          @PluginConfigs = pluginconfigs
          @Timeout = timeout
          @Status = status
          @RelateAgentAppNum = relateagentappnum
          @Url = url
          @PromptModerateStatus = promptmoderatestatus
          @PromptModerateConfig = promptmoderateconfig
          @SensitiveDataCheckStatus = sensitivedatacheckstatus
          @SensitiveDataCheckConfig = sensitivedatacheckconfig
          @TargetSelect = targetselect
          @FindHostKeyMethod = findhostkeymethod
          @HostKeyHeaderName = hostkeyheadername
          @FallbackStatus = fallbackstatus
          @FallbackModels = fallbackmodels
          @ModelProtocol = modelprotocol
          @RawCustomModelProtocolConfig = rawcustommodelprotocolconfig
        end

        def deserialize(params)
          @AppID = params['AppID']
          @Uin = params['Uin']
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @Description = params['Description']
          @PubPath = params['PubPath']
          @PathMatchType = params['PathMatchType']
          unless params['TargetModels'].nil?
            @TargetModels = []
            params['TargetModels'].each do |i|
              targetmodeldto_tmp = TargetModelDTO.new
              targetmodeldto_tmp.deserialize(i)
              @TargetModels << targetmodeldto_tmp
            end
          end
          @ModelNames = params['ModelNames']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @TokenLimitStatus = params['TokenLimitStatus']
          unless params['TokenLimitConfig'].nil?
            @TokenLimitConfig = TokenLimitConfigDTO.new
            @TokenLimitConfig.deserialize(params['TokenLimitConfig'])
          end
          @TmsStatus = params['TmsStatus']
          unless params['TmsConfig'].nil?
            @TmsConfig = TmsConfigDTO.new
            @TmsConfig.deserialize(params['TmsConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          @IpWhiteList = params['IpWhiteList']
          @IpBlackStatus = params['IpBlackStatus']
          @IpBlackList = params['IpBlackList']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @Timeout = params['Timeout']
          @Status = params['Status']
          @RelateAgentAppNum = params['RelateAgentAppNum']
          @Url = params['Url']
          @PromptModerateStatus = params['PromptModerateStatus']
          unless params['PromptModerateConfig'].nil?
            @PromptModerateConfig = PromptModerateConfigDTO.new
            @PromptModerateConfig.deserialize(params['PromptModerateConfig'])
          end
          @SensitiveDataCheckStatus = params['SensitiveDataCheckStatus']
          unless params['SensitiveDataCheckConfig'].nil?
            @SensitiveDataCheckConfig = SensitiveDataCheckConfigDTO.new
            @SensitiveDataCheckConfig.deserialize(params['SensitiveDataCheckConfig'])
          end
          @TargetSelect = params['TargetSelect']
          @FindHostKeyMethod = params['FindHostKeyMethod']
          @HostKeyHeaderName = params['HostKeyHeaderName']
          @FallbackStatus = params['FallbackStatus']
          unless params['FallbackModels'].nil?
            @FallbackModels = []
            params['FallbackModels'].each do |i|
              targetmodeldto_tmp = TargetModelDTO.new
              targetmodeldto_tmp.deserialize(i)
              @FallbackModels << targetmodeldto_tmp
            end
          end
          @ModelProtocol = params['ModelProtocol']
          @RawCustomModelProtocolConfig = params['RawCustomModelProtocolConfig']
        end
      end

      # DescribeModelServices请求参数结构体
      class DescribeModelServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例</p>
        # @type InstanceID: String
        # @param Offset: <p>分页参数</p>
        # @type Offset: Integer
        # @param Limit: <p>分页限制</p>
        # @type Limit: Integer
        # @param IDs: <p>ID列表</p>
        # @type IDs: Array
        # @param NotIDs: <p>排除的ID列表</p>
        # @type NotIDs: Array
        # @param Status: <p>状态：normal，disabled</p>
        # @type Status: String
        # @param Keyword: <p>关键词</p>
        # @type Keyword: String
        # @param ModelID: <p>模型ID</p>
        # @type ModelID: String
        # @param Sort: <p>排序</p>
        # @type Sort: :class:`Tencentcloud::Apis.v20240801.models.DescribeModelServicesSort`
        # @param ModelProtocol: <p>模型类型，OpenAI或Anthropic</p>
        # @type ModelProtocol: String

        attr_accessor :InstanceID, :Offset, :Limit, :IDs, :NotIDs, :Status, :Keyword, :ModelID, :Sort, :ModelProtocol

        def initialize(instanceid=nil, offset=nil, limit=nil, ids=nil, notids=nil, status=nil, keyword=nil, modelid=nil, sort=nil, modelprotocol=nil)
          @InstanceID = instanceid
          @Offset = offset
          @Limit = limit
          @IDs = ids
          @NotIDs = notids
          @Status = status
          @Keyword = keyword
          @ModelID = modelid
          @Sort = sort
          @ModelProtocol = modelprotocol
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IDs = params['IDs']
          @NotIDs = params['NotIDs']
          @Status = params['Status']
          @Keyword = params['Keyword']
          @ModelID = params['ModelID']
          unless params['Sort'].nil?
            @Sort = DescribeModelServicesSort.new
            @Sort.deserialize(params['Sort'])
          end
          @ModelProtocol = params['ModelProtocol']
        end
      end

      # DescribeModelServices返回参数结构体
      class DescribeModelServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>结果集</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeModelServicesResponseVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeModelServicesResponseVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询模型列表的响应
      class DescribeModelServicesResponseVO < TencentCloud::Common::AbstractModel
        # @param Total: 条目
        # @type Total: Integer
        # @param Items: 列表
        # @type Items: Array

        attr_accessor :Total, :Items

        def initialize(total=nil, items=nil)
          @Total = total
          @Items = items
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describemodelserviceresponsevo_tmp = DescribeModelServiceResponseVO.new
              describemodelserviceresponsevo_tmp.deserialize(i)
              @Items << describemodelserviceresponsevo_tmp
            end
          end
        end
      end

      # 查询模型服务列表的排序
      class DescribeModelServicesSort < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param LastUpdateTime: 最后修改时间
        # @type LastUpdateTime: Integer
        # @param Name: 模型名称
        # @type Name: Integer
        # @param Status: 状态
        # @type Status: Integer

        attr_accessor :CreateTime, :LastUpdateTime, :Name, :Status

        def initialize(createtime=nil, lastupdatetime=nil, name=nil, status=nil)
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @Name = name
          @Status = status
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @Name = params['Name']
          @Status = params['Status']
        end
      end

      # DescribeModels请求参数结构体
      class DescribeModelsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例
        # @type InstanceID: String
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Limit: 分页限制
        # @type Limit: Integer
        # @param IDs: ID列表
        # @type IDs: Array
        # @param NotIDs: 排除的ID列表
        # @type NotIDs: Array
        # @param CredentialID: 凭据ID
        # @type CredentialID: String
        # @param Keyword: 关键词
        # @type Keyword: String
        # @param Sort: 排序
        # @type Sort: :class:`Tencentcloud::Apis.v20240801.models.DescribeModelsSort`

        attr_accessor :InstanceID, :Offset, :Limit, :IDs, :NotIDs, :CredentialID, :Keyword, :Sort

        def initialize(instanceid=nil, offset=nil, limit=nil, ids=nil, notids=nil, credentialid=nil, keyword=nil, sort=nil)
          @InstanceID = instanceid
          @Offset = offset
          @Limit = limit
          @IDs = ids
          @NotIDs = notids
          @CredentialID = credentialid
          @Keyword = keyword
          @Sort = sort
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IDs = params['IDs']
          @NotIDs = params['NotIDs']
          @CredentialID = params['CredentialID']
          @Keyword = params['Keyword']
          unless params['Sort'].nil?
            @Sort = DescribeModelsSort.new
            @Sort.deserialize(params['Sort'])
          end
        end
      end

      # DescribeModels返回参数结构体
      class DescribeModelsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果集
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.DescribeModelsResponseVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeModelsResponseVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询模型列表的响应
      class DescribeModelsResponseVO < TencentCloud::Common::AbstractModel
        # @param Total: 条目
        # @type Total: Integer
        # @param Items: 列表
        # @type Items: Array

        attr_accessor :Total, :Items

        def initialize(total=nil, items=nil)
          @Total = total
          @Items = items
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describemodelresponsevo_tmp = DescribeModelResponseVO.new
              describemodelresponsevo_tmp.deserialize(i)
              @Items << describemodelresponsevo_tmp
            end
          end
        end
      end

      # DescribeModelsSort
      class DescribeModelsSort < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param LastUpdateTime: 最后修改时间
        # @type LastUpdateTime: Integer
        # @param Name: 模型名称
        # @type Name: Integer

        attr_accessor :CreateTime, :LastUpdateTime, :Name

        def initialize(createtime=nil, lastupdatetime=nil, name=nil)
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @Name = name
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @Name = params['Name']
        end
      end

      # DescribeService请求参数结构体
      class DescribeServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 业务ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DescribeService返回参数结构体
      class DescribeServiceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeServices请求参数结构体
      class DescribeServicesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeServices返回参数结构体
      class DescribeServicesResponse < TencentCloud::Common::AbstractModel
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

      # FieldValue结构体
      class FieldValueDTO < TencentCloud::Common::AbstractModel
        # @param Field: <p>属性</p>
        # @type Field: String
        # @param Value: <p>值</p>
        # @type Value: String

        attr_accessor :Field, :Value

        def initialize(field=nil, value=nil)
          @Field = field
          @Value = value
        end

        def deserialize(params)
          @Field = params['Field']
          @Value = params['Value']
        end
      end

      # HealthCheckConfigDTO
      class HealthCheckConfigDTO < TencentCloud::Common::AbstractModel
        # @param HealthCheckPath: 健康检查路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckPath: String
        # @param ValidHealthCheckStatusCode: 状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidHealthCheckStatusCode: Array
        # @param HealthCheckTimeout: 请求的超时时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckTimeout: Integer

        attr_accessor :HealthCheckPath, :ValidHealthCheckStatusCode, :HealthCheckTimeout

        def initialize(healthcheckpath=nil, validhealthcheckstatuscode=nil, healthchecktimeout=nil)
          @HealthCheckPath = healthcheckpath
          @ValidHealthCheckStatusCode = validhealthcheckstatuscode
          @HealthCheckTimeout = healthchecktimeout
        end

        def deserialize(params)
          @HealthCheckPath = params['HealthCheckPath']
          @ValidHealthCheckStatusCode = params['ValidHealthCheckStatusCode']
          @HealthCheckTimeout = params['HealthCheckTimeout']
        end
      end

      # IDNameVO
      class IDNameVO < TencentCloud::Common::AbstractModel
        # @param ID: 业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :ID, :Name

        def initialize(id=nil, name=nil)
          @ID = id
          @Name = name
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
        end
      end

      # InvokeLimitConfigDTO
      class InvokeLimitConfigDTO < TencentCloud::Common::AbstractModel
        # @param Type: Type类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param TokenBucketMaxNum: 令牌桶最大容量

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenBucketMaxNum: Integer
        # @param TokenBucketRate: 令牌生成速率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenBucketRate: Integer
        # @param FunnelMaxNum: 漏斗容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunnelMaxNum: Integer
        # @param FunnelRate: 漏嘴流速
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunnelRate: Integer
        # @param SlidingWindowMaxNum: 滑动窗口最大请求数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlidingWindowMaxNum: Integer
        # @param SlidingWindowSize: 滑动窗口长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlidingWindowSize: Integer
        # @param TimeWindow: 时间窗口最大请求数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeWindow: Integer
        # @param TimeWindowInterval: 时间窗口长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeWindowInterval: Integer
        # @param Timeout: 请求的超时时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer

        attr_accessor :Type, :TokenBucketMaxNum, :TokenBucketRate, :FunnelMaxNum, :FunnelRate, :SlidingWindowMaxNum, :SlidingWindowSize, :TimeWindow, :TimeWindowInterval, :Timeout

        def initialize(type=nil, tokenbucketmaxnum=nil, tokenbucketrate=nil, funnelmaxnum=nil, funnelrate=nil, slidingwindowmaxnum=nil, slidingwindowsize=nil, timewindow=nil, timewindowinterval=nil, timeout=nil)
          @Type = type
          @TokenBucketMaxNum = tokenbucketmaxnum
          @TokenBucketRate = tokenbucketrate
          @FunnelMaxNum = funnelmaxnum
          @FunnelRate = funnelrate
          @SlidingWindowMaxNum = slidingwindowmaxnum
          @SlidingWindowSize = slidingwindowsize
          @TimeWindow = timewindow
          @TimeWindowInterval = timewindowinterval
          @Timeout = timeout
        end

        def deserialize(params)
          @Type = params['Type']
          @TokenBucketMaxNum = params['TokenBucketMaxNum']
          @TokenBucketRate = params['TokenBucketRate']
          @FunnelMaxNum = params['FunnelMaxNum']
          @FunnelRate = params['FunnelRate']
          @SlidingWindowMaxNum = params['SlidingWindowMaxNum']
          @SlidingWindowSize = params['SlidingWindowSize']
          @TimeWindow = params['TimeWindow']
          @TimeWindowInterval = params['TimeWindowInterval']
          @Timeout = params['Timeout']
        end
      end

      # ip黑白名单配置
      class IpConfig < TencentCloud::Common::AbstractModel
        # @param Ips: ip数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ips: Array
        # @param EffectType: 生效类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectType: String
        # @param EffectTimes: 生效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectTimes: Array
        # @param Comment: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String

        attr_accessor :Ips, :EffectType, :EffectTimes, :Comment

        def initialize(ips=nil, effecttype=nil, effecttimes=nil, comment=nil)
          @Ips = ips
          @EffectType = effecttype
          @EffectTimes = effecttimes
          @Comment = comment
        end

        def deserialize(params)
          @Ips = params['Ips']
          @EffectType = params['EffectType']
          unless params['EffectTimes'].nil?
            @EffectTimes = []
            params['EffectTimes'].each do |i|
              startendtime_tmp = StartEndTime.new
              startendtime_tmp.deserialize(i)
              @EffectTimes << startendtime_tmp
            end
          end
          @Comment = params['Comment']
        end
      end

      # 限流窗口配置
      class LimitWindowsDTO < TencentCloud::Common::AbstractModel
        # @param Interval: 时间窗口，分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interval: Integer
        # @param Limit: 累计上限，k
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer

        attr_accessor :Interval, :Limit

        def initialize(interval=nil, limit=nil)
          @Interval = interval
          @Limit = limit
        end

        def deserialize(params)
          @Interval = params['Interval']
          @Limit = params['Limit']
        end
      end

      # 出入参说明
      class McpInputOutSchema < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Properties: 属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: String
        # @param Required: 必填字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Required: Array
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Type, :Properties, :Required, :Description

        def initialize(type=nil, properties=nil, required=nil, description=nil)
          @Type = type
          @Properties = properties
          @Required = required
          @Description = description
        end

        def deserialize(params)
          @Type = params['Type']
          @Properties = params['Properties']
          @Required = params['Required']
          @Description = params['Description']
        end
      end

      # mcp安全规则
      class McpSecurityRule < TencentCloud::Common::AbstractModel
        # @param ID: 规则ID
        # @type ID: String
        # @param Status: 状态
        # @type Status: String
        # @param Act: 处置动作
        # @type Act: String

        attr_accessor :ID, :Status, :Act

        def initialize(id=nil, status=nil, act=nil)
          @ID = id
          @Status = status
          @Act = act
        end

        def deserialize(params)
          @ID = params['ID']
          @Status = params['Status']
          @Act = params['Act']
        end
      end

      # 绑定的安全规则列表
      class McpSecurityRulesVO < TencentCloud::Common::AbstractModel
        # @param ID: 规则ID
        # @type ID: String
        # @param Type: 规则类型
        # @type Type: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Description: 规则描述
        # @type Description: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param VersionNumber: 版本号
        # @type VersionNumber: String
        # @param Status: 状态开关
        # @type Status: String
        # @param Act: 当前选择的处置动作
        # @type Act: String
        # @param SupportActs: 支持的处置动作
        # @type SupportActs: Array
        # @param BodyType: 内容类型
        # @type BodyType: String
        # @param IconType: icon类型
        # @type IconType: String

        attr_accessor :ID, :Type, :Name, :Description, :RiskLevel, :VersionNumber, :Status, :Act, :SupportActs, :BodyType, :IconType

        def initialize(id=nil, type=nil, name=nil, description=nil, risklevel=nil, versionnumber=nil, status=nil, act=nil, supportacts=nil, bodytype=nil, icontype=nil)
          @ID = id
          @Type = type
          @Name = name
          @Description = description
          @RiskLevel = risklevel
          @VersionNumber = versionnumber
          @Status = status
          @Act = act
          @SupportActs = supportacts
          @BodyType = bodytype
          @IconType = icontype
        end

        def deserialize(params)
          @ID = params['ID']
          @Type = params['Type']
          @Name = params['Name']
          @Description = params['Description']
          @RiskLevel = params['RiskLevel']
          @VersionNumber = params['VersionNumber']
          @Status = params['Status']
          @Act = params['Act']
          @SupportActs = params['SupportActs']
          @BodyType = params['BodyType']
          @IconType = params['IconType']
        end
      end

      # mcp工具
      class McpTool < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param InputSchema: 入参参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputSchema: :class:`Tencentcloud::Apis.v20240801.models.McpInputOutSchema`
        # @param Annotations: 注释
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Annotations: :class:`Tencentcloud::Apis.v20240801.models.McpToolAnnotation`
        # @param OutputSchema: 出参参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputSchema: :class:`Tencentcloud::Apis.v20240801.models.McpInputOutSchema`

        attr_accessor :Name, :Description, :InputSchema, :Annotations, :OutputSchema

        def initialize(name=nil, description=nil, inputschema=nil, annotations=nil, outputschema=nil)
          @Name = name
          @Description = description
          @InputSchema = inputschema
          @Annotations = annotations
          @OutputSchema = outputschema
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          unless params['InputSchema'].nil?
            @InputSchema = McpInputOutSchema.new
            @InputSchema.deserialize(params['InputSchema'])
          end
          unless params['Annotations'].nil?
            @Annotations = McpToolAnnotation.new
            @Annotations.deserialize(params['Annotations'])
          end
          unless params['OutputSchema'].nil?
            @OutputSchema = McpInputOutSchema.new
            @OutputSchema.deserialize(params['OutputSchema'])
          end
        end
      end

      # mcp工具注解
      class McpToolAnnotation < TencentCloud::Common::AbstractModel
        # @param Title: title for the tool
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param ReadOnlyHint: If true, the tool does not modify its environment
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnlyHint: Boolean
        # @param DestructiveHint: If true, the tool may perform destructive updates
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestructiveHint: Boolean
        # @param IdempotentHint: If true, repeated calls with same args have no additional effect
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdempotentHint: Boolean
        # @param OpenWorldHint: If true, tool interacts with external entities
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenWorldHint: Boolean

        attr_accessor :Title, :ReadOnlyHint, :DestructiveHint, :IdempotentHint, :OpenWorldHint

        def initialize(title=nil, readonlyhint=nil, destructivehint=nil, idempotenthint=nil, openworldhint=nil)
          @Title = title
          @ReadOnlyHint = readonlyhint
          @DestructiveHint = destructivehint
          @IdempotentHint = idempotenthint
          @OpenWorldHint = openworldhint
        end

        def deserialize(params)
          @Title = params['Title']
          @ReadOnlyHint = params['ReadOnlyHint']
          @DestructiveHint = params['DestructiveHint']
          @IdempotentHint = params['IdempotentHint']
          @OpenWorldHint = params['OpenWorldHint']
        end
      end

      # Mcp的访问URL
      class McpUrlObj < TencentCloud::Common::AbstractModel
        # @param SSEUrl: sse访问URL
        # @type SSEUrl: String
        # @param StreamAbleUrl: streamable访问URL
        # @type StreamAbleUrl: String

        attr_accessor :SSEUrl, :StreamAbleUrl

        def initialize(sseurl=nil, streamableurl=nil)
          @SSEUrl = sseurl
          @StreamAbleUrl = streamableurl
        end

        def deserialize(params)
          @SSEUrl = params['SSEUrl']
          @StreamAbleUrl = params['StreamAbleUrl']
        end
      end

      # ModifyAgentAppModelServices请求参数结构体
      class ModifyAgentAppModelServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String
        # @param ModelServices: 关联的model service
        # @type ModelServices: Array

        attr_accessor :InstanceID, :ID, :ModelServices

        def initialize(instanceid=nil, id=nil, modelservices=nil)
          @InstanceID = instanceid
          @ID = id
          @ModelServices = modelservices
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          unless params['ModelServices'].nil?
            @ModelServices = []
            params['ModelServices'].each do |i|
              agentappmodelservicedto_tmp = AgentAppModelServiceDTO.new
              agentappmodelservicedto_tmp.deserialize(i)
              @ModelServices << agentappmodelservicedto_tmp
            end
          end
        end
      end

      # ModifyAgentAppModelServices返回参数结构体
      class ModifyAgentAppModelServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: app id
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyAgentApp请求参数结构体
      class ModifyAgentAppRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param ID: <p>应用ID</p>
        # @type ID: String
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param OAuth2ResourceServerID: <p>OAuth2资源服务器ID</p>
        # @type OAuth2ResourceServerID: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param ConnectorIDs: <p>凭据ID</p>
        # @type ConnectorIDs: Array

        attr_accessor :InstanceID, :ID, :Name, :OAuth2ResourceServerID, :Description, :ConnectorIDs

        def initialize(instanceid=nil, id=nil, name=nil, oauth2resourceserverid=nil, description=nil, connectorids=nil)
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @OAuth2ResourceServerID = oauth2resourceserverid
          @Description = description
          @ConnectorIDs = connectorids
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @OAuth2ResourceServerID = params['OAuth2ResourceServerID']
          @Description = params['Description']
          @ConnectorIDs = params['ConnectorIDs']
        end
      end

      # ModifyAgentApp返回参数结构体
      class ModifyAgentAppResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>app id</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyAgentCredential请求参数结构体
      class ModifyAgentCredentialRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyAgentCredential返回参数结构体
      class ModifyAgentCredentialResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMcpServer请求参数结构体
      class ModifyMcpServerRequest < TencentCloud::Common::AbstractModel
        # @param ID: <p>mcp server ID</p>
        # @type ID: String
        # @param Mode: <p>模式：proxy代理模式； wrap封装模式；</p>
        # @type Mode: String
        # @param McpVersion: <p>版本号：2024-11-05 2025-03-26</p>
        # @type McpVersion: String
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param WrapServices: <p>封装服务列表</p>
        # @type WrapServices: Array
        # @param TargetSelect: <p>负载方式，robin random consistentHash</p>
        # @type TargetSelect: String
        # @param TargetHosts: <p>目标服务器</p>
        # @type TargetHosts: Array
        # @param HttpProtocolType: <p>后端协议：http https</p>
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: <p>证书检查</p>
        # @type CheckTargetCertsError: Boolean
        # @param TargetPath: <p>目标路径</p>
        # @type TargetPath: String
        # @param InvokeLimitConfigStatus: <p>流量控制开启状态</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>流量控制配置</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param IpWhiteStatus: <p>IP白名单开启状态</p>
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteConfig: <p>IP白名单配置</p>
        # @type IpWhiteConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param IpBlackStatus: <p>IP黑名单开启状态</p>
        # @type IpBlackStatus: Boolean
        # @param IpBlackConfig: <p>IP黑名单配置</p>
        # @type IpBlackConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param TargetHostType: <p>目标Host类型 0 默认 1 vpc</p>
        # @type TargetHostType: Integer
        # @param CustomHttpHost: <p>自定义host</p>
        # @type CustomHttpHost: String
        # @param HttpHostType: <p>Http 请求host类型：useRequestHost 保持源请求；host targetHost 修正为源站host； customHost 自定义host</p>
        # @type HttpHostType: String
        # @param Timeout: <p>请求的超时时间</p>
        # @type Timeout: Integer
        # @param McpSecurityRules: <p>安全规则集</p>
        # @type McpSecurityRules: Array
        # @param ToolConfigs: <p>工具集配置（openapi可能会用到）</p>
        # @type ToolConfigs: Array
        # @param WrapPaasID: <p>封装的API分组ID</p>
        # @type WrapPaasID: String
        # @param PluginConfigs: <p>插件配置</p>
        # @type PluginConfigs: Array
        # @param IgnoreHealthCheck: <p>是否忽略健康检查</p>
        # @type IgnoreHealthCheck: Boolean

        attr_accessor :ID, :Mode, :McpVersion, :InstanceID, :Name, :Description, :WrapServices, :TargetSelect, :TargetHosts, :HttpProtocolType, :CheckTargetCertsError, :TargetPath, :InvokeLimitConfigStatus, :InvokeLimitConfig, :IpWhiteStatus, :IpWhiteConfig, :IpBlackStatus, :IpBlackConfig, :TargetHostType, :CustomHttpHost, :HttpHostType, :Timeout, :McpSecurityRules, :ToolConfigs, :WrapPaasID, :PluginConfigs, :IgnoreHealthCheck

        def initialize(id=nil, mode=nil, mcpversion=nil, instanceid=nil, name=nil, description=nil, wrapservices=nil, targetselect=nil, targethosts=nil, httpprotocoltype=nil, checktargetcertserror=nil, targetpath=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, ipwhitestatus=nil, ipwhiteconfig=nil, ipblackstatus=nil, ipblackconfig=nil, targethosttype=nil, customhttphost=nil, httphosttype=nil, timeout=nil, mcpsecurityrules=nil, toolconfigs=nil, wrappaasid=nil, pluginconfigs=nil, ignorehealthcheck=nil)
          @ID = id
          @Mode = mode
          @McpVersion = mcpversion
          @InstanceID = instanceid
          @Name = name
          @Description = description
          @WrapServices = wrapservices
          @TargetSelect = targetselect
          @TargetHosts = targethosts
          @HttpProtocolType = httpprotocoltype
          @CheckTargetCertsError = checktargetcertserror
          @TargetPath = targetpath
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteConfig = ipwhiteconfig
          @IpBlackStatus = ipblackstatus
          @IpBlackConfig = ipblackconfig
          @TargetHostType = targethosttype
          @CustomHttpHost = customhttphost
          @HttpHostType = httphosttype
          @Timeout = timeout
          @McpSecurityRules = mcpsecurityrules
          @ToolConfigs = toolconfigs
          @WrapPaasID = wrappaasid
          @PluginConfigs = pluginconfigs
          @IgnoreHealthCheck = ignorehealthcheck
        end

        def deserialize(params)
          @ID = params['ID']
          @Mode = params['Mode']
          @McpVersion = params['McpVersion']
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @Description = params['Description']
          @WrapServices = params['WrapServices']
          @TargetSelect = params['TargetSelect']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @HttpProtocolType = params['HttpProtocolType']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @TargetPath = params['TargetPath']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          unless params['IpWhiteConfig'].nil?
            @IpWhiteConfig = IpConfig.new
            @IpWhiteConfig.deserialize(params['IpWhiteConfig'])
          end
          @IpBlackStatus = params['IpBlackStatus']
          unless params['IpBlackConfig'].nil?
            @IpBlackConfig = IpConfig.new
            @IpBlackConfig.deserialize(params['IpBlackConfig'])
          end
          @TargetHostType = params['TargetHostType']
          @CustomHttpHost = params['CustomHttpHost']
          @HttpHostType = params['HttpHostType']
          @Timeout = params['Timeout']
          unless params['McpSecurityRules'].nil?
            @McpSecurityRules = []
            params['McpSecurityRules'].each do |i|
              mcpsecurityrule_tmp = McpSecurityRule.new
              mcpsecurityrule_tmp.deserialize(i)
              @McpSecurityRules << mcpsecurityrule_tmp
            end
          end
          unless params['ToolConfigs'].nil?
            @ToolConfigs = []
            params['ToolConfigs'].each do |i|
              toolconfigdto_tmp = ToolConfigDTO.new
              toolconfigdto_tmp.deserialize(i)
              @ToolConfigs << toolconfigdto_tmp
            end
          end
          @WrapPaasID = params['WrapPaasID']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @IgnoreHealthCheck = params['IgnoreHealthCheck']
        end
      end

      # ModifyMcpServer返回参数结构体
      class ModifyMcpServerResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>mcp server ID</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyModel请求参数结构体
      class ModifyModelRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例</p>
        # @type InstanceID: String
        # @param ID: <p>模型ID</p>
        # @type ID: String
        # @param Name: <p>模型名称</p>
        # @type Name: String
        # @param HttpProtocolType: <p>协议类型：http/https</p>
        # @type HttpProtocolType: String
        # @param TargetPath: <p>目标路径</p>
        # @type TargetPath: String
        # @param TargetHosts: <p>目标服务器</p>
        # @type TargetHosts: Array
        # @param CredentialID: <p>凭据ID</p>
        # @type CredentialID: String
        # @param CheckTargetCertsError: <p>https时，是否检查证书合法</p>
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: <p>http协议版本：1.1/2.0</p>
        # @type HttpProtocolVersion: String
        # @param ModelID: <p>model ID</p>
        # @type ModelID: String
        # @param Description: <p>描述</p>
        # @type Description: String

        attr_accessor :InstanceID, :ID, :Name, :HttpProtocolType, :TargetPath, :TargetHosts, :CredentialID, :CheckTargetCertsError, :HttpProtocolVersion, :ModelID, :Description

        def initialize(instanceid=nil, id=nil, name=nil, httpprotocoltype=nil, targetpath=nil, targethosts=nil, credentialid=nil, checktargetcertserror=nil, httpprotocolversion=nil, modelid=nil, description=nil)
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @HttpProtocolType = httpprotocoltype
          @TargetPath = targetpath
          @TargetHosts = targethosts
          @CredentialID = credentialid
          @CheckTargetCertsError = checktargetcertserror
          @HttpProtocolVersion = httpprotocolversion
          @ModelID = modelid
          @Description = description
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @HttpProtocolType = params['HttpProtocolType']
          @TargetPath = params['TargetPath']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @CredentialID = params['CredentialID']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @HttpProtocolVersion = params['HttpProtocolVersion']
          @ModelID = params['ModelID']
          @Description = params['Description']
        end
      end

      # ModifyModel返回参数结构体
      class ModifyModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>结果集</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyModelService请求参数结构体
      class ModifyModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例</p>
        # @type InstanceID: String
        # @param ID: <p>模型服务ID</p>
        # @type ID: String
        # @param Name: <p>模型服务名称</p>
        # @type Name: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param TargetModels: <p>模板模型列表</p>
        # @type TargetModels: Array
        # @param InvokeLimitConfigStatus: <p>是否开启限流</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>限流配置</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param TokenLimitStatus: <p>是否开启token控制</p>
        # @type TokenLimitStatus: Boolean
        # @param TokenLimitConfig: <p>token控制</p>
        # @type TokenLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.TokenLimitConfigDTO`
        # @param TmsStatus: <p>是否开启内容安全</p>
        # @type TmsStatus: Boolean
        # @param TmsConfig: <p>内容安全配置</p>
        # @type TmsConfig: :class:`Tencentcloud::Apis.v20240801.models.TmsConfigDTO`
        # @param IpWhiteStatus: <p>是否开启IP白名单</p>
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteList: <p>IP白名单</p>
        # @type IpWhiteList: Array
        # @param IpBlackStatus: <p>是否开启IP黑名单</p>
        # @type IpBlackStatus: Boolean
        # @param IpBlackList: <p>IP黑名单</p>
        # @type IpBlackList: Array
        # @param PluginConfigs: <p>插件配置</p>
        # @type PluginConfigs: Array
        # @param Timeout: <p>超时配置，秒</p>
        # @type Timeout: Integer
        # @param PromptModerateStatus: <p>是否开启提示词安全检测配置</p>
        # @type PromptModerateStatus: Boolean
        # @param PromptModerateConfig: <p>提示词安全检测配置</p>
        # @type PromptModerateConfig: :class:`Tencentcloud::Apis.v20240801.models.PromptModerateConfigDTO`
        # @param SensitiveDataCheckStatus: <p>是否开启敏感数据检测</p>
        # @type SensitiveDataCheckStatus: Boolean
        # @param SensitiveDataCheckConfig: <p>敏感数据检测配置</p>
        # @type SensitiveDataCheckConfig: :class:`Tencentcloud::Apis.v20240801.models.SensitiveDataCheckConfigDTO`
        # @param TargetSelect: <p>负载方式</p><p>枚举值：</p><ul><li>random： 随机</li><li>consistentHash： 会话保持</li></ul>
        # @type TargetSelect: String
        # @param FindHostKeyMethod: <p>会话判断方式</p><p>枚举值：</p><ul><li>fromClientIP： 从客户端IP判断</li><li>fromHeader： 从请求header判断</li><li>autoDetect： 自动探测</li></ul>
        # @type FindHostKeyMethod: String
        # @param HostKeyHeaderName: <p>会话判断header名称</p>
        # @type HostKeyHeaderName: String
        # @param FallbackStatus: <p>是否开启备份模型</p>
        # @type FallbackStatus: Boolean
        # @param FallbackModels: <p>备份模型</p>
        # @type FallbackModels: Array
        # @param ModelProtocol: <p>模型类型</p>
        # @type ModelProtocol: String
        # @param RawCustomModelProtocolConfig: <p>自定义模型协议配置</p>
        # @type RawCustomModelProtocolConfig: String

        attr_accessor :InstanceID, :ID, :Name, :Description, :TargetModels, :InvokeLimitConfigStatus, :InvokeLimitConfig, :TokenLimitStatus, :TokenLimitConfig, :TmsStatus, :TmsConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackStatus, :IpBlackList, :PluginConfigs, :Timeout, :PromptModerateStatus, :PromptModerateConfig, :SensitiveDataCheckStatus, :SensitiveDataCheckConfig, :TargetSelect, :FindHostKeyMethod, :HostKeyHeaderName, :FallbackStatus, :FallbackModels, :ModelProtocol, :RawCustomModelProtocolConfig

        def initialize(instanceid=nil, id=nil, name=nil, description=nil, targetmodels=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, tokenlimitstatus=nil, tokenlimitconfig=nil, tmsstatus=nil, tmsconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblackstatus=nil, ipblacklist=nil, pluginconfigs=nil, timeout=nil, promptmoderatestatus=nil, promptmoderateconfig=nil, sensitivedatacheckstatus=nil, sensitivedatacheckconfig=nil, targetselect=nil, findhostkeymethod=nil, hostkeyheadername=nil, fallbackstatus=nil, fallbackmodels=nil, modelprotocol=nil, rawcustommodelprotocolconfig=nil)
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @Description = description
          @TargetModels = targetmodels
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @TokenLimitStatus = tokenlimitstatus
          @TokenLimitConfig = tokenlimitconfig
          @TmsStatus = tmsstatus
          @TmsConfig = tmsconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteList = ipwhitelist
          @IpBlackStatus = ipblackstatus
          @IpBlackList = ipblacklist
          @PluginConfigs = pluginconfigs
          @Timeout = timeout
          @PromptModerateStatus = promptmoderatestatus
          @PromptModerateConfig = promptmoderateconfig
          @SensitiveDataCheckStatus = sensitivedatacheckstatus
          @SensitiveDataCheckConfig = sensitivedatacheckconfig
          @TargetSelect = targetselect
          @FindHostKeyMethod = findhostkeymethod
          @HostKeyHeaderName = hostkeyheadername
          @FallbackStatus = fallbackstatus
          @FallbackModels = fallbackmodels
          @ModelProtocol = modelprotocol
          @RawCustomModelProtocolConfig = rawcustommodelprotocolconfig
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @Description = params['Description']
          unless params['TargetModels'].nil?
            @TargetModels = []
            params['TargetModels'].each do |i|
              targetmodeldto_tmp = TargetModelDTO.new
              targetmodeldto_tmp.deserialize(i)
              @TargetModels << targetmodeldto_tmp
            end
          end
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @TokenLimitStatus = params['TokenLimitStatus']
          unless params['TokenLimitConfig'].nil?
            @TokenLimitConfig = TokenLimitConfigDTO.new
            @TokenLimitConfig.deserialize(params['TokenLimitConfig'])
          end
          @TmsStatus = params['TmsStatus']
          unless params['TmsConfig'].nil?
            @TmsConfig = TmsConfigDTO.new
            @TmsConfig.deserialize(params['TmsConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          @IpWhiteList = params['IpWhiteList']
          @IpBlackStatus = params['IpBlackStatus']
          @IpBlackList = params['IpBlackList']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @Timeout = params['Timeout']
          @PromptModerateStatus = params['PromptModerateStatus']
          unless params['PromptModerateConfig'].nil?
            @PromptModerateConfig = PromptModerateConfigDTO.new
            @PromptModerateConfig.deserialize(params['PromptModerateConfig'])
          end
          @SensitiveDataCheckStatus = params['SensitiveDataCheckStatus']
          unless params['SensitiveDataCheckConfig'].nil?
            @SensitiveDataCheckConfig = SensitiveDataCheckConfigDTO.new
            @SensitiveDataCheckConfig.deserialize(params['SensitiveDataCheckConfig'])
          end
          @TargetSelect = params['TargetSelect']
          @FindHostKeyMethod = params['FindHostKeyMethod']
          @HostKeyHeaderName = params['HostKeyHeaderName']
          @FallbackStatus = params['FallbackStatus']
          unless params['FallbackModels'].nil?
            @FallbackModels = []
            params['FallbackModels'].each do |i|
              targetmodeldto_tmp = TargetModelDTO.new
              targetmodeldto_tmp.deserialize(i)
              @FallbackModels << targetmodeldto_tmp
            end
          end
          @ModelProtocol = params['ModelProtocol']
          @RawCustomModelProtocolConfig = params['RawCustomModelProtocolConfig']
        end
      end

      # ModifyModelService返回参数结构体
      class ModifyModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>结果集</p>
        # @type Data: :class:`Tencentcloud::Apis.v20240801.models.ResultIDVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResultIDVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyService请求参数结构体
      class ModifyServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例</p>
        # @type InstanceID: String
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param PaasID: <p>里约应用ID</p>
        # @type PaasID: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param LabelIDs: <p>标签</p>
        # @type LabelIDs: Array
        # @param CategoryIDs: <p>目录</p>
        # @type CategoryIDs: Array
        # @param AuthType: <p>鉴权方式</p>
        # @type AuthType: String
        # @param SignType: <p>签名</p>
        # @type SignType: String
        # @param LoginTypes: <p>登录方式</p>
        # @type LoginTypes: Array
        # @param TargetSelect: <p>负载方式</p>
        # @type TargetSelect: String
        # @param PubPath: <p>公开路径</p>
        # @type PubPath: String
        # @param RequestMethod: <p>请求方法</p>
        # @type RequestMethod: String
        # @param HttpProtocolType: <p>是否https</p>
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: <p>证书检查</p>
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: <p>http协议类型</p>
        # @type HttpProtocolVersion: String
        # @param Versions: <p>版本号</p>
        # @type Versions: Array
        # @param TargetPath: <p>目标路径</p>
        # @type TargetPath: String
        # @param RequestParamsValidatorStatus: <p>入参</p>
        # @type RequestParamsValidatorStatus: Boolean
        # @param RequestParamsValidatorJsonInfoT: <p>入参</p>
        # @type RequestParamsValidatorJsonInfoT: String
        # @param ResponseParamsValidatorStatus: <p>出参</p>
        # @type ResponseParamsValidatorStatus: Boolean
        # @param ResponseParamsValidatorJsonInfoT: <p>出参</p>
        # @type ResponseParamsValidatorJsonInfoT: String
        # @param InvokeLimitConfigStatus: <p>流量控制</p>
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>流量控制</p>
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param HealthCheckStatus: <p>健康检查</p>
        # @type HealthCheckStatus: Boolean
        # @param HealthCheckConfig: <p>健康检查</p>
        # @type HealthCheckConfig: :class:`Tencentcloud::Apis.v20240801.models.HealthCheckConfigDTO`
        # @param SourceTypeStatus: <p>格式转换</p>
        # @type SourceTypeStatus: Boolean
        # @param SourceTypeConfig: <p>格式转换</p>
        # @type SourceTypeConfig: :class:`Tencentcloud::Apis.v20240801.models.SourceTypeConfigDTO`
        # @param IpWhiteStatus: <p>IP白名单</p>
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteList: <p>IP白名单</p>
        # @type IpWhiteList: Array
        # @param IpBlackStatus: <p>IP黑名单</p>
        # @type IpBlackStatus: Boolean
        # @param IpBlackList: <p>IP黑名单</p>
        # @type IpBlackList: Array
        # @param PluginConfigs: <p>插件</p>
        # @type PluginConfigs: Array
        # @param ID: <p>服务ID</p>
        # @type ID: String

        attr_accessor :InstanceID, :Name, :PaasID, :Description, :LabelIDs, :CategoryIDs, :AuthType, :SignType, :LoginTypes, :TargetSelect, :PubPath, :RequestMethod, :HttpProtocolType, :CheckTargetCertsError, :HttpProtocolVersion, :Versions, :TargetPath, :RequestParamsValidatorStatus, :RequestParamsValidatorJsonInfoT, :ResponseParamsValidatorStatus, :ResponseParamsValidatorJsonInfoT, :InvokeLimitConfigStatus, :InvokeLimitConfig, :HealthCheckStatus, :HealthCheckConfig, :SourceTypeStatus, :SourceTypeConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackStatus, :IpBlackList, :PluginConfigs, :ID
        extend Gem::Deprecate
        deprecate :PaasID, :none, 2026, 7
        deprecate :PaasID=, :none, 2026, 7
        deprecate :AuthType, :none, 2026, 7
        deprecate :AuthType=, :none, 2026, 7
        deprecate :SignType, :none, 2026, 7
        deprecate :SignType=, :none, 2026, 7
        deprecate :LoginTypes, :none, 2026, 7
        deprecate :LoginTypes=, :none, 2026, 7

        def initialize(instanceid=nil, name=nil, paasid=nil, description=nil, labelids=nil, categoryids=nil, authtype=nil, signtype=nil, logintypes=nil, targetselect=nil, pubpath=nil, requestmethod=nil, httpprotocoltype=nil, checktargetcertserror=nil, httpprotocolversion=nil, versions=nil, targetpath=nil, requestparamsvalidatorstatus=nil, requestparamsvalidatorjsoninfot=nil, responseparamsvalidatorstatus=nil, responseparamsvalidatorjsoninfot=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, healthcheckstatus=nil, healthcheckconfig=nil, sourcetypestatus=nil, sourcetypeconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblackstatus=nil, ipblacklist=nil, pluginconfigs=nil, id=nil)
          @InstanceID = instanceid
          @Name = name
          @PaasID = paasid
          @Description = description
          @LabelIDs = labelids
          @CategoryIDs = categoryids
          @AuthType = authtype
          @SignType = signtype
          @LoginTypes = logintypes
          @TargetSelect = targetselect
          @PubPath = pubpath
          @RequestMethod = requestmethod
          @HttpProtocolType = httpprotocoltype
          @CheckTargetCertsError = checktargetcertserror
          @HttpProtocolVersion = httpprotocolversion
          @Versions = versions
          @TargetPath = targetpath
          @RequestParamsValidatorStatus = requestparamsvalidatorstatus
          @RequestParamsValidatorJsonInfoT = requestparamsvalidatorjsoninfot
          @ResponseParamsValidatorStatus = responseparamsvalidatorstatus
          @ResponseParamsValidatorJsonInfoT = responseparamsvalidatorjsoninfot
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @HealthCheckStatus = healthcheckstatus
          @HealthCheckConfig = healthcheckconfig
          @SourceTypeStatus = sourcetypestatus
          @SourceTypeConfig = sourcetypeconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteList = ipwhitelist
          @IpBlackStatus = ipblackstatus
          @IpBlackList = ipblacklist
          @PluginConfigs = pluginconfigs
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @PaasID = params['PaasID']
          @Description = params['Description']
          @LabelIDs = params['LabelIDs']
          @CategoryIDs = params['CategoryIDs']
          @AuthType = params['AuthType']
          @SignType = params['SignType']
          @LoginTypes = params['LoginTypes']
          @TargetSelect = params['TargetSelect']
          @PubPath = params['PubPath']
          @RequestMethod = params['RequestMethod']
          @HttpProtocolType = params['HttpProtocolType']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @HttpProtocolVersion = params['HttpProtocolVersion']
          unless params['Versions'].nil?
            @Versions = []
            params['Versions'].each do |i|
              versiondto_tmp = VersionDTO.new
              versiondto_tmp.deserialize(i)
              @Versions << versiondto_tmp
            end
          end
          @TargetPath = params['TargetPath']
          @RequestParamsValidatorStatus = params['RequestParamsValidatorStatus']
          @RequestParamsValidatorJsonInfoT = params['RequestParamsValidatorJsonInfoT']
          @ResponseParamsValidatorStatus = params['ResponseParamsValidatorStatus']
          @ResponseParamsValidatorJsonInfoT = params['ResponseParamsValidatorJsonInfoT']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @HealthCheckStatus = params['HealthCheckStatus']
          unless params['HealthCheckConfig'].nil?
            @HealthCheckConfig = HealthCheckConfigDTO.new
            @HealthCheckConfig.deserialize(params['HealthCheckConfig'])
          end
          @SourceTypeStatus = params['SourceTypeStatus']
          unless params['SourceTypeConfig'].nil?
            @SourceTypeConfig = SourceTypeConfigDTO.new
            @SourceTypeConfig.deserialize(params['SourceTypeConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          @IpWhiteList = params['IpWhiteList']
          @IpBlackStatus = params['IpBlackStatus']
          @IpBlackList = params['IpBlackList']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @ID = params['ID']
        end
      end

      # ModifyService返回参数结构体
      class ModifyServiceResponse < TencentCloud::Common::AbstractModel
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

      # PluginConfigDTO
      class PluginConfigDTO < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean
        # @param PluginName: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginName: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param PluginID: ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginID: String
        # @param Level: 优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param PluginFormValues: 表单配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginFormValues: Array

        attr_accessor :Status, :PluginName, :Description, :PluginID, :Level, :PluginFormValues

        def initialize(status=nil, pluginname=nil, description=nil, pluginid=nil, level=nil, pluginformvalues=nil)
          @Status = status
          @PluginName = pluginname
          @Description = description
          @PluginID = pluginid
          @Level = level
          @PluginFormValues = pluginformvalues
        end

        def deserialize(params)
          @Status = params['Status']
          @PluginName = params['PluginName']
          @Description = params['Description']
          @PluginID = params['PluginID']
          @Level = params['Level']
          unless params['PluginFormValues'].nil?
            @PluginFormValues = []
            params['PluginFormValues'].each do |i|
              pluginformvaluedto_tmp = PluginFormValueDTO.new
              pluginformvaluedto_tmp.deserialize(i)
              @PluginFormValues << pluginformvaluedto_tmp
            end
          end
        end
      end

      # PluginFormValueDTO
      class PluginFormValueDTO < TencentCloud::Common::AbstractModel
        # @param Field: 字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Field: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Field, :Value

        def initialize(field=nil, value=nil)
          @Field = field
          @Value = value
        end

        def deserialize(params)
          @Field = params['Field']
          @Value = params['Value']
        end
      end

      # 提示词安全配置
      class PromptModerateConfigDTO < TencentCloud::Common::AbstractModel
        # @param Action: <p>执行动作</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param InterceptMessage: <p>响应拦截内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InterceptMessage: String
        # @param ContextScope: <p>检测上下文</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextScope: String

        attr_accessor :Action, :InterceptMessage, :ContextScope

        def initialize(action=nil, interceptmessage=nil, contextscope=nil)
          @Action = action
          @InterceptMessage = interceptmessage
          @ContextScope = contextscope
        end

        def deserialize(params)
          @Action = params['Action']
          @InterceptMessage = params['InterceptMessage']
          @ContextScope = params['ContextScope']
        end
      end

      # ResultIDVO
      class ResultIDVO < TencentCloud::Common::AbstractModel
        # @param ID: 对象ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String

        attr_accessor :ID

        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # 结果ID数组
      class ResultIDsVO < TencentCloud::Common::AbstractModel
        # @param IDs: 结果ID数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IDs: Array

        attr_accessor :IDs

        def initialize(ids=nil)
          @IDs = ids
        end

        def deserialize(params)
          @IDs = params['IDs']
        end
      end

      # 敏感数据检测配置
      class SensitiveDataCheckConfigDTO < TencentCloud::Common::AbstractModel
        # @param Action: <p>执行动作</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param InterceptMessage: <p>响应拦截内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InterceptMessage: String
        # @param CheckItems: <p>检测项</p><p>枚举值：</p><ul><li>birthday： 生日</li><li>email： 邮箱</li><li>identity_number： 身份证</li><li>phone_number： 电话号码</li><li>secret： 秘钥</li><li>password： 密码</li><li>private_key： 私钥</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckItems: Array
        # @param ContextScope: <p>检测上下文</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextScope: String

        attr_accessor :Action, :InterceptMessage, :CheckItems, :ContextScope

        def initialize(action=nil, interceptmessage=nil, checkitems=nil, contextscope=nil)
          @Action = action
          @InterceptMessage = interceptmessage
          @CheckItems = checkitems
          @ContextScope = contextscope
        end

        def deserialize(params)
          @Action = params['Action']
          @InterceptMessage = params['InterceptMessage']
          @CheckItems = params['CheckItems']
          @ContextScope = params['ContextScope']
        end
      end

      # ServiceDatabaseOrderParam
      class ServiceDatabaseOrderParam < TencentCloud::Common::AbstractModel
        # @param FieldName: <p>字段名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldName: String
        # @param Order: <p>排序 asc desc</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: String

        attr_accessor :FieldName, :Order

        def initialize(fieldname=nil, order=nil)
          @FieldName = fieldname
          @Order = order
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Order = params['Order']
        end
      end

      # 向导模式请求参数
      class ServiceDatabaseReqParam < TencentCloud::Common::AbstractModel
        # @param FieldName: <p>表字段名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldName: String
        # @param Operator: <p>操作符</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Val: <p>参数名/常量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Val: String
        # @param ValType: <p>参数类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValType: String
        # @param InternalField: <p>内部字段</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalField: Boolean

        attr_accessor :FieldName, :Operator, :Val, :ValType, :InternalField

        def initialize(fieldname=nil, operator=nil, val=nil, valtype=nil, internalfield=nil)
          @FieldName = fieldname
          @Operator = operator
          @Val = val
          @ValType = valtype
          @InternalField = internalfield
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Operator = params['Operator']
          @Val = params['Val']
          @ValType = params['ValType']
          @InternalField = params['InternalField']
        end
      end

      # 响应参数
      class ServiceDatabaseRespParam < TencentCloud::Common::AbstractModel
        # @param FieldName: <p>源字段名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldName: String
        # @param Name: <p>目标字段名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :FieldName, :Name

        def initialize(fieldname=nil, name=nil)
          @FieldName = fieldname
          @Name = name
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Name = params['Name']
        end
      end

      # ServiceVO
      class ServiceVO < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>实例</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
        # @param Name: <p>名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param PaasID: <p>里约应用ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaasID: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param LabelIDs: <p>标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelIDs: Array
        # @param CategoryIDs: <p>目录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryIDs: Array
        # @param AuthType: <p>鉴权方式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: String
        # @param SignType: <p>签名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignType: String
        # @param LoginTypes: <p>登录方式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginTypes: Array
        # @param TargetSelect: <p>负载方式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSelect: String
        # @param PubPath: <p>公开路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PubPath: String
        # @param RequestMethod: <p>请求方法</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestMethod: String
        # @param TargetHosts: <p>目标服务器</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHosts: Array
        # @param HttpProtocolType: <p>是否https</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: <p>证书检查</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: <p>http协议类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpProtocolVersion: String
        # @param Versions: <p>版本号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Versions: Array
        # @param TargetPath: <p>目标路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPath: String
        # @param RequestParamsValidatorStatus: <p>入参</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestParamsValidatorStatus: Boolean
        # @param RequestParamsValidatorJsonInfoT: <p>入参</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestParamsValidatorJsonInfoT: String
        # @param ResponseParamsValidatorStatus: <p>出参</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseParamsValidatorStatus: Boolean
        # @param ResponseParamsValidatorJsonInfoT: <p>出参</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseParamsValidatorJsonInfoT: String
        # @param InvokeLimitConfigStatus: <p>流量控制</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: <p>流量控制</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param HealthCheckStatus: <p>健康检查</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckStatus: Boolean
        # @param HealthCheckConfig: <p>健康检查</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckConfig: :class:`Tencentcloud::Apis.v20240801.models.HealthCheckConfigDTO`
        # @param SourceTypeStatus: <p>格式转换</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceTypeStatus: Boolean
        # @param SourceTypeConfig: <p>格式转换</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceTypeConfig: :class:`Tencentcloud::Apis.v20240801.models.SourceTypeConfigDTO`
        # @param TokenLimitStatus: <p>是否开启Token限流</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenLimitStatus: Boolean
        # @param TokenLimitConfig: <p>Token限流配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.TokenLimitConfigDTO`
        # @param TmsStatus: <p>是否开启内容安全</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmsStatus: Boolean
        # @param TmsConfig: <p>内容安全配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmsConfig: :class:`Tencentcloud::Apis.v20240801.models.TmsConfigDTO`
        # @param IpWhiteStatus: <p>IP白名单</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteList: <p>IP白名单</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpWhiteList: Array
        # @param IpBlackStatus: <p>IP黑名单</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpBlackStatus: Boolean
        # @param IpBlackList: <p>IP黑名单</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpBlackList: Array
        # @param PluginConfigs: <p>插件</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginConfigs: Array
        # @param ID: <p>服务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Status: <p>状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Url: <p>预览地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param App: <p>app</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type App: :class:`Tencentcloud::Apis.v20240801.models.IDNameVO`
        # @param Catalogs: <p>目录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalogs: Array
        # @param Labels: <p>标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param Logins: <p>认证方式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logins: Array
        # @param AuthAppNum: <p>授权数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthAppNum: Integer
        # @param CreateTime: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdateTime: <p>最后修改时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param AppID: <p>应用ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: Integer
        # @param Uin: <p>用户ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Domain: <p>域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param OpenMessageLogStatus: <p>是否开启报文记录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenMessageLogStatus: Boolean
        # @param CurrPaasIDSubscriptionID: <p>订阅页面的当前用户是否订阅了该API</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrPaasIDSubscriptionID: String
        # @param TargetServiceType: <p>目标服务类型 Restful Database Mock</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceType: String
        # @param SqlTemplate: <p>SQL模板</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlTemplate: :class:`Tencentcloud::Apis.v20240801.models.SqlTemplate`
        # @param TargetHostType: <p>目标Host类型 0 默认 1 vpc</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHostType: Integer
        # @param TargetServiceHostType: <p>后端服务类型 0 自定义 原始数据:ip/域名或vpc 1 后端服务 服务组</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceHostType: Integer
        # @param TargetServerGroupID: <p>后端服务组ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServerGroupID: String
        # @param TargetServerGroup: <p>后端服务组</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServerGroup: :class:`Tencentcloud::Apis.v20240801.models.TargetServerGroupDTO`
        # @param CustomHttpHost: <p>自定义host</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomHttpHost: String
        # @param HttpHostType: <p>Http 请求host类型 useRequestHost 保持源请求host targetHost 修正为源站host  customHost 自定义host</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpHostType: String
        # @param MockStatusCode: <p>mock响应状态码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MockStatusCode: Integer
        # @param MockBody: <p>mock响应body</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MockBody: String
        # @param MockHeaders: <p>mock响应头</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MockHeaders: Array
        # @param PathMatchType: <p>路径匹配类型: prefix 前缀匹配(不送默认); absolute 绝对匹配; regex正则匹配;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathMatchType: String
        # @param CustomMatch: <p>自定义匹配条件</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomMatch: :class:`Tencentcloud::Apis.v20240801.models.CustomMatch`
        # @param Timeout: <p>请求的超时时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param McpServerNum: <p>绑定的mcp server数量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type McpServerNum: Integer

        attr_accessor :InstanceID, :Name, :PaasID, :Description, :LabelIDs, :CategoryIDs, :AuthType, :SignType, :LoginTypes, :TargetSelect, :PubPath, :RequestMethod, :TargetHosts, :HttpProtocolType, :CheckTargetCertsError, :HttpProtocolVersion, :Versions, :TargetPath, :RequestParamsValidatorStatus, :RequestParamsValidatorJsonInfoT, :ResponseParamsValidatorStatus, :ResponseParamsValidatorJsonInfoT, :InvokeLimitConfigStatus, :InvokeLimitConfig, :HealthCheckStatus, :HealthCheckConfig, :SourceTypeStatus, :SourceTypeConfig, :TokenLimitStatus, :TokenLimitConfig, :TmsStatus, :TmsConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackStatus, :IpBlackList, :PluginConfigs, :ID, :Status, :Url, :App, :Catalogs, :Labels, :Logins, :AuthAppNum, :CreateTime, :LastUpdateTime, :AppID, :Uin, :Domain, :OpenMessageLogStatus, :CurrPaasIDSubscriptionID, :TargetServiceType, :SqlTemplate, :TargetHostType, :TargetServiceHostType, :TargetServerGroupID, :TargetServerGroup, :CustomHttpHost, :HttpHostType, :MockStatusCode, :MockBody, :MockHeaders, :PathMatchType, :CustomMatch, :Timeout, :McpServerNum
        extend Gem::Deprecate
        deprecate :PaasID, :none, 2026, 7
        deprecate :PaasID=, :none, 2026, 7
        deprecate :AuthType, :none, 2026, 7
        deprecate :AuthType=, :none, 2026, 7
        deprecate :SignType, :none, 2026, 7
        deprecate :SignType=, :none, 2026, 7
        deprecate :LoginTypes, :none, 2026, 7
        deprecate :LoginTypes=, :none, 2026, 7
        deprecate :TokenLimitStatus, :none, 2026, 7
        deprecate :TokenLimitStatus=, :none, 2026, 7
        deprecate :TokenLimitConfig, :none, 2026, 7
        deprecate :TokenLimitConfig=, :none, 2026, 7
        deprecate :TmsStatus, :none, 2026, 7
        deprecate :TmsStatus=, :none, 2026, 7
        deprecate :TmsConfig, :none, 2026, 7
        deprecate :TmsConfig=, :none, 2026, 7
        deprecate :CurrPaasIDSubscriptionID, :none, 2026, 7
        deprecate :CurrPaasIDSubscriptionID=, :none, 2026, 7

        def initialize(instanceid=nil, name=nil, paasid=nil, description=nil, labelids=nil, categoryids=nil, authtype=nil, signtype=nil, logintypes=nil, targetselect=nil, pubpath=nil, requestmethod=nil, targethosts=nil, httpprotocoltype=nil, checktargetcertserror=nil, httpprotocolversion=nil, versions=nil, targetpath=nil, requestparamsvalidatorstatus=nil, requestparamsvalidatorjsoninfot=nil, responseparamsvalidatorstatus=nil, responseparamsvalidatorjsoninfot=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, healthcheckstatus=nil, healthcheckconfig=nil, sourcetypestatus=nil, sourcetypeconfig=nil, tokenlimitstatus=nil, tokenlimitconfig=nil, tmsstatus=nil, tmsconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblackstatus=nil, ipblacklist=nil, pluginconfigs=nil, id=nil, status=nil, url=nil, app=nil, catalogs=nil, labels=nil, logins=nil, authappnum=nil, createtime=nil, lastupdatetime=nil, appid=nil, uin=nil, domain=nil, openmessagelogstatus=nil, currpaasidsubscriptionid=nil, targetservicetype=nil, sqltemplate=nil, targethosttype=nil, targetservicehosttype=nil, targetservergroupid=nil, targetservergroup=nil, customhttphost=nil, httphosttype=nil, mockstatuscode=nil, mockbody=nil, mockheaders=nil, pathmatchtype=nil, custommatch=nil, timeout=nil, mcpservernum=nil)
          @InstanceID = instanceid
          @Name = name
          @PaasID = paasid
          @Description = description
          @LabelIDs = labelids
          @CategoryIDs = categoryids
          @AuthType = authtype
          @SignType = signtype
          @LoginTypes = logintypes
          @TargetSelect = targetselect
          @PubPath = pubpath
          @RequestMethod = requestmethod
          @TargetHosts = targethosts
          @HttpProtocolType = httpprotocoltype
          @CheckTargetCertsError = checktargetcertserror
          @HttpProtocolVersion = httpprotocolversion
          @Versions = versions
          @TargetPath = targetpath
          @RequestParamsValidatorStatus = requestparamsvalidatorstatus
          @RequestParamsValidatorJsonInfoT = requestparamsvalidatorjsoninfot
          @ResponseParamsValidatorStatus = responseparamsvalidatorstatus
          @ResponseParamsValidatorJsonInfoT = responseparamsvalidatorjsoninfot
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @HealthCheckStatus = healthcheckstatus
          @HealthCheckConfig = healthcheckconfig
          @SourceTypeStatus = sourcetypestatus
          @SourceTypeConfig = sourcetypeconfig
          @TokenLimitStatus = tokenlimitstatus
          @TokenLimitConfig = tokenlimitconfig
          @TmsStatus = tmsstatus
          @TmsConfig = tmsconfig
          @IpWhiteStatus = ipwhitestatus
          @IpWhiteList = ipwhitelist
          @IpBlackStatus = ipblackstatus
          @IpBlackList = ipblacklist
          @PluginConfigs = pluginconfigs
          @ID = id
          @Status = status
          @Url = url
          @App = app
          @Catalogs = catalogs
          @Labels = labels
          @Logins = logins
          @AuthAppNum = authappnum
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @AppID = appid
          @Uin = uin
          @Domain = domain
          @OpenMessageLogStatus = openmessagelogstatus
          @CurrPaasIDSubscriptionID = currpaasidsubscriptionid
          @TargetServiceType = targetservicetype
          @SqlTemplate = sqltemplate
          @TargetHostType = targethosttype
          @TargetServiceHostType = targetservicehosttype
          @TargetServerGroupID = targetservergroupid
          @TargetServerGroup = targetservergroup
          @CustomHttpHost = customhttphost
          @HttpHostType = httphosttype
          @MockStatusCode = mockstatuscode
          @MockBody = mockbody
          @MockHeaders = mockheaders
          @PathMatchType = pathmatchtype
          @CustomMatch = custommatch
          @Timeout = timeout
          @McpServerNum = mcpservernum
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @PaasID = params['PaasID']
          @Description = params['Description']
          @LabelIDs = params['LabelIDs']
          @CategoryIDs = params['CategoryIDs']
          @AuthType = params['AuthType']
          @SignType = params['SignType']
          @LoginTypes = params['LoginTypes']
          @TargetSelect = params['TargetSelect']
          @PubPath = params['PubPath']
          @RequestMethod = params['RequestMethod']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @HttpProtocolType = params['HttpProtocolType']
          @CheckTargetCertsError = params['CheckTargetCertsError']
          @HttpProtocolVersion = params['HttpProtocolVersion']
          unless params['Versions'].nil?
            @Versions = []
            params['Versions'].each do |i|
              versiondto_tmp = VersionDTO.new
              versiondto_tmp.deserialize(i)
              @Versions << versiondto_tmp
            end
          end
          @TargetPath = params['TargetPath']
          @RequestParamsValidatorStatus = params['RequestParamsValidatorStatus']
          @RequestParamsValidatorJsonInfoT = params['RequestParamsValidatorJsonInfoT']
          @ResponseParamsValidatorStatus = params['ResponseParamsValidatorStatus']
          @ResponseParamsValidatorJsonInfoT = params['ResponseParamsValidatorJsonInfoT']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          @HealthCheckStatus = params['HealthCheckStatus']
          unless params['HealthCheckConfig'].nil?
            @HealthCheckConfig = HealthCheckConfigDTO.new
            @HealthCheckConfig.deserialize(params['HealthCheckConfig'])
          end
          @SourceTypeStatus = params['SourceTypeStatus']
          unless params['SourceTypeConfig'].nil?
            @SourceTypeConfig = SourceTypeConfigDTO.new
            @SourceTypeConfig.deserialize(params['SourceTypeConfig'])
          end
          @TokenLimitStatus = params['TokenLimitStatus']
          unless params['TokenLimitConfig'].nil?
            @TokenLimitConfig = TokenLimitConfigDTO.new
            @TokenLimitConfig.deserialize(params['TokenLimitConfig'])
          end
          @TmsStatus = params['TmsStatus']
          unless params['TmsConfig'].nil?
            @TmsConfig = TmsConfigDTO.new
            @TmsConfig.deserialize(params['TmsConfig'])
          end
          @IpWhiteStatus = params['IpWhiteStatus']
          @IpWhiteList = params['IpWhiteList']
          @IpBlackStatus = params['IpBlackStatus']
          @IpBlackList = params['IpBlackList']
          unless params['PluginConfigs'].nil?
            @PluginConfigs = []
            params['PluginConfigs'].each do |i|
              pluginconfigdto_tmp = PluginConfigDTO.new
              pluginconfigdto_tmp.deserialize(i)
              @PluginConfigs << pluginconfigdto_tmp
            end
          end
          @ID = params['ID']
          @Status = params['Status']
          @Url = params['Url']
          unless params['App'].nil?
            @App = IDNameVO.new
            @App.deserialize(params['App'])
          end
          unless params['Catalogs'].nil?
            @Catalogs = []
            params['Catalogs'].each do |i|
              idnamevo_tmp = IDNameVO.new
              idnamevo_tmp.deserialize(i)
              @Catalogs << idnamevo_tmp
            end
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              idnamevo_tmp = IDNameVO.new
              idnamevo_tmp.deserialize(i)
              @Labels << idnamevo_tmp
            end
          end
          unless params['Logins'].nil?
            @Logins = []
            params['Logins'].each do |i|
              idnamevo_tmp = IDNameVO.new
              idnamevo_tmp.deserialize(i)
              @Logins << idnamevo_tmp
            end
          end
          @AuthAppNum = params['AuthAppNum']
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @AppID = params['AppID']
          @Uin = params['Uin']
          @Domain = params['Domain']
          @OpenMessageLogStatus = params['OpenMessageLogStatus']
          @CurrPaasIDSubscriptionID = params['CurrPaasIDSubscriptionID']
          @TargetServiceType = params['TargetServiceType']
          unless params['SqlTemplate'].nil?
            @SqlTemplate = SqlTemplate.new
            @SqlTemplate.deserialize(params['SqlTemplate'])
          end
          @TargetHostType = params['TargetHostType']
          @TargetServiceHostType = params['TargetServiceHostType']
          @TargetServerGroupID = params['TargetServerGroupID']
          unless params['TargetServerGroup'].nil?
            @TargetServerGroup = TargetServerGroupDTO.new
            @TargetServerGroup.deserialize(params['TargetServerGroup'])
          end
          @CustomHttpHost = params['CustomHttpHost']
          @HttpHostType = params['HttpHostType']
          @MockStatusCode = params['MockStatusCode']
          @MockBody = params['MockBody']
          unless params['MockHeaders'].nil?
            @MockHeaders = []
            params['MockHeaders'].each do |i|
              fieldvaluedto_tmp = FieldValueDTO.new
              fieldvaluedto_tmp.deserialize(i)
              @MockHeaders << fieldvaluedto_tmp
            end
          end
          @PathMatchType = params['PathMatchType']
          unless params['CustomMatch'].nil?
            @CustomMatch = CustomMatch.new
            @CustomMatch.deserialize(params['CustomMatch'])
          end
          @Timeout = params['Timeout']
          @McpServerNum = params['McpServerNum']
        end
      end

      # 匹配条件请求参数
      class SimpleCondition < TencentCloud::Common::AbstractModel
        # @param Key: <p>字段名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Condition: <p>匹配方式: eq 等于;ne 不等于;regex 正则;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: String
        # @param Value: <p>字段值 或正则表达式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Condition, :Value

        def initialize(key=nil, condition=nil, value=nil)
          @Key = key
          @Condition = condition
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Condition = params['Condition']
          @Value = params['Value']
        end
      end

      # SourceTypeConfigDTO
      class SourceTypeConfigDTO < TencentCloud::Common::AbstractModel
        # @param ReqSourceType: json xml urlencoded amf0 amf3 hessian1 hessian2

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReqSourceType: String
        # @param ReqTargetType: json xml urlencoded amf0 amf3 hessian1 hessian2

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReqTargetType: String
        # @param ResSourceType: json xml urlencoded amf0 amf3 hessian1 hessian2

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResSourceType: String
        # @param ResTargetType: json xml urlencoded amf0 amf3 hessian1 hessian2

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResTargetType: String

        attr_accessor :ReqSourceType, :ReqTargetType, :ResSourceType, :ResTargetType

        def initialize(reqsourcetype=nil, reqtargettype=nil, ressourcetype=nil, restargettype=nil)
          @ReqSourceType = reqsourcetype
          @ReqTargetType = reqtargettype
          @ResSourceType = ressourcetype
          @ResTargetType = restargettype
        end

        def deserialize(params)
          @ReqSourceType = params['ReqSourceType']
          @ReqTargetType = params['ReqTargetType']
          @ResSourceType = params['ResSourceType']
          @ResTargetType = params['ResTargetType']
        end
      end

      # SqlTemplate SQL模板
      class SqlTemplate < TencentCloud::Common::AbstractModel
        # @param DbConfigMode: <p>配置方式  script  脚本 wizard 向导</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbConfigMode: String
        # @param DataSourceID: <p>数据源ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceID: String
        # @param Sql: <p>Sql代码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sql: String
        # @param WizardConfig: <p>向导模式配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WizardConfig: :class:`Tencentcloud::Apis.v20240801.models.WizardConfig`

        attr_accessor :DbConfigMode, :DataSourceID, :Sql, :WizardConfig

        def initialize(dbconfigmode=nil, datasourceid=nil, sql=nil, wizardconfig=nil)
          @DbConfigMode = dbconfigmode
          @DataSourceID = datasourceid
          @Sql = sql
          @WizardConfig = wizardconfig
        end

        def deserialize(params)
          @DbConfigMode = params['DbConfigMode']
          @DataSourceID = params['DataSourceID']
          @Sql = params['Sql']
          unless params['WizardConfig'].nil?
            @WizardConfig = WizardConfig.new
            @WizardConfig.deserialize(params['WizardConfig'])
          end
        end
      end

      # 开始结束时间结构体
      class StartEndTime < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # TargetHostDTO
      class TargetHostDTO < TencentCloud::Common::AbstractModel
        # @param Host: 服务器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Rank: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rank: Integer

        attr_accessor :Host, :Rank

        def initialize(host=nil, rank=nil)
          @Host = host
          @Rank = rank
        end

        def deserialize(params)
          @Host = params['Host']
          @Rank = params['Rank']
        end
      end

      # 模板模型
      class TargetModelDTO < TencentCloud::Common::AbstractModel
        # @param ID: 模型ID
        # @type ID: String
        # @param Name: 匹配名称
        # @type Name: String
        # @param Rank: 权重
        # @type Rank: Integer

        attr_accessor :ID, :Name, :Rank

        def initialize(id=nil, name=nil, rank=nil)
          @ID = id
          @Name = name
          @Rank = rank
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Rank = params['Rank']
        end
      end

      # 后端服务组DTO
      class TargetServerGroupDTO < TencentCloud::Common::AbstractModel
        # @param ID: <p>后端服务组ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Name: <p>名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TargetHosts: <p>目标服务器列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHosts: Array
        # @param TargetHostType: <p>目标Host类型 0 默认 1 vpc</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHostType: Integer
        # @param ServiceCount: <p>关联的服务数量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCount: Integer
        # @param CreateTime: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :ID, :Name, :TargetHosts, :TargetHostType, :ServiceCount, :CreateTime

        def initialize(id=nil, name=nil, targethosts=nil, targethosttype=nil, servicecount=nil, createtime=nil)
          @ID = id
          @Name = name
          @TargetHosts = targethosts
          @TargetHostType = targethosttype
          @ServiceCount = servicecount
          @CreateTime = createtime
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          unless params['TargetHosts'].nil?
            @TargetHosts = []
            params['TargetHosts'].each do |i|
              targethostdto_tmp = TargetHostDTO.new
              targethostdto_tmp.deserialize(i)
              @TargetHosts << targethostdto_tmp
            end
          end
          @TargetHostType = params['TargetHostType']
          @ServiceCount = params['ServiceCount']
          @CreateTime = params['CreateTime']
        end
      end

      # 内容安全配置
      class TmsConfigDTO < TencentCloud::Common::AbstractModel
        # @param Scope: <p>检测范围,请求/响应</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: Array
        # @param Mode: <p>检测形式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param Action: <p>执行动作</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param MergeCount: <p>合并请求检测event数，联动Mode字段sync</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MergeCount: Integer
        # @param BizType: <p>风控策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: String
        # @param InterceptMessage: <p>响应拦截内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InterceptMessage: String
        # @param ContextScope: <p>检测上下文</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextScope: String

        attr_accessor :Scope, :Mode, :Action, :MergeCount, :BizType, :InterceptMessage, :ContextScope

        def initialize(scope=nil, mode=nil, action=nil, mergecount=nil, biztype=nil, interceptmessage=nil, contextscope=nil)
          @Scope = scope
          @Mode = mode
          @Action = action
          @MergeCount = mergecount
          @BizType = biztype
          @InterceptMessage = interceptmessage
          @ContextScope = contextscope
        end

        def deserialize(params)
          @Scope = params['Scope']
          @Mode = params['Mode']
          @Action = params['Action']
          @MergeCount = params['MergeCount']
          @BizType = params['BizType']
          @InterceptMessage = params['InterceptMessage']
          @ContextScope = params['ContextScope']
        end
      end

      # Token限流配置
      class TokenLimitConfigDTO < TencentCloud::Common::AbstractModel
        # @param Type: <p>限流类型</p><p>枚举值：</p><ul><li>minute： 时间窗口</li><li>day： 自然日</li><li>month： 自然月</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param LimitRequestBody: <p>单次请求上限，k</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimitRequestBody: Integer
        # @param LimitWindows: <p>累次token总量消耗上限</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimitWindows: Array

        attr_accessor :Type, :LimitRequestBody, :LimitWindows

        def initialize(type=nil, limitrequestbody=nil, limitwindows=nil)
          @Type = type
          @LimitRequestBody = limitrequestbody
          @LimitWindows = limitwindows
        end

        def deserialize(params)
          @Type = params['Type']
          @LimitRequestBody = params['LimitRequestBody']
          unless params['LimitWindows'].nil?
            @LimitWindows = []
            params['LimitWindows'].each do |i|
              limitwindowsdto_tmp = LimitWindowsDTO.new
              limitwindowsdto_tmp.deserialize(i)
              @LimitWindows << limitwindowsdto_tmp
            end
          end
        end
      end

      # 工具级别配置
      class ToolConfigDTO < TencentCloud::Common::AbstractModel
        # @param ToolName: 工具名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolName: String
        # @param InvokeLimitConfigStatus: 是否开启限流配置
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: 限流配置
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param McpSecurityRules: 绑定安全规则
        # @type McpSecurityRules: Array

        attr_accessor :ToolName, :InvokeLimitConfigStatus, :InvokeLimitConfig, :McpSecurityRules

        def initialize(toolname=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, mcpsecurityrules=nil)
          @ToolName = toolname
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @McpSecurityRules = mcpsecurityrules
        end

        def deserialize(params)
          @ToolName = params['ToolName']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          unless params['McpSecurityRules'].nil?
            @McpSecurityRules = []
            params['McpSecurityRules'].each do |i|
              bindmcpsecurityruledto_tmp = BindMcpSecurityRuleDTO.new
              bindmcpsecurityruledto_tmp.deserialize(i)
              @McpSecurityRules << bindmcpsecurityruledto_tmp
            end
          end
        end
      end

      # 工具配置响应
      class ToolConfigVO < TencentCloud::Common::AbstractModel
        # @param ToolName: 工具名称
        # @type ToolName: String
        # @param InvokeLimitConfigStatus: 是否开启限流配置
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: 限流配置
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param McpSecurityRules: 绑定安全规则（响应）
        # @type McpSecurityRules: Array

        attr_accessor :ToolName, :InvokeLimitConfigStatus, :InvokeLimitConfig, :McpSecurityRules

        def initialize(toolname=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, mcpsecurityrules=nil)
          @ToolName = toolname
          @InvokeLimitConfigStatus = invokelimitconfigstatus
          @InvokeLimitConfig = invokelimitconfig
          @McpSecurityRules = mcpsecurityrules
        end

        def deserialize(params)
          @ToolName = params['ToolName']
          @InvokeLimitConfigStatus = params['InvokeLimitConfigStatus']
          unless params['InvokeLimitConfig'].nil?
            @InvokeLimitConfig = InvokeLimitConfigDTO.new
            @InvokeLimitConfig.deserialize(params['InvokeLimitConfig'])
          end
          unless params['McpSecurityRules'].nil?
            @McpSecurityRules = []
            params['McpSecurityRules'].each do |i|
              bindmcpsecurityrulevo_tmp = BindMcpSecurityRuleVO.new
              bindmcpsecurityrulevo_tmp.deserialize(i)
              @McpSecurityRules << bindmcpsecurityrulevo_tmp
            end
          end
        end
      end

      # VersionDTO
      class VersionDTO < TencentCloud::Common::AbstractModel
        # @param Version: Version版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param TargetPath: 目标路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPath: String

        attr_accessor :Version, :TargetPath

        def initialize(version=nil, targetpath=nil)
          @Version = version
          @TargetPath = targetpath
        end

        def deserialize(params)
          @Version = params['Version']
          @TargetPath = params['TargetPath']
        end
      end

      # WizardConfig 向导模式配置
      class WizardConfig < TencentCloud::Common::AbstractModel
        # @param DbTable: <p>表名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbTable: String
        # @param DbEnablePaging: <p>是否分页</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbEnablePaging: Boolean
        # @param DbReqParams: <p>请求参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbReqParams: Array
        # @param DbRespParams: <p>响应参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbRespParams: Array
        # @param DbOrdParams: <p>排序参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbOrdParams: Array
        # @param DbEnableMappingResp: <p>是否开启出参映射</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbEnableMappingResp: Boolean

        attr_accessor :DbTable, :DbEnablePaging, :DbReqParams, :DbRespParams, :DbOrdParams, :DbEnableMappingResp

        def initialize(dbtable=nil, dbenablepaging=nil, dbreqparams=nil, dbrespparams=nil, dbordparams=nil, dbenablemappingresp=nil)
          @DbTable = dbtable
          @DbEnablePaging = dbenablepaging
          @DbReqParams = dbreqparams
          @DbRespParams = dbrespparams
          @DbOrdParams = dbordparams
          @DbEnableMappingResp = dbenablemappingresp
        end

        def deserialize(params)
          @DbTable = params['DbTable']
          @DbEnablePaging = params['DbEnablePaging']
          unless params['DbReqParams'].nil?
            @DbReqParams = []
            params['DbReqParams'].each do |i|
              servicedatabasereqparam_tmp = ServiceDatabaseReqParam.new
              servicedatabasereqparam_tmp.deserialize(i)
              @DbReqParams << servicedatabasereqparam_tmp
            end
          end
          unless params['DbRespParams'].nil?
            @DbRespParams = []
            params['DbRespParams'].each do |i|
              servicedatabaserespparam_tmp = ServiceDatabaseRespParam.new
              servicedatabaserespparam_tmp.deserialize(i)
              @DbRespParams << servicedatabaserespparam_tmp
            end
          end
          unless params['DbOrdParams'].nil?
            @DbOrdParams = []
            params['DbOrdParams'].each do |i|
              servicedatabaseorderparam_tmp = ServiceDatabaseOrderParam.new
              servicedatabaseorderparam_tmp.deserialize(i)
              @DbOrdParams << servicedatabaseorderparam_tmp
            end
          end
          @DbEnableMappingResp = params['DbEnableMappingResp']
        end
      end

    end
  end
end

