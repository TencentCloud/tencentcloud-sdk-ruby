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
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Name: 名称
        # @type Name: String
        # @param AuthType: 认证类型
        # @type AuthType: String
        # @param OAuth2ResourceServerID: OAuth2资源服务器ID
        # @type OAuth2ResourceServerID: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :InstanceID, :Name, :AuthType, :OAuth2ResourceServerID, :Description

        def initialize(instanceid=nil, name=nil, authtype=nil, oauth2resourceserverid=nil, description=nil)
          @InstanceID = instanceid
          @Name = name
          @AuthType = authtype
          @OAuth2ResourceServerID = oauth2resourceserverid
          @Description = description
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @AuthType = params['AuthType']
          @OAuth2ResourceServerID = params['OAuth2ResourceServerID']
          @Description = params['Description']
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
        # @param Data: app id
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
        # @param Mode: 模式：proxy代理模式； wrap封装模式；
        # @type Mode: String
        # @param McpVersion: 版本号：2024-11-05 2025-03-26
        # @type McpVersion: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param WrapServices: 封装服务列表
        # @type WrapServices: Array
        # @param TargetSelect: 负载方式，robin random consistentHash
        # @type TargetSelect: String
        # @param TargetHosts: 目标服务器
        # @type TargetHosts: Array
        # @param HttpProtocolType: 后端协议：http https
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: 证书检查
        # @type CheckTargetCertsError: Boolean
        # @param TargetPath: 目标路径
        # @type TargetPath: String
        # @param InvokeLimitConfigStatus: 流量控制开启状态
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: 流量控制配置
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param IpWhiteStatus: IP白名单开启状态
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteConfig: IP白名单配置
        # @type IpWhiteConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param IpBlackStatus: IP黑名单开启状态
        # @type IpBlackStatus: Boolean
        # @param IpBlackConfig: IP黑名单配置
        # @type IpBlackConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param CustomHttpHost: 自定义host
        # @type CustomHttpHost: String
        # @param HttpHostType: Http 请求host类型：useRequestHost 保持源请求；host targetHost 修正为源站host；  customHost 自定义host
        # @type HttpHostType: String
        # @param Timeout: 请求的超时时间
        # @type Timeout: Integer
        # @param McpSecurityRules: 安全规则集
        # @type McpSecurityRules: Array
        # @param ToolConfigs: 工具集配置（openapi时或许用的是）
        # @type ToolConfigs: Array
        # @param WrapPaasID: 封装的API分组ID
        # @type WrapPaasID: String
        # @param PluginConfigs: 插件配置
        # @type PluginConfigs: Array

        attr_accessor :Mode, :McpVersion, :InstanceID, :Name, :Description, :WrapServices, :TargetSelect, :TargetHosts, :HttpProtocolType, :CheckTargetCertsError, :TargetPath, :InvokeLimitConfigStatus, :InvokeLimitConfig, :IpWhiteStatus, :IpWhiteConfig, :IpBlackStatus, :IpBlackConfig, :CustomHttpHost, :HttpHostType, :Timeout, :McpSecurityRules, :ToolConfigs, :WrapPaasID, :PluginConfigs

        def initialize(mode=nil, mcpversion=nil, instanceid=nil, name=nil, description=nil, wrapservices=nil, targetselect=nil, targethosts=nil, httpprotocoltype=nil, checktargetcertserror=nil, targetpath=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, ipwhitestatus=nil, ipwhiteconfig=nil, ipblackstatus=nil, ipblackconfig=nil, customhttphost=nil, httphosttype=nil, timeout=nil, mcpsecurityrules=nil, toolconfigs=nil, wrappaasid=nil, pluginconfigs=nil)
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
        end
      end

      # CreateMcpServer返回参数结构体
      class CreateMcpServerResponse < TencentCloud::Common::AbstractModel
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

      # CreateModel请求参数结构体
      class CreateModelRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例
        # @type InstanceID: String
        # @param Name: 模型名称
        # @type Name: String
        # @param HttpProtocolType: 协议类型：http/https
        # @type HttpProtocolType: String
        # @param TargetPath: 目标路径
        # @type TargetPath: String
        # @param TargetHosts: 目标服务器
        # @type TargetHosts: Array
        # @param CredentialID: 凭据ID
        # @type CredentialID: String
        # @param CheckTargetCertsError: https时，是否检查证书合法
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: http协议版本：1.1/2.0
        # @type HttpProtocolVersion: String

        attr_accessor :InstanceID, :Name, :HttpProtocolType, :TargetPath, :TargetHosts, :CredentialID, :CheckTargetCertsError, :HttpProtocolVersion

        def initialize(instanceid=nil, name=nil, httpprotocoltype=nil, targetpath=nil, targethosts=nil, credentialid=nil, checktargetcertserror=nil, httpprotocolversion=nil)
          @InstanceID = instanceid
          @Name = name
          @HttpProtocolType = httpprotocoltype
          @TargetPath = targetpath
          @TargetHosts = targethosts
          @CredentialID = credentialid
          @CheckTargetCertsError = checktargetcertserror
          @HttpProtocolVersion = httpprotocolversion
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
        end
      end

      # CreateModel返回参数结构体
      class CreateModelResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :InstanceID, :Name, :Description, :PubPath, :TargetModels, :PathMatchType, :InvokeLimitConfigStatus, :InvokeLimitConfig, :TokenLimitStatus, :TokenLimitConfig, :TmsStatus, :TmsConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackList, :PluginConfigs, :Timeout, :PromptModerateStatus, :PromptModerateConfig, :SensitiveDataCheckStatus, :SensitiveDataCheckConfig, :TargetSelect, :FindHostKeyMethod, :HostKeyHeaderName, :FallbackStatus, :FallbackModels

        def initialize(instanceid=nil, name=nil, description=nil, pubpath=nil, targetmodels=nil, pathmatchtype=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, tokenlimitstatus=nil, tokenlimitconfig=nil, tmsstatus=nil, tmsconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblacklist=nil, pluginconfigs=nil, timeout=nil, promptmoderatestatus=nil, promptmoderateconfig=nil, sensitivedatacheckstatus=nil, sensitivedatacheckconfig=nil, targetselect=nil, findhostkeymethod=nil, hostkeyheadername=nil, fallbackstatus=nil, fallbackmodels=nil)
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
        # @param AppID: 租户appID
        # @type AppID: Integer
        # @param Uin: 租户ID
        # @type Uin: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param Status: 状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param AuthType: 认证类型
        # @type AuthType: String
        # @param ApiKeys: apiKeys列表，脱敏
        # @type ApiKeys: Array
        # @param SecretKeys: secretKey列表，脱敏
        # @type SecretKeys: Array
        # @param OAuth2ResourceServerID: OAuth2 Resource Server ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OAuth2ResourceServerID: String
        # @param McpServersNum: 绑定mcpServer数量
        # @type McpServersNum: Integer
        # @param ModelServicesNum: 绑定的模型服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelServicesNum: Integer

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :Description, :Status, :CreateTime, :UpdateTime, :AuthType, :ApiKeys, :SecretKeys, :OAuth2ResourceServerID, :McpServersNum, :ModelServicesNum

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, description=nil, status=nil, createtime=nil, updatetime=nil, authtype=nil, apikeys=nil, secretkeys=nil, oauth2resourceserverid=nil, mcpserversnum=nil, modelservicesnum=nil)
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
        # @param AppID: 租户应用ID
        # @type AppID: Integer
        # @param Uin: 租户ID
        # @type Uin: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 凭据ID
        # @type ID: String
        # @param Name: 凭据名称
        # @type Name: String
        # @param Status: 状态
        # @type Status: String
        # @param RelateAgentAppNum: 关联应用数
        # @type RelateAgentAppNum: Integer
        # @param RelateMcpServerNum: 关联mcp数
        # @type RelateMcpServerNum: Integer
        # @param RelateModelNum: 关联模型数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelateModelNum: Integer
        # @param Content: 凭据内容
        # @type Content: :class:`Tencentcloud::Apis.v20240801.models.AgentCredentialContentDTO`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param LastUpdateTime: 修改时间
        # @type LastUpdateTime: String
        # @param Type: 类型
        # @type Type: String

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :Status, :RelateAgentAppNum, :RelateMcpServerNum, :RelateModelNum, :Content, :CreateTime, :LastUpdateTime, :Type

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, status=nil, relateagentappnum=nil, relatemcpservernum=nil, relatemodelnum=nil, content=nil, createtime=nil, lastupdatetime=nil, type=nil)
          @AppID = appid
          @Uin = uin
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @Status = status
          @RelateAgentAppNum = relateagentappnum
          @RelateMcpServerNum = relatemcpservernum
          @RelateModelNum = relatemodelnum
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
        # @param InstanceID: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param LabelIDs: 标签ID数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelIDs: Array
        # @param CategoryIDs: 目录ID数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryIDs: Array
        # @param TargetSelect: 负载方式，robin random consistentHash
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSelect: String
        # @param TargetHosts: 目标服务器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHosts: Array
        # @param HttpProtocolType: 后端协议：http https
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: 证书检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckTargetCertsError: Boolean
        # @param TargetPath: 目标路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPath: String
        # @param InvokeLimitConfigStatus: 流量控制状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: 流量控制配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param IpWhiteStatus: IP白名单开启状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteConfig: IP白名单配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpWhiteConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param IpBlackStatus: IP黑名单开启状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpBlackStatus: Boolean
        # @param IpBlackConfig: IP黑名单配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpBlackConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param ID: mcp server ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Url: 预览地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param App: 应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type App: :class:`Tencentcloud::Apis.v20240801.models.IDNameVO`
        # @param Catalogs: 目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalogs: Array
        # @param Labels: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdateTime: 最后修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param AppID: 用户appID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: Integer
        # @param Uin: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param CustomHttpHost: 自定义host
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomHttpHost: String
        # @param HttpHostType:  Http 请求host类型 useRequestHost 保持源请求host targetHost 修正为源站host  customHost 自定义host
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpHostType: String
        # @param Timeout: 请求的超时时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param Mode: mcp server模式
        # @type Mode: String
        # @param McpVersion: mcp version
        # @type McpVersion: String
        # @param WrapServices: 封装模式下绑定的服务ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WrapServices: Array
        # @param ToolNum: 工具数量
        # @type ToolNum: Integer
        # @param McpSecurityRulesVO: 安全规则集响应
        # @type McpSecurityRulesVO: Array
        # @param ToolConfigs: 真实工具级别配置，实时拉取了tool/list做渲染的，如果tool/list不通，就拉不到。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolConfigs: Array
        # @param UrlObj: 访问URL
        # @type UrlObj: :class:`Tencentcloud::Apis.v20240801.models.McpUrlObj`
        # @param ToolMessage: 后端mcp服务是否正常
        # @type ToolMessage: String
        # @param Tools: 后端mcp服务的工具列表
        # @type Tools: Array
        # @param WrapPaasID: 封装的API分组ID
        # @type WrapPaasID: String
        # @param RelateAgentAppNum: 关联的agentApp数量
        # @type RelateAgentAppNum: Integer
        # @param PluginConfigs: 插件配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginConfigs: Array

        attr_accessor :InstanceID, :Name, :Description, :LabelIDs, :CategoryIDs, :TargetSelect, :TargetHosts, :HttpProtocolType, :CheckTargetCertsError, :TargetPath, :InvokeLimitConfigStatus, :InvokeLimitConfig, :IpWhiteStatus, :IpWhiteConfig, :IpBlackStatus, :IpBlackConfig, :ID, :Status, :Url, :App, :Catalogs, :Labels, :CreateTime, :LastUpdateTime, :AppID, :Uin, :CustomHttpHost, :HttpHostType, :Timeout, :Mode, :McpVersion, :WrapServices, :ToolNum, :McpSecurityRulesVO, :ToolConfigs, :UrlObj, :ToolMessage, :Tools, :WrapPaasID, :RelateAgentAppNum, :PluginConfigs

        def initialize(instanceid=nil, name=nil, description=nil, labelids=nil, categoryids=nil, targetselect=nil, targethosts=nil, httpprotocoltype=nil, checktargetcertserror=nil, targetpath=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, ipwhitestatus=nil, ipwhiteconfig=nil, ipblackstatus=nil, ipblackconfig=nil, id=nil, status=nil, url=nil, app=nil, catalogs=nil, labels=nil, createtime=nil, lastupdatetime=nil, appid=nil, uin=nil, customhttphost=nil, httphosttype=nil, timeout=nil, mode=nil, mcpversion=nil, wrapservices=nil, toolnum=nil, mcpsecurityrulesvo=nil, toolconfigs=nil, urlobj=nil, toolmessage=nil, tools=nil, wrappaasid=nil, relateagentappnum=nil, pluginconfigs=nil)
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
        # @param AppID: 腾讯云AppID
        # @type AppID: Integer
        # @param Uin: 腾讯云Uin
        # @type Uin: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 模型ID
        # @type ID: String
        # @param Name: 模型名称
        # @type Name: String
        # @param CredentialID: 凭据ID
        # @type CredentialID: String
        # @param CredentialName: 凭据名称
        # @type CredentialName: String
        # @param HttpProtocolType: http协议类型
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: https时，是否校验目标证书
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: http协议版本：1.1/2.0
        # @type HttpProtocolVersion: String
        # @param TargetPath: 目标路径
        # @type TargetPath: String
        # @param TargetHosts: 目标器列表
        # @type TargetHosts: Array
        # @param ModelServiceCount: 被模型服务使用的个数
        # @type ModelServiceCount: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param LastUpdateTime: 最后修改时间
        # @type LastUpdateTime: String

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :CredentialID, :CredentialName, :HttpProtocolType, :CheckTargetCertsError, :HttpProtocolVersion, :TargetPath, :TargetHosts, :ModelServiceCount, :CreateTime, :LastUpdateTime

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, credentialid=nil, credentialname=nil, httpprotocoltype=nil, checktargetcertserror=nil, httpprotocolversion=nil, targetpath=nil, targethosts=nil, modelservicecount=nil, createtime=nil, lastupdatetime=nil)
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

        attr_accessor :AppID, :Uin, :InstanceID, :ID, :Name, :Description, :PubPath, :PathMatchType, :TargetModels, :ModelNames, :InvokeLimitConfigStatus, :InvokeLimitConfig, :CreateTime, :LastUpdateTime, :TokenLimitStatus, :TokenLimitConfig, :TmsStatus, :TmsConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackStatus, :IpBlackList, :PluginConfigs, :Timeout, :Status, :RelateAgentAppNum, :Url, :PromptModerateStatus, :PromptModerateConfig, :SensitiveDataCheckStatus, :SensitiveDataCheckConfig, :TargetSelect, :FindHostKeyMethod, :HostKeyHeaderName, :FallbackStatus, :FallbackModels

        def initialize(appid=nil, uin=nil, instanceid=nil, id=nil, name=nil, description=nil, pubpath=nil, pathmatchtype=nil, targetmodels=nil, modelnames=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, createtime=nil, lastupdatetime=nil, tokenlimitstatus=nil, tokenlimitconfig=nil, tmsstatus=nil, tmsconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblackstatus=nil, ipblacklist=nil, pluginconfigs=nil, timeout=nil, status=nil, relateagentappnum=nil, url=nil, promptmoderatestatus=nil, promptmoderateconfig=nil, sensitivedatacheckstatus=nil, sensitivedatacheckconfig=nil, targetselect=nil, findhostkeymethod=nil, hostkeyheadername=nil, fallbackstatus=nil, fallbackmodels=nil)
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
        end
      end

      # DescribeModelServices请求参数结构体
      class DescribeModelServicesRequest < TencentCloud::Common::AbstractModel
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
        # @param Status: 状态：normal，disabled
        # @type Status: String
        # @param Keyword: 关键词
        # @type Keyword: String
        # @param ModelID: 模型ID
        # @type ModelID: String
        # @param Sort: 排序
        # @type Sort: :class:`Tencentcloud::Apis.v20240801.models.DescribeModelServicesSort`

        attr_accessor :InstanceID, :Offset, :Limit, :IDs, :NotIDs, :Status, :Keyword, :ModelID, :Sort

        def initialize(instanceid=nil, offset=nil, limit=nil, ids=nil, notids=nil, status=nil, keyword=nil, modelid=nil, sort=nil)
          @InstanceID = instanceid
          @Offset = offset
          @Limit = limit
          @IDs = ids
          @NotIDs = notids
          @Status = status
          @Keyword = keyword
          @ModelID = modelid
          @Sort = sort
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
        end
      end

      # DescribeModelServices返回参数结构体
      class DescribeModelServicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果集
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
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 应用ID
        # @type ID: String
        # @param Name: 名称
        # @type Name: String
        # @param OAuth2ResourceServerID: OAuth2资源服务器ID
        # @type OAuth2ResourceServerID: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :InstanceID, :ID, :Name, :OAuth2ResourceServerID, :Description

        def initialize(instanceid=nil, id=nil, name=nil, oauth2resourceserverid=nil, description=nil)
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @OAuth2ResourceServerID = oauth2resourceserverid
          @Description = description
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
          @Name = params['Name']
          @OAuth2ResourceServerID = params['OAuth2ResourceServerID']
          @Description = params['Description']
        end
      end

      # ModifyAgentApp返回参数结构体
      class ModifyAgentAppResponse < TencentCloud::Common::AbstractModel
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
        # @param ID: mcp server ID
        # @type ID: String
        # @param Mode: 模式：proxy代理模式； wrap封装模式；
        # @type Mode: String
        # @param McpVersion: 版本号：2024-11-05 2025-03-26
        # @type McpVersion: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param WrapServices: 封装服务列表
        # @type WrapServices: Array
        # @param TargetSelect: 负载方式，robin random consistentHash
        # @type TargetSelect: String
        # @param TargetHosts: 目标服务器
        # @type TargetHosts: Array
        # @param HttpProtocolType: 后端协议：http https
        # @type HttpProtocolType: String
        # @param CheckTargetCertsError: 证书检查
        # @type CheckTargetCertsError: Boolean
        # @param TargetPath: 目标路径
        # @type TargetPath: String
        # @param InvokeLimitConfigStatus: 流量控制开启状态
        # @type InvokeLimitConfigStatus: Boolean
        # @param InvokeLimitConfig: 流量控制配置
        # @type InvokeLimitConfig: :class:`Tencentcloud::Apis.v20240801.models.InvokeLimitConfigDTO`
        # @param IpWhiteStatus: IP白名单开启状态
        # @type IpWhiteStatus: Boolean
        # @param IpWhiteConfig: IP白名单配置
        # @type IpWhiteConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param IpBlackStatus: IP黑名单开启状态
        # @type IpBlackStatus: Boolean
        # @param IpBlackConfig: IP黑名单配置
        # @type IpBlackConfig: :class:`Tencentcloud::Apis.v20240801.models.IpConfig`
        # @param TargetHostType: 目标Host类型 0 默认 1 vpc
        # @type TargetHostType: Integer
        # @param CustomHttpHost: 自定义host
        # @type CustomHttpHost: String
        # @param HttpHostType: Http 请求host类型：useRequestHost 保持源请求；host targetHost 修正为源站host； customHost 自定义host
        # @type HttpHostType: String
        # @param Timeout: 请求的超时时间
        # @type Timeout: Integer
        # @param McpSecurityRules: 安全规则集
        # @type McpSecurityRules: Array
        # @param ToolConfigs: 工具集配置（openapi可能会用到）
        # @type ToolConfigs: Array
        # @param WrapPaasID: 封装的API分组ID
        # @type WrapPaasID: String
        # @param PluginConfigs: 插件配置
        # @type PluginConfigs: Array

        attr_accessor :ID, :Mode, :McpVersion, :InstanceID, :Name, :Description, :WrapServices, :TargetSelect, :TargetHosts, :HttpProtocolType, :CheckTargetCertsError, :TargetPath, :InvokeLimitConfigStatus, :InvokeLimitConfig, :IpWhiteStatus, :IpWhiteConfig, :IpBlackStatus, :IpBlackConfig, :TargetHostType, :CustomHttpHost, :HttpHostType, :Timeout, :McpSecurityRules, :ToolConfigs, :WrapPaasID, :PluginConfigs

        def initialize(id=nil, mode=nil, mcpversion=nil, instanceid=nil, name=nil, description=nil, wrapservices=nil, targetselect=nil, targethosts=nil, httpprotocoltype=nil, checktargetcertserror=nil, targetpath=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, ipwhitestatus=nil, ipwhiteconfig=nil, ipblackstatus=nil, ipblackconfig=nil, targethosttype=nil, customhttphost=nil, httphosttype=nil, timeout=nil, mcpsecurityrules=nil, toolconfigs=nil, wrappaasid=nil, pluginconfigs=nil)
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
        end
      end

      # ModifyMcpServer返回参数结构体
      class ModifyMcpServerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModel请求参数结构体
      class ModifyModelRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例
        # @type InstanceID: String
        # @param ID: 模型ID
        # @type ID: String
        # @param Name: 模型名称
        # @type Name: String
        # @param HttpProtocolType: 协议类型：http/https
        # @type HttpProtocolType: String
        # @param TargetPath: 目标路径
        # @type TargetPath: String
        # @param TargetHosts: 目标服务器
        # @type TargetHosts: Array
        # @param CredentialID: 凭据ID
        # @type CredentialID: String
        # @param CheckTargetCertsError: https时，是否检查证书合法
        # @type CheckTargetCertsError: Boolean
        # @param HttpProtocolVersion: http协议版本：1.1/2.0
        # @type HttpProtocolVersion: String

        attr_accessor :InstanceID, :ID, :Name, :HttpProtocolType, :TargetPath, :TargetHosts, :CredentialID, :CheckTargetCertsError, :HttpProtocolVersion

        def initialize(instanceid=nil, id=nil, name=nil, httpprotocoltype=nil, targetpath=nil, targethosts=nil, credentialid=nil, checktargetcertserror=nil, httpprotocolversion=nil)
          @InstanceID = instanceid
          @ID = id
          @Name = name
          @HttpProtocolType = httpprotocoltype
          @TargetPath = targetpath
          @TargetHosts = targethosts
          @CredentialID = credentialid
          @CheckTargetCertsError = checktargetcertserror
          @HttpProtocolVersion = httpprotocolversion
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
        end
      end

      # ModifyModel返回参数结构体
      class ModifyModelResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :InstanceID, :ID, :Name, :Description, :TargetModels, :InvokeLimitConfigStatus, :InvokeLimitConfig, :TokenLimitStatus, :TokenLimitConfig, :TmsStatus, :TmsConfig, :IpWhiteStatus, :IpWhiteList, :IpBlackStatus, :IpBlackList, :PluginConfigs, :Timeout, :PromptModerateStatus, :PromptModerateConfig, :SensitiveDataCheckStatus, :SensitiveDataCheckConfig, :TargetSelect, :FindHostKeyMethod, :HostKeyHeaderName, :FallbackStatus, :FallbackModels

        def initialize(instanceid=nil, id=nil, name=nil, description=nil, targetmodels=nil, invokelimitconfigstatus=nil, invokelimitconfig=nil, tokenlimitstatus=nil, tokenlimitconfig=nil, tmsstatus=nil, tmsconfig=nil, ipwhitestatus=nil, ipwhitelist=nil, ipblackstatus=nil, ipblacklist=nil, pluginconfigs=nil, timeout=nil, promptmoderatestatus=nil, promptmoderateconfig=nil, sensitivedatacheckstatus=nil, sensitivedatacheckconfig=nil, targetselect=nil, findhostkeymethod=nil, hostkeyheadername=nil, fallbackstatus=nil, fallbackmodels=nil)
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
        # @param Action: 执行动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param InterceptMessage: 响应拦截内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InterceptMessage: String

        attr_accessor :Action, :InterceptMessage

        def initialize(action=nil, interceptmessage=nil)
          @Action = action
          @InterceptMessage = interceptmessage
        end

        def deserialize(params)
          @Action = params['Action']
          @InterceptMessage = params['InterceptMessage']
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

        attr_accessor :Action, :InterceptMessage, :CheckItems

        def initialize(action=nil, interceptmessage=nil, checkitems=nil)
          @Action = action
          @InterceptMessage = interceptmessage
          @CheckItems = checkitems
        end

        def deserialize(params)
          @Action = params['Action']
          @InterceptMessage = params['InterceptMessage']
          @CheckItems = params['CheckItems']
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

      # 内容安全配置
      class TmsConfigDTO < TencentCloud::Common::AbstractModel
        # @param Scope: 检测范围,请求/响应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: Array
        # @param Mode: 检测形式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param Action: 执行动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param MergeCount: 合并请求检测event数，联动Mode字段sync
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MergeCount: Integer
        # @param BizType: 风控策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: String
        # @param InterceptMessage: 响应拦截内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InterceptMessage: String

        attr_accessor :Scope, :Mode, :Action, :MergeCount, :BizType, :InterceptMessage

        def initialize(scope=nil, mode=nil, action=nil, mergecount=nil, biztype=nil, interceptmessage=nil)
          @Scope = scope
          @Mode = mode
          @Action = action
          @MergeCount = mergecount
          @BizType = biztype
          @InterceptMessage = interceptmessage
        end

        def deserialize(params)
          @Scope = params['Scope']
          @Mode = params['Mode']
          @Action = params['Action']
          @MergeCount = params['MergeCount']
          @BizType = params['BizType']
          @InterceptMessage = params['InterceptMessage']
        end
      end

      # Token限流配置
      class TokenLimitConfigDTO < TencentCloud::Common::AbstractModel
        # @param LimitRequestBody: 单次请求上限，k
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimitRequestBody: Integer
        # @param LimitWindows: 累次token总量消耗上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimitWindows: Array

        attr_accessor :LimitRequestBody, :LimitWindows

        def initialize(limitrequestbody=nil, limitwindows=nil)
          @LimitRequestBody = limitrequestbody
          @LimitWindows = limitwindows
        end

        def deserialize(params)
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

    end
  end
end

