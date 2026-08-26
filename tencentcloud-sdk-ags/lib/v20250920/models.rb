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
  module Ags
    module V20250920
      # API密钥简略信息
      class APIKeyInfo < TencentCloud::Common::AbstractModel
        # @param Name: API密钥名称
        # @type Name: String
        # @param KeyId: API密钥ID
        # @type KeyId: String
        # @param Status: 密钥状态。可以为API_KEY_STATUS_ACTIVE，或API_KEY_STATUS_INACTIVE
        # @type Status: String
        # @param MaskedKey: 隐藏部分字符的API密钥，方便用户辨认
        # @type MaskedKey: String
        # @param CreatedAt: API密钥创建时间
        # @type CreatedAt: String

        attr_accessor :Name, :KeyId, :Status, :MaskedKey, :CreatedAt

        def initialize(name=nil, keyid=nil, status=nil, maskedkey=nil, createdat=nil)
          @Name = name
          @KeyId = keyid
          @Status = status
          @MaskedKey = maskedkey
          @CreatedAt = createdat
        end

        def deserialize(params)
          @Name = params['Name']
          @KeyId = params['KeyId']
          @Status = params['Status']
          @MaskedKey = params['MaskedKey']
          @CreatedAt = params['CreatedAt']
        end
      end

      # AcquireDeploymentToken请求参数结构体
      class AcquireDeploymentTokenRequest < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>目标 ACTIVE Deployment 的稳定 ID。</p>
        # @type DeploymentId: String

        attr_accessor :DeploymentId

        def initialize(deploymentid=nil)
          @DeploymentId = deploymentid
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
        end
      end

      # AcquireDeploymentToken返回参数结构体
      class AcquireDeploymentTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: <p>只用于目标 Deployment 数据面入口的短期 bearer Token，格式为 dpt_ 加非空、无 padding 的 Base64URL opaque 后缀。</p>
        # @type Token: String
        # @param ExpiresAt: <p>Token 的绝对过期时间，UTC、秒精度 RFC3339 格式。</p>
        # @type ExpiresAt: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :ExpiresAt, :RequestId

        def initialize(token=nil, expiresat=nil, requestid=nil)
          @Token = token
          @ExpiresAt = expiresat
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @ExpiresAt = params['ExpiresAt']
          @RequestId = params['RequestId']
        end
      end

      # AcquireSandboxInstanceToken请求参数结构体
      class AcquireSandboxInstanceTokenRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>沙箱实例ID，生成的访问Token将仅可用于访问此沙箱实例</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # AcquireSandboxInstanceToken返回参数结构体
      class AcquireSandboxInstanceTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: <p>访问Token</p>
        # @type Token: String
        # @param ExpiresAt: <p>过期时间</p>
        # @type ExpiresAt: String
        # @param TrafficToken: <p>非管控面（envd）的访问Token</p>
        # @type TrafficToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :ExpiresAt, :TrafficToken, :RequestId

        def initialize(token=nil, expiresat=nil, traffictoken=nil, requestid=nil)
          @Token = token
          @ExpiresAt = expiresat
          @TrafficToken = traffictoken
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @ExpiresAt = params['ExpiresAt']
          @TrafficToken = params['TrafficToken']
          @RequestId = params['RequestId']
        end
      end

      # Deployment 对 Sandbox Instance 的亲和配置。
      class AffinityConfiguration < TencentCloud::Common::AbstractModel
        # @param Mode: <p>Affinity 模式。</p><p>枚举值：</p><ul><li>BEST_EFFORT：优先复用原 Instance，不可用时允许改选。</li><li>STRICT：只复用原 Instance，不可用时失败且不改选。</li><li>EXCLUSIVE：一个 Affinity ID 独占一个 Instance，不能迁移。</li></ul><p>缺失或空字符串表示关闭 Affinity。</p>
        # @type Mode: String
        # @param HeaderName: <p>请求和响应使用的 Affinity Header 名称。必须符合 HTTP field-name token 语法，长度为 1..128 个 ASCII 字节，且不能使用平台保留 Header。</p>
        # @type HeaderName: String

        attr_accessor :Mode, :HeaderName

        def initialize(mode=nil, headername=nil)
          @Mode = mode
          @HeaderName = headername
        end

        def deserialize(params)
          @Mode = params['Mode']
          @HeaderName = params['HeaderName']
        end
      end

      # 用于记录 Agent Bucket 的 Storage Source
      class AgentBucketStorageSource < TencentCloud::Common::AbstractModel
        # @param LibraryId: <p>用于传入 AgentBucket 的 LibraryID</p>
        # @type LibraryId: String
        # @param SpaceId: <p>用于传入 AgentBucket 的 spaceId</p>
        # @type SpaceId: String
        # @param AccessDomain: <p>用于传入 AgentBucket 的 AccessDomain</p>
        # @type AccessDomain: String

        attr_accessor :LibraryId, :SpaceId, :AccessDomain

        def initialize(libraryid=nil, spaceid=nil, accessdomain=nil)
          @LibraryId = libraryid
          @SpaceId = spaceid
          @AccessDomain = accessdomain
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @SpaceId = params['SpaceId']
          @AccessDomain = params['AccessDomain']
        end
      end

      # 沙箱工具日志推送CLS相关配置
      class CLSConfig < TencentCloud::Common::AbstractModel
        # @param TopicId: 沙箱工具日志推送所使用的CLS日志主题ID
        # @type TopicId: String

        attr_accessor :TopicId

        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # 文件存储配置
      class CfsStorageSource < TencentCloud::Common::AbstractModel
        # @param FileSystemId: CFS资源ID
        # @type FileSystemId: String
        # @param Path: CFS挂载路径
        # @type Path: String

        attr_accessor :FileSystemId, :Path

        def initialize(filesystemid=nil, path=nil)
          @FileSystemId = filesystemid
          @Path = path
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @Path = params['Path']
        end
      end

      # 桌面电脑环境类沙箱配置
      class ComputerConfiguration < TencentCloud::Common::AbstractModel
        # @param WAAConfiguration: <p>waa沙箱工具配置</p>
        # @type WAAConfiguration: :class:`Tencentcloud::Ags.v20250920.models.WAAConfiguration`

        attr_accessor :WAAConfiguration

        def initialize(waaconfiguration=nil)
          @WAAConfiguration = waaconfiguration
        end

        def deserialize(params)
          unless params['WAAConfiguration'].nil?
            @WAAConfiguration = WAAConfiguration.new
            @WAAConfiguration.deserialize(params['WAAConfiguration'])
          end
        end
      end

      # 沙箱实例对象存储挂载配置
      class CosStorageSource < TencentCloud::Common::AbstractModel
        # @param Endpoint: 对象存储访问域名
        # @type Endpoint: String
        # @param BucketName: 对象存储桶名称
        # @type BucketName: String
        # @param BucketPath: 对象存储桶路径，必须为以/起始的绝对路径
        # @type BucketPath: String

        attr_accessor :Endpoint, :BucketName, :BucketPath

        def initialize(endpoint=nil, bucketname=nil, bucketpath=nil)
          @Endpoint = endpoint
          @BucketName = bucketname
          @BucketPath = bucketpath
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @BucketName = params['BucketName']
          @BucketPath = params['BucketPath']
        end
      end

      # CreateAPIKey请求参数结构体
      class CreateAPIKeyRequest < TencentCloud::Common::AbstractModel
        # @param Name: API密钥名称，方便用户记忆
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # CreateAPIKey返回参数结构体
      class CreateAPIKeyResponse < TencentCloud::Common::AbstractModel
        # @param Name: 用户传入的API密钥名称，方便用户记忆
        # @type Name: String
        # @param APIKey: 生成的API密钥，仅返回此一次，后续无法获取
        # @type APIKey: String
        # @param KeyId: API密钥ID
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :APIKey, :KeyId, :RequestId

        def initialize(name=nil, apikey=nil, keyid=nil, requestid=nil)
          @Name = name
          @APIKey = apikey
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @APIKey = params['APIKey']
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDeployment请求参数结构体
      class CreateDeploymentRequest < TencentCloud::Common::AbstractModel
        # @param DeploymentName: <p>唯一的 Deployment 名称，必须符合 DNS-1123 命名规范，创建后不可修改。</p>
        # @type DeploymentName: String
        # @param ToolId: <p>用于关联 Sandbox Tool 的标识，格式为 sdt- 加 8 位小写 base36 字符。</p>
        # @type ToolId: String
        # @param ScalingConfiguration: <p>伸缩配置；省略的成员由服务端补全默认值。</p>
        # @type ScalingConfiguration: :class:`Tencentcloud::Ags.v20250920.models.ScalingConfiguration`
        # @param LifecycleConfiguration: <p>空闲生命周期配置；省略的成员由服务端补全默认值。</p>
        # @type LifecycleConfiguration: :class:`Tencentcloud::Ags.v20250920.models.LifecycleConfiguration`
        # @param AffinityConfiguration: <p>Affinity 配置；省略或空 Mode 表示不启用。</p>
        # @type AffinityConfiguration: :class:`Tencentcloud::Ags.v20250920.models.AffinityConfiguration`
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :DeploymentName, :ToolId, :ScalingConfiguration, :LifecycleConfiguration, :AffinityConfiguration, :Tags

        def initialize(deploymentname=nil, toolid=nil, scalingconfiguration=nil, lifecycleconfiguration=nil, affinityconfiguration=nil, tags=nil)
          @DeploymentName = deploymentname
          @ToolId = toolid
          @ScalingConfiguration = scalingconfiguration
          @LifecycleConfiguration = lifecycleconfiguration
          @AffinityConfiguration = affinityconfiguration
          @Tags = tags
        end

        def deserialize(params)
          @DeploymentName = params['DeploymentName']
          @ToolId = params['ToolId']
          unless params['ScalingConfiguration'].nil?
            @ScalingConfiguration = ScalingConfiguration.new
            @ScalingConfiguration.deserialize(params['ScalingConfiguration'])
          end
          unless params['LifecycleConfiguration'].nil?
            @LifecycleConfiguration = LifecycleConfiguration.new
            @LifecycleConfiguration.deserialize(params['LifecycleConfiguration'])
          end
          unless params['AffinityConfiguration'].nil?
            @AffinityConfiguration = AffinityConfiguration.new
            @AffinityConfiguration.deserialize(params['AffinityConfiguration'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateDeployment返回参数结构体
      class CreateDeploymentResponse < TencentCloud::Common::AbstractModel
        # @param Deployment: <p>已创建并完成默认值物化的 Deployment。</p>
        # @type Deployment: :class:`Tencentcloud::Ags.v20250920.models.Deployment`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deployment, :RequestId

        def initialize(deployment=nil, requestid=nil)
          @Deployment = deployment
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Deployment'].nil?
            @Deployment = Deployment.new
            @Deployment.deserialize(params['Deployment'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePreCacheImageTask请求参数结构体
      class CreatePreCacheImageTaskRequest < TencentCloud::Common::AbstractModel
        # @param Image: <p>镜像地址</p>
        # @type Image: String
        # @param ImageRegistryType: <p>镜像仓库类型：<code>enterprise</code>、<code>personal</code>、<code>custom</code></p><p>枚举值：</p><ul><li>enterprise： tcr 企业容器镜像服务</li><li>personal： ccr 个人容器镜像服务</li></ul>
        # @type ImageRegistryType: String

        attr_accessor :Image, :ImageRegistryType

        def initialize(image=nil, imageregistrytype=nil)
          @Image = image
          @ImageRegistryType = imageregistrytype
        end

        def deserialize(params)
          @Image = params['Image']
          @ImageRegistryType = params['ImageRegistryType']
        end
      end

      # CreatePreCacheImageTask返回参数结构体
      class CreatePreCacheImageTaskResponse < TencentCloud::Common::AbstractModel
        # @param Image: <p>镜像地址</p>
        # @type Image: String
        # @param ImageDigest: <p>镜像 Digest</p>
        # @type ImageDigest: String
        # @param ImageRegistryType: <p>镜像仓库类型：<code>enterprise</code>、<code>personal</code>。</p>
        # @type ImageRegistryType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Image, :ImageDigest, :ImageRegistryType, :RequestId

        def initialize(image=nil, imagedigest=nil, imageregistrytype=nil, requestid=nil)
          @Image = image
          @ImageDigest = imagedigest
          @ImageRegistryType = imageregistrytype
          @RequestId = requestid
        end

        def deserialize(params)
          @Image = params['Image']
          @ImageDigest = params['ImageDigest']
          @ImageRegistryType = params['ImageRegistryType']
          @RequestId = params['RequestId']
        end
      end

      # CreateSandboxTool请求参数结构体
      class CreateSandboxToolRequest < TencentCloud::Common::AbstractModel
        # @param ToolName: <p>沙箱工具名称，长度 1-50 字符，支持英文、数字、下划线和连接线。同一 AppId 下沙箱工具名称必须唯一</p>
        # @type ToolName: String
        # @param ToolType: <p>沙箱工具类型，目前支持：browser、code-interpreter、custom等</p><p>枚举值：</p><ul><li>browser： browser</li><li>code-interpreter： code-interpreter</li><li>mobile： mobile</li><li>osworld： osworld</li><li>custom： custom</li><li>swebench： swebench</li><li>aio： aio</li><li>android-world： android-world</li><li>waa： waa</li></ul>
        # @type ToolType: String
        # @param NetworkConfiguration: <p>网络配置</p>
        # @type NetworkConfiguration: :class:`Tencentcloud::Ags.v20250920.models.NetworkConfiguration`
        # @param Description: <p>沙箱工具描述，最大长度 200 字符</p>
        # @type Description: String
        # @param DefaultTimeout: <p>默认超时时间，支持格式：5m、300s、1h 等，不指定则使用系统默认值（5 分钟）。最大 24 小时</p>
        # @type DefaultTimeout: String
        # @param Tags: <p>标签规格，为沙箱工具绑定标签，支持多种资源类型的标签绑定</p>
        # @type Tags: Array
        # @param ClientToken: <p>幂等性 Token，长度不超过 64 字符</p>
        # @type ClientToken: String
        # @param RoleArn: <p>角色ARN</p>
        # @type RoleArn: String
        # @param StorageMounts: <p>沙箱工具存储配置</p>
        # @type StorageMounts: Array
        # @param CustomConfiguration: <p>沙箱工具自定义配置</p>
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfiguration`
        # @param ComputerConfiguration: <p>桌面电脑环境类沙箱配置</p>
        # @type ComputerConfiguration: :class:`Tencentcloud::Ags.v20250920.models.ComputerConfiguration`
        # @param LogConfiguration: <p>沙箱工具日志推送相关配置</p>
        # @type LogConfiguration: :class:`Tencentcloud::Ags.v20250920.models.LogConfiguration`
        # @param Persistent: <p>常驻沙箱标识</p>
        # @type Persistent: Boolean

        attr_accessor :ToolName, :ToolType, :NetworkConfiguration, :Description, :DefaultTimeout, :Tags, :ClientToken, :RoleArn, :StorageMounts, :CustomConfiguration, :ComputerConfiguration, :LogConfiguration, :Persistent

        def initialize(toolname=nil, tooltype=nil, networkconfiguration=nil, description=nil, defaulttimeout=nil, tags=nil, clienttoken=nil, rolearn=nil, storagemounts=nil, customconfiguration=nil, computerconfiguration=nil, logconfiguration=nil, persistent=nil)
          @ToolName = toolname
          @ToolType = tooltype
          @NetworkConfiguration = networkconfiguration
          @Description = description
          @DefaultTimeout = defaulttimeout
          @Tags = tags
          @ClientToken = clienttoken
          @RoleArn = rolearn
          @StorageMounts = storagemounts
          @CustomConfiguration = customconfiguration
          @ComputerConfiguration = computerconfiguration
          @LogConfiguration = logconfiguration
          @Persistent = persistent
        end

        def deserialize(params)
          @ToolName = params['ToolName']
          @ToolType = params['ToolType']
          unless params['NetworkConfiguration'].nil?
            @NetworkConfiguration = NetworkConfiguration.new
            @NetworkConfiguration.deserialize(params['NetworkConfiguration'])
          end
          @Description = params['Description']
          @DefaultTimeout = params['DefaultTimeout']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ClientToken = params['ClientToken']
          @RoleArn = params['RoleArn']
          unless params['StorageMounts'].nil?
            @StorageMounts = []
            params['StorageMounts'].each do |i|
              storagemount_tmp = StorageMount.new
              storagemount_tmp.deserialize(i)
              @StorageMounts << storagemount_tmp
            end
          end
          unless params['CustomConfiguration'].nil?
            @CustomConfiguration = CustomConfiguration.new
            @CustomConfiguration.deserialize(params['CustomConfiguration'])
          end
          unless params['ComputerConfiguration'].nil?
            @ComputerConfiguration = ComputerConfiguration.new
            @ComputerConfiguration.deserialize(params['ComputerConfiguration'])
          end
          unless params['LogConfiguration'].nil?
            @LogConfiguration = LogConfiguration.new
            @LogConfiguration.deserialize(params['LogConfiguration'])
          end
          @Persistent = params['Persistent']
        end
      end

      # CreateSandboxTool返回参数结构体
      class CreateSandboxToolResponse < TencentCloud::Common::AbstractModel
        # @param ToolId: <p>创建的沙箱工具 ID</p>
        # @type ToolId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ToolId, :RequestId

        def initialize(toolid=nil, requestid=nil)
          @ToolId = toolid
          @RequestId = requestid
        end

        def deserialize(params)
          @ToolId = params['ToolId']
          @RequestId = params['RequestId']
        end
      end

      # 沙箱自定义配置
      class CustomConfiguration < TencentCloud::Common::AbstractModel
        # @param Image: <p>镜像地址</p>
        # @type Image: String
        # @param ImageRegistryType: <p>镜像仓库类型：<code>enterprise</code>、<code>personal</code>、<code>custom</code></p><p>枚举值：</p><ul><li>enterprise： tcr 企业容器镜像服务</li><li>personal： ccr 个人容器镜像服务</li></ul>
        # @type ImageRegistryType: String
        # @param Command: <p>启动命令</p>
        # @type Command: Array
        # @param Args: <p>启动参数</p>
        # @type Args: Array
        # @param Env: <p>环境变量</p>
        # @type Env: Array
        # @param Ports: <p>端口配置</p>
        # @type Ports: Array
        # @param Resources: <p>资源配置</p>
        # @type Resources: :class:`Tencentcloud::Ags.v20250920.models.ResourceConfiguration`
        # @param Probe: <p>探针配置</p>
        # @type Probe: :class:`Tencentcloud::Ags.v20250920.models.ProbeConfiguration`
        # @param DNSConfig: <p>沙箱 DNS 配置</p>
        # @type DNSConfig: :class:`Tencentcloud::Ags.v20250920.models.DNSConfig`

        attr_accessor :Image, :ImageRegistryType, :Command, :Args, :Env, :Ports, :Resources, :Probe, :DNSConfig

        def initialize(image=nil, imageregistrytype=nil, command=nil, args=nil, env=nil, ports=nil, resources=nil, probe=nil, dnsconfig=nil)
          @Image = image
          @ImageRegistryType = imageregistrytype
          @Command = command
          @Args = args
          @Env = env
          @Ports = ports
          @Resources = resources
          @Probe = probe
          @DNSConfig = dnsconfig
        end

        def deserialize(params)
          @Image = params['Image']
          @ImageRegistryType = params['ImageRegistryType']
          @Command = params['Command']
          @Args = params['Args']
          unless params['Env'].nil?
            @Env = []
            params['Env'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @Env << envvar_tmp
            end
          end
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              portconfiguration_tmp = PortConfiguration.new
              portconfiguration_tmp.deserialize(i)
              @Ports << portconfiguration_tmp
            end
          end
          unless params['Resources'].nil?
            @Resources = ResourceConfiguration.new
            @Resources.deserialize(params['Resources'])
          end
          unless params['Probe'].nil?
            @Probe = ProbeConfiguration.new
            @Probe.deserialize(params['Probe'])
          end
          unless params['DNSConfig'].nil?
            @DNSConfig = DNSConfig.new
            @DNSConfig.deserialize(params['DNSConfig'])
          end
        end
      end

      # 沙箱自定义配置详细信息
      class CustomConfigurationDetail < TencentCloud::Common::AbstractModel
        # @param Image: <p>镜像地址</p>
        # @type Image: String
        # @param ImageRegistryType: <p>镜像仓库类型：<code>enterprise</code>、<code>personal</code>、<code>custom</code>。</p><p>枚举值：</p><ul><li>enterprise： TCR 企业容器镜像服务</li><li>personal： CCR 个人容器镜像服务</li></ul>
        # @type ImageRegistryType: String
        # @param ImageDigest: <p>镜像 Digest</p>
        # @type ImageDigest: String
        # @param Command: <p>启动命令</p>
        # @type Command: Array
        # @param Args: <p>启动参数</p>
        # @type Args: Array
        # @param Env: <p>环境变量</p>
        # @type Env: Array
        # @param Ports: <p>端口配置</p>
        # @type Ports: Array
        # @param Resources: <p>资源配置</p>
        # @type Resources: :class:`Tencentcloud::Ags.v20250920.models.ResourceConfiguration`
        # @param Probe: <p>探针配置</p>
        # @type Probe: :class:`Tencentcloud::Ags.v20250920.models.ProbeConfiguration`
        # @param DNSConfig: <p>沙箱 DNS 配置</p>
        # @type DNSConfig: :class:`Tencentcloud::Ags.v20250920.models.DNSConfig`

        attr_accessor :Image, :ImageRegistryType, :ImageDigest, :Command, :Args, :Env, :Ports, :Resources, :Probe, :DNSConfig

        def initialize(image=nil, imageregistrytype=nil, imagedigest=nil, command=nil, args=nil, env=nil, ports=nil, resources=nil, probe=nil, dnsconfig=nil)
          @Image = image
          @ImageRegistryType = imageregistrytype
          @ImageDigest = imagedigest
          @Command = command
          @Args = args
          @Env = env
          @Ports = ports
          @Resources = resources
          @Probe = probe
          @DNSConfig = dnsconfig
        end

        def deserialize(params)
          @Image = params['Image']
          @ImageRegistryType = params['ImageRegistryType']
          @ImageDigest = params['ImageDigest']
          @Command = params['Command']
          @Args = params['Args']
          unless params['Env'].nil?
            @Env = []
            params['Env'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @Env << envvar_tmp
            end
          end
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              portconfiguration_tmp = PortConfiguration.new
              portconfiguration_tmp.deserialize(i)
              @Ports << portconfiguration_tmp
            end
          end
          unless params['Resources'].nil?
            @Resources = ResourceConfiguration.new
            @Resources.deserialize(params['Resources'])
          end
          unless params['Probe'].nil?
            @Probe = ProbeConfiguration.new
            @Probe.deserialize(params['Probe'])
          end
          unless params['DNSConfig'].nil?
            @DNSConfig = DNSConfig.new
            @DNSConfig.deserialize(params['DNSConfig'])
          end
        end
      end

      # 沙箱自定义 dns 配置
      class DNSConfig < TencentCloud::Common::AbstractModel
        # @param Servers: <p>DNS 服务器地址</p><p>参数格式：需要有效 IP 地址</p><p>默认值：10.0.0.1</p>
        # @type Servers: Array
        # @param Searches: <p>搜索域(对应 resolv.conf 的 search 指令)</p>
        # @type Searches: Array
        # @param Options: <p>配置项(对应  resolv.conf 选项)</p>
        # @type Options: Array

        attr_accessor :Servers, :Searches, :Options

        def initialize(servers=nil, searches=nil, options=nil)
          @Servers = servers
          @Searches = searches
          @Options = options
        end

        def deserialize(params)
          @Servers = params['Servers']
          @Searches = params['Searches']
          @Options = params['Options']
        end
      end

      # DeleteAPIKey请求参数结构体
      class DeleteAPIKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 需要删除的API密钥ID
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DeleteAPIKey返回参数结构体
      class DeleteAPIKeyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDeployment请求参数结构体
      class DeleteDeploymentRequest < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>待删除的 Deployment ID。</p>
        # @type DeploymentId: String

        attr_accessor :DeploymentId

        def initialize(deploymentid=nil)
          @DeploymentId = deploymentid
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
        end
      end

      # DeleteDeployment返回参数结构体
      class DeleteDeploymentResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSandboxTool请求参数结构体
      class DeleteSandboxToolRequest < TencentCloud::Common::AbstractModel
        # @param ToolId: 沙箱工具ID
        # @type ToolId: String

        attr_accessor :ToolId

        def initialize(toolid=nil)
          @ToolId = toolid
        end

        def deserialize(params)
          @ToolId = params['ToolId']
        end
      end

      # DeleteSandboxTool返回参数结构体
      class DeleteSandboxToolResponse < TencentCloud::Common::AbstractModel
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

      # Deployment 稳定访问入口定义
      class Deployment < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>Deployment 稳定 ID，格式为 dpl- 加 8 位小写 base36 字符。</p>
        # @type DeploymentId: String
        # @param DeploymentName: <p>唯一且创建后不可修改的名称，必须符合 DNS-1123 命名规范。</p>
        # @type DeploymentName: String
        # @param ToolId: <p>用于关联 Sandbox Tool 的标识，格式为 sdt- 加 8 位小写 base36 字符。</p>
        # @type ToolId: String
        # @param ScalingConfiguration: <p>完整的活跃容量配置。</p>
        # @type ScalingConfiguration: :class:`Tencentcloud::Ags.v20250920.models.ScalingConfiguration`
        # @param LifecycleConfiguration: <p>完整的空闲生命周期配置。</p>
        # @type LifecycleConfiguration: :class:`Tencentcloud::Ags.v20250920.models.LifecycleConfiguration`
        # @param AffinityConfiguration: <p>可选 Affinity 配置；未启用时省略。</p>
        # @type AffinityConfiguration: :class:`Tencentcloud::Ags.v20250920.models.AffinityConfiguration`
        # @param Status: <p>Deployment 控制面状态。</p><p>枚举值：</p><ul><li>ACTIVE：入口可用。</li><li>DELETING：入口已关闭并正在异步删除。</li><li>DELETE_FAILED：最近一次异步删除失败，可再次调用 DeleteDeployment。</li></ul>
        # @type Status: String
        # @param StatusReason: <p>DELETE_FAILED 状态下 1..1024 个 UTF-8 字节的安全失败摘要，格式为 {Code}[.{SubCode}]: {Message}；其他状态省略。</p>
        # @type StatusReason: String
        # @param CreatedTime: <p>创建时间，UTC、秒精度 RFC3339 格式。</p>
        # @type CreatedTime: String
        # @param UpdatedTime: <p>最近一次成功公共配置写入或 Deployment 状态迁移时间，UTC、秒精度 RFC3339 格式。</p>
        # @type UpdatedTime: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :DeploymentId, :DeploymentName, :ToolId, :ScalingConfiguration, :LifecycleConfiguration, :AffinityConfiguration, :Status, :StatusReason, :CreatedTime, :UpdatedTime, :Tags

        def initialize(deploymentid=nil, deploymentname=nil, toolid=nil, scalingconfiguration=nil, lifecycleconfiguration=nil, affinityconfiguration=nil, status=nil, statusreason=nil, createdtime=nil, updatedtime=nil, tags=nil)
          @DeploymentId = deploymentid
          @DeploymentName = deploymentname
          @ToolId = toolid
          @ScalingConfiguration = scalingconfiguration
          @LifecycleConfiguration = lifecycleconfiguration
          @AffinityConfiguration = affinityconfiguration
          @Status = status
          @StatusReason = statusreason
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @Tags = tags
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
          @DeploymentName = params['DeploymentName']
          @ToolId = params['ToolId']
          unless params['ScalingConfiguration'].nil?
            @ScalingConfiguration = ScalingConfiguration.new
            @ScalingConfiguration.deserialize(params['ScalingConfiguration'])
          end
          unless params['LifecycleConfiguration'].nil?
            @LifecycleConfiguration = LifecycleConfiguration.new
            @LifecycleConfiguration.deserialize(params['LifecycleConfiguration'])
          end
          unless params['AffinityConfiguration'].nil?
            @AffinityConfiguration = AffinityConfiguration.new
            @AffinityConfiguration.deserialize(params['AffinityConfiguration'])
          end
          @Status = params['Status']
          @StatusReason = params['StatusReason']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # DescribeAPIKeyList请求参数结构体
      class DescribeAPIKeyListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAPIKeyList返回参数结构体
      class DescribeAPIKeyListResponse < TencentCloud::Common::AbstractModel
        # @param APIKeySet: API密钥简略信息列表。
        # @type APIKeySet: Array
        # @param TotalCount: 列表中API密钥数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :APIKeySet, :TotalCount, :RequestId

        def initialize(apikeyset=nil, totalcount=nil, requestid=nil)
          @APIKeySet = apikeyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['APIKeySet'].nil?
            @APIKeySet = []
            params['APIKeySet'].each do |i|
              apikeyinfo_tmp = APIKeyInfo.new
              apikeyinfo_tmp.deserialize(i)
              @APIKeySet << apikeyinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeploymentList请求参数结构体
      class DescribeDeploymentListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: <p>分页偏移量，默认 0，必须大于等于 0。</p>
        # @type Offset: Integer
        # @param Limit: <p>分页返回数量，默认 20，范围 1..200。</p>
        # @type Limit: Integer
        # @param Filters: <p>查询过滤条件。</p><p>Filter.Name 枚举值：</p><ul><li>deployment-id：按 DeploymentId 精确匹配</li><li>deployment-name：按 DeploymentName 精确匹配</li><li>deployment-name-like：按 DeploymentName 进行普通文本包含匹配，%、_ 等字符没有通配语义</li><li>tool-id：按 ToolId 精确匹配</li><li>status：按 Deployment 状态精确匹配，支持 ACTIVE、DELETING、DELETE_FAILED</li></ul><p>所有匹配均区分大小写。不同 Filter 之间为 AND，同一 Filter 的 Values 之间为 OR。</p>
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
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
        end
      end

      # DescribeDeploymentList返回参数结构体
      class DescribeDeploymentListResponse < TencentCloud::Common::AbstractModel
        # @param DeploymentSet: <p>当前页完整 Deployment；无匹配时为空数组。</p>
        # @type DeploymentSet: Array
        # @param TotalCount: <p>应用 Filters 后、分页前的结果总数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeploymentSet, :TotalCount, :RequestId

        def initialize(deploymentset=nil, totalcount=nil, requestid=nil)
          @DeploymentSet = deploymentset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeploymentSet'].nil?
            @DeploymentSet = []
            params['DeploymentSet'].each do |i|
              deployment_tmp = Deployment.new
              deployment_tmp.deserialize(i)
              @DeploymentSet << deployment_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployment请求参数结构体
      class DescribeDeploymentRequest < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>待查询的 Deployment ID。</p>
        # @type DeploymentId: String

        attr_accessor :DeploymentId

        def initialize(deploymentid=nil)
          @DeploymentId = deploymentid
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
        end
      end

      # DescribeDeployment返回参数结构体
      class DescribeDeploymentResponse < TencentCloud::Common::AbstractModel
        # @param Deployment: <p>完整 Deployment。</p>
        # @type Deployment: :class:`Tencentcloud::Ags.v20250920.models.Deployment`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deployment, :RequestId

        def initialize(deployment=nil, requestid=nil)
          @Deployment = deployment
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Deployment'].nil?
            @Deployment = Deployment.new
            @Deployment.deserialize(params['Deployment'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePreCacheImageTask请求参数结构体
      class DescribePreCacheImageTaskRequest < TencentCloud::Common::AbstractModel
        # @param Image: <p>镜像地址</p>
        # @type Image: String
        # @param ImageDigest: <p>镜像 Digest</p>
        # @type ImageDigest: String
        # @param ImageRegistryType: <p>镜像仓库类型：<code>enterprise</code>、<code>personal</code>、<code>custom</code> 。</p><p>枚举值：</p><ul><li>enterprise： tcr 企业容器镜像服务</li><li>personal： ccr 个人容器镜像服务</li></ul>
        # @type ImageRegistryType: String

        attr_accessor :Image, :ImageDigest, :ImageRegistryType

        def initialize(image=nil, imagedigest=nil, imageregistrytype=nil)
          @Image = image
          @ImageDigest = imagedigest
          @ImageRegistryType = imageregistrytype
        end

        def deserialize(params)
          @Image = params['Image']
          @ImageDigest = params['ImageDigest']
          @ImageRegistryType = params['ImageRegistryType']
        end
      end

      # DescribePreCacheImageTask返回参数结构体
      class DescribePreCacheImageTaskResponse < TencentCloud::Common::AbstractModel
        # @param Image: <p>镜像地址</p>
        # @type Image: String
        # @param ImageDigest: <p>镜像 Digest</p>
        # @type ImageDigest: String
        # @param ImageRegistryType: <p>镜像仓库类型：<code>enterprise</code>、<code>personal</code>。</p>
        # @type ImageRegistryType: String
        # @param Status: <p>镜像预热状态</p>
        # @type Status: String
        # @param Message: <p>镜像预热状态描述</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Image, :ImageDigest, :ImageRegistryType, :Status, :Message, :RequestId

        def initialize(image=nil, imagedigest=nil, imageregistrytype=nil, status=nil, message=nil, requestid=nil)
          @Image = image
          @ImageDigest = imagedigest
          @ImageRegistryType = imageregistrytype
          @Status = status
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Image = params['Image']
          @ImageDigest = params['ImageDigest']
          @ImageRegistryType = params['ImageRegistryType']
          @Status = params['Status']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSandboxInstanceList请求参数结构体
      class DescribeSandboxInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 沙箱实例ID列表，指定要查询的实例。如果为空则查询所有实例。最大支持100个ID
        # @type InstanceIds: Array
        # @param ToolId: 沙箱工具ID，指定时查询该沙箱模板下的实例，为空则查询所有沙箱模板的实例
        # @type ToolId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :InstanceIds, :ToolId, :Offset, :Limit, :Filters

        def initialize(instanceids=nil, toolid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceIds = instanceids
          @ToolId = toolid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ToolId = params['ToolId']
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

      # DescribeSandboxInstanceList返回参数结构体
      class DescribeSandboxInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 沙箱实例列表
        # @type InstanceSet: Array
        # @param TotalCount: 符合条件的实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :RequestId

        def initialize(instanceset=nil, totalcount=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              sandboxinstance_tmp = SandboxInstance.new
              sandboxinstance_tmp.deserialize(i)
              @InstanceSet << sandboxinstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSandboxToolList请求参数结构体
      class DescribeSandboxToolListRequest < TencentCloud::Common::AbstractModel
        # @param ToolIds: 沙箱工具ID列表，指定要查询的工具。如果为空则查询所有工具。最大支持100个ID
        # @type ToolIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :ToolIds, :Offset, :Limit, :Filters

        def initialize(toolids=nil, offset=nil, limit=nil, filters=nil)
          @ToolIds = toolids
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ToolIds = params['ToolIds']
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

      # DescribeSandboxToolList返回参数结构体
      class DescribeSandboxToolListResponse < TencentCloud::Common::AbstractModel
        # @param SandboxToolSet: 沙箱工具列表
        # @type SandboxToolSet: Array
        # @param TotalCount: 符合条件的沙箱工具总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SandboxToolSet, :TotalCount, :RequestId

        def initialize(sandboxtoolset=nil, totalcount=nil, requestid=nil)
          @SandboxToolSet = sandboxtoolset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SandboxToolSet'].nil?
            @SandboxToolSet = []
            params['SandboxToolSet'].each do |i|
              sandboxtool_tmp = SandboxTool.new
              sandboxtool_tmp.deserialize(i)
              @SandboxToolSet << sandboxtool_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 环境变量
      class EnvVar < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量名
        # @type Name: String
        # @param Value: 环境变量值
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

      # 过滤列表规则
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
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

      # HTTP GET 探测动作配置
      class HttpGetAction < TencentCloud::Common::AbstractModel
        # @param Path: 路径
        # @type Path: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Scheme: 协议
        # @type Scheme: String

        attr_accessor :Path, :Port, :Scheme

        def initialize(path=nil, port=nil, scheme=nil)
          @Path = path
          @Port = port
          @Scheme = scheme
        end

        def deserialize(params)
          @Path = params['Path']
          @Port = params['Port']
          @Scheme = params['Scheme']
        end
      end

      # 镜像卷挂载源配置
      class ImageStorageSource < TencentCloud::Common::AbstractModel
        # @param Reference: <p>镜像地址</p>
        # @type Reference: String
        # @param ImageRegistryType: <p>镜像仓库类型：<code>enterprise</code>、<code>personal</code>。</p>
        # @type ImageRegistryType: String
        # @param SubPath: <p>镜像内部的路径</p>
        # @type SubPath: String
        # @param Digest: <p>镜像 Digest，请求时无需传入</p>
        # @type Digest: String

        attr_accessor :Reference, :ImageRegistryType, :SubPath, :Digest

        def initialize(reference=nil, imageregistrytype=nil, subpath=nil, digest=nil)
          @Reference = reference
          @ImageRegistryType = imageregistrytype
          @SubPath = subpath
          @Digest = digest
        end

        def deserialize(params)
          @Reference = params['Reference']
          @ImageRegistryType = params['ImageRegistryType']
          @SubPath = params['SubPath']
          @Digest = params['Digest']
        end
      end

      # Deployment 管理的 Sandbox Instance 的空闲生命周期配置
      class LifecycleConfiguration < TencentCloud::Common::AbstractModel
        # @param IdleTimeoutSeconds: <p>Sandbox Instance 没有活跃 Deployment 请求或连接后进入 IdleAction 的秒数，必须大于等于 30。</p>
        # @type IdleTimeoutSeconds: Integer
        # @param IdleAction: <p>空闲处理动作。</p><p>枚举值：</p><ul><li>STOP：停止并释放 Sandbox Instance。</li><li>PAUSE：暂停并保留 Sandbox Instance 状态。</li></ul>
        # @type IdleAction: String

        attr_accessor :IdleTimeoutSeconds, :IdleAction

        def initialize(idletimeoutseconds=nil, idleaction=nil)
          @IdleTimeoutSeconds = idletimeoutseconds
          @IdleAction = idleaction
        end

        def deserialize(params)
          @IdleTimeoutSeconds = params['IdleTimeoutSeconds']
          @IdleAction = params['IdleAction']
        end
      end

      # 沙箱工具日志采集相关配置
      class LogConfiguration < TencentCloud::Common::AbstractModel
        # @param CLSConfig: <p>日志推送CLS的配置。</p>
        # @type CLSConfig: :class:`Tencentcloud::Ags.v20250920.models.CLSConfig`
        # @param LogSources: <p>日志源配置</p>
        # @type LogSources: :class:`Tencentcloud::Ags.v20250920.models.LogSources`

        attr_accessor :CLSConfig, :LogSources

        def initialize(clsconfig=nil, logsources=nil)
          @CLSConfig = clsconfig
          @LogSources = logsources
        end

        def deserialize(params)
          unless params['CLSConfig'].nil?
            @CLSConfig = CLSConfig.new
            @CLSConfig.deserialize(params['CLSConfig'])
          end
          unless params['LogSources'].nil?
            @LogSources = LogSources.new
            @LogSources.deserialize(params['LogSources'])
          end
        end
      end

      # 日志源配置
      class LogSources < TencentCloud::Common::AbstractModel
        # @param Files: <p>需要采集的日志文件路径，必须是 /logs/ 目录下的文件，不支持子目录，最大支持 10 个文件。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Files: Array

        attr_accessor :Files

        def initialize(files=nil)
          @Files = files
        end

        def deserialize(params)
          @Files = params['Files']
        end
      end

      # metadata 项
      class MetadataVar < TencentCloud::Common::AbstractModel
        # @param Name: <p>沙箱元数据名</p>
        # @type Name: String
        # @param Value: <p>沙箱元数据值</p>
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

      # ModifyDeployment请求参数结构体
      class ModifyDeploymentRequest < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>待修改的 Deployment ID。</p>
        # @type DeploymentId: String
        # @param ScalingConfiguration: <p>完整替换伸缩配置；提供时必须包含全部三个成员。</p>
        # @type ScalingConfiguration: :class:`Tencentcloud::Ags.v20250920.models.ScalingConfiguration`
        # @param LifecycleConfiguration: <p>完整替换生命周期配置；提供时必须包含全部两个成员。</p>
        # @type LifecycleConfiguration: :class:`Tencentcloud::Ags.v20250920.models.LifecycleConfiguration`
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :DeploymentId, :ScalingConfiguration, :LifecycleConfiguration, :Tags

        def initialize(deploymentid=nil, scalingconfiguration=nil, lifecycleconfiguration=nil, tags=nil)
          @DeploymentId = deploymentid
          @ScalingConfiguration = scalingconfiguration
          @LifecycleConfiguration = lifecycleconfiguration
          @Tags = tags
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
          unless params['ScalingConfiguration'].nil?
            @ScalingConfiguration = ScalingConfiguration.new
            @ScalingConfiguration.deserialize(params['ScalingConfiguration'])
          end
          unless params['LifecycleConfiguration'].nil?
            @LifecycleConfiguration = LifecycleConfiguration.new
            @LifecycleConfiguration.deserialize(params['LifecycleConfiguration'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # ModifyDeployment返回参数结构体
      class ModifyDeploymentResponse < TencentCloud::Common::AbstractModel
        # @param Deployment: <p>修改后的完整 Deployment。</p>
        # @type Deployment: :class:`Tencentcloud::Ags.v20250920.models.Deployment`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deployment, :RequestId

        def initialize(deployment=nil, requestid=nil)
          @Deployment = deployment
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Deployment'].nil?
            @Deployment = Deployment.new
            @Deployment.deserialize(params['Deployment'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 沙箱实例存储挂载配置可选项，用于覆盖沙箱工具的存储配置的部分选项，并提供子路径挂载配置。
      class MountOption < TencentCloud::Common::AbstractModel
        # @param Name: 指定沙箱工具中的存储配置名称
        # @type Name: String
        # @param MountPath: 沙箱实例本地挂载路径（可选），默认继承工具中的存储配置
        # @type MountPath: String
        # @param SubPath: 沙箱实例存储挂载子路径（可选）
        # @type SubPath: String
        # @param ReadOnly: 沙箱实例存储挂载读写权限（可选），默认继承工具存储配置
        # @type ReadOnly: Boolean

        attr_accessor :Name, :MountPath, :SubPath, :ReadOnly

        def initialize(name=nil, mountpath=nil, subpath=nil, readonly=nil)
          @Name = name
          @MountPath = mountpath
          @SubPath = subpath
          @ReadOnly = readonly
        end

        def deserialize(params)
          @Name = params['Name']
          @MountPath = params['MountPath']
          @SubPath = params['SubPath']
          @ReadOnly = params['ReadOnly']
        end
      end

      # 沙箱网络配置
      class NetworkConfiguration < TencentCloud::Common::AbstractModel
        # @param NetworkMode: 网络模式（当前支持 PUBLIC, VPC, SANDBOX）
        # @type NetworkMode: String
        # @param VpcConfig: VPC网络相关配置
        # @type VpcConfig: :class:`Tencentcloud::Ags.v20250920.models.VPCConfig`

        attr_accessor :NetworkMode, :VpcConfig

        def initialize(networkmode=nil, vpcconfig=nil)
          @NetworkMode = networkmode
          @VpcConfig = vpcconfig
        end

        def deserialize(params)
          @NetworkMode = params['NetworkMode']
          unless params['VpcConfig'].nil?
            @VpcConfig = VPCConfig.new
            @VpcConfig.deserialize(params['VpcConfig'])
          end
        end
      end

      # PauseSandboxInstance请求参数结构体
      class PauseSandboxInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>沙箱实例ID</p>
        # @type InstanceId: String
        # @param Memory: <p>可选。带内存暂停，恢复后保留进程和内存状态。true=带内存；false=仅磁盘；不传=系统默认（当前默认 true，带内存）。</p>
        # @type Memory: Boolean

        attr_accessor :InstanceId, :Memory

        def initialize(instanceid=nil, memory=nil)
          @InstanceId = instanceid
          @Memory = memory
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
        end
      end

      # PauseSandboxInstance返回参数结构体
      class PauseSandboxInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceStatus: <p>目标沙箱实例当前的状态</p><p>枚举值：</p><ul><li>PAUSING： 正在暂停中</li><li>PAUSED： 已暂停</li><li>PAUSE_FAILED： 暂停失败</li></ul>
        # @type InstanceStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceStatus, :RequestId

        def initialize(instancestatus=nil, requestid=nil)
          @InstanceStatus = instancestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceStatus = params['InstanceStatus']
          @RequestId = params['RequestId']
        end
      end

      # 端口配置
      class PortConfiguration < TencentCloud::Common::AbstractModel
        # @param Name: 端口名
        # @type Name: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Protocol: 协议
        # @type Protocol: String

        attr_accessor :Name, :Port, :Protocol

        def initialize(name=nil, port=nil, protocol=nil)
          @Name = name
          @Port = port
          @Protocol = protocol
        end

        def deserialize(params)
          @Name = params['Name']
          @Port = params['Port']
          @Protocol = params['Protocol']
        end
      end

      # 健康检查探针配置
      class ProbeConfiguration < TencentCloud::Common::AbstractModel
        # @param HttpGet: HTTP GET 探测配置
        # @type HttpGet: :class:`Tencentcloud::Ags.v20250920.models.HttpGetAction`
        # @param ReadyTimeoutMs: 健康检查就绪超时
        # @type ReadyTimeoutMs: Integer
        # @param ProbeTimeoutMs: 健康检查单次探测超时
        # @type ProbeTimeoutMs: Integer
        # @param ProbePeriodMs: 健康检查间隔
        # @type ProbePeriodMs: Integer
        # @param SuccessThreshold: 健康检查成功阈值
        # @type SuccessThreshold: Integer
        # @param FailureThreshold: 健康检查失败阈值
        # @type FailureThreshold: Integer

        attr_accessor :HttpGet, :ReadyTimeoutMs, :ProbeTimeoutMs, :ProbePeriodMs, :SuccessThreshold, :FailureThreshold

        def initialize(httpget=nil, readytimeoutms=nil, probetimeoutms=nil, probeperiodms=nil, successthreshold=nil, failurethreshold=nil)
          @HttpGet = httpget
          @ReadyTimeoutMs = readytimeoutms
          @ProbeTimeoutMs = probetimeoutms
          @ProbePeriodMs = probeperiodms
          @SuccessThreshold = successthreshold
          @FailureThreshold = failurethreshold
        end

        def deserialize(params)
          unless params['HttpGet'].nil?
            @HttpGet = HttpGetAction.new
            @HttpGet.deserialize(params['HttpGet'])
          end
          @ReadyTimeoutMs = params['ReadyTimeoutMs']
          @ProbeTimeoutMs = params['ProbeTimeoutMs']
          @ProbePeriodMs = params['ProbePeriodMs']
          @SuccessThreshold = params['SuccessThreshold']
          @FailureThreshold = params['FailureThreshold']
        end
      end

      # 资源配置
      class ResourceConfiguration < TencentCloud::Common::AbstractModel
        # @param CPU: <p>cpu 资源量</p>
        # @type CPU: String
        # @param Memory: <p>内存资源量</p>
        # @type Memory: String
        # @param Storage: <p>自定义磁盘大小</p><p>枚举值：</p><ul><li>1Gi： 1Gi</li><li>5Gi： 5Gi</li><li>10Gi： 10Gi</li><li>20Gi： 20Gi</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Storage: String

        attr_accessor :CPU, :Memory, :Storage

        def initialize(cpu=nil, memory=nil, storage=nil)
          @CPU = cpu
          @Memory = memory
          @Storage = storage
        end

        def deserialize(params)
          @CPU = params['CPU']
          @Memory = params['Memory']
          @Storage = params['Storage']
        end
      end

      # ResumeSandboxInstance请求参数结构体
      class ResumeSandboxInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>沙箱实例ID</p>
        # @type InstanceId: String
        # @param Timeout: <p>超时时间，超过这个时间就自动回收实例。支持格式：5m、300s、1h 等，默认 5m。最小 30s，最大 24h</p>
        # @type Timeout: String

        attr_accessor :InstanceId, :Timeout

        def initialize(instanceid=nil, timeout=nil)
          @InstanceId = instanceid
          @Timeout = timeout
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Timeout = params['Timeout']
        end
      end

      # ResumeSandboxInstance返回参数结构体
      class ResumeSandboxInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 沙箱实例结构体
      class SandboxInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>沙箱实例唯一标识符</p>
        # @type InstanceId: String
        # @param ToolId: <p>所属沙箱工具 ID</p>
        # @type ToolId: String
        # @param ToolName: <p>所属沙箱工具名称</p>
        # @type ToolName: String
        # @param Status: <p>实例状态：STARTING（启动中）、RUNNING（运行中）、STOPPING（停止中）、STOPPED（已停止）、STOP_FAILED（停止失败）、FAILED（失败状态）</p>
        # @type Status: String
        # @param Persistent: <p>是否常驻实例</p>
        # @type Persistent: Boolean
        # @param TimeoutSeconds: <p>超时时间（秒），null 表示无超时设置</p>
        # @type TimeoutSeconds: Integer
        # @param ExpiresAt: <p>过期时间（ISO 8601 格式），null 表示无过期时间</p>
        # @type ExpiresAt: String
        # @param StopReason: <p>停止原因：manual（手动）、timeout（超时）、error（错误）、system（系统），仅在状态为 STOPPED、STOP_FAILED 或 FAILED 时有值。当 provider 停止失败时，状态为 STOP_FAILED，原因为 error</p>
        # @type StopReason: String
        # @param CreateTime: <p>创建时间（ISO 8601 格式）</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间（ISO 8601 格式）</p>
        # @type UpdateTime: String
        # @param MountOptions: <p>存储挂载选项</p>
        # @type MountOptions: Array
        # @param CustomConfiguration: <p>沙箱实例自定义配置</p>
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfigurationDetail`
        # @param ComputerConfiguration: <p>桌面电脑环境类沙箱配置</p>
        # @type ComputerConfiguration: :class:`Tencentcloud::Ags.v20250920.models.ComputerConfiguration`
        # @param NetworkMode: <p>网络模式</p><p>枚举值：</p><ul><li>PUBLIC： 公网访问</li><li>SANDBOX： 无网络</li><li>INTERNAL_SERVICE： 腾讯云内部公共服务</li></ul><p>可以覆盖工具级别的网络配置。但如果一个工具本身就不支持 VPC 网络，那么即便在实例设置里选了 VPC 模式，也是无效的</p>
        # @type NetworkMode: String
        # @param Metadata: <p>沙箱实例元数据</p>
        # @type Metadata: Array
        # @param AuthMode: <p>沙箱访问认证模式</p><p>枚举值：</p><ul><li>DEFAULT： 默认，即 TOKEN 认证</li><li>TOKEN： Token认证，即所有端口访问都需携带TOKEN</li><li>NONE： 免认证，即所有端口访问无需携带TOKEN</li><li>PUBLIC： 公开模式，即ENVD管理端口（49983）访问需携带TOKEN，其他端口无需携带TOKEN</li></ul><p>默认值：DEFAULT</p>
        # @type AuthMode: String

        attr_accessor :InstanceId, :ToolId, :ToolName, :Status, :Persistent, :TimeoutSeconds, :ExpiresAt, :StopReason, :CreateTime, :UpdateTime, :MountOptions, :CustomConfiguration, :ComputerConfiguration, :NetworkMode, :Metadata, :AuthMode

        def initialize(instanceid=nil, toolid=nil, toolname=nil, status=nil, persistent=nil, timeoutseconds=nil, expiresat=nil, stopreason=nil, createtime=nil, updatetime=nil, mountoptions=nil, customconfiguration=nil, computerconfiguration=nil, networkmode=nil, metadata=nil, authmode=nil)
          @InstanceId = instanceid
          @ToolId = toolid
          @ToolName = toolname
          @Status = status
          @Persistent = persistent
          @TimeoutSeconds = timeoutseconds
          @ExpiresAt = expiresat
          @StopReason = stopreason
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MountOptions = mountoptions
          @CustomConfiguration = customconfiguration
          @ComputerConfiguration = computerconfiguration
          @NetworkMode = networkmode
          @Metadata = metadata
          @AuthMode = authmode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @Status = params['Status']
          @Persistent = params['Persistent']
          @TimeoutSeconds = params['TimeoutSeconds']
          @ExpiresAt = params['ExpiresAt']
          @StopReason = params['StopReason']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['MountOptions'].nil?
            @MountOptions = []
            params['MountOptions'].each do |i|
              mountoption_tmp = MountOption.new
              mountoption_tmp.deserialize(i)
              @MountOptions << mountoption_tmp
            end
          end
          unless params['CustomConfiguration'].nil?
            @CustomConfiguration = CustomConfigurationDetail.new
            @CustomConfiguration.deserialize(params['CustomConfiguration'])
          end
          unless params['ComputerConfiguration'].nil?
            @ComputerConfiguration = ComputerConfiguration.new
            @ComputerConfiguration.deserialize(params['ComputerConfiguration'])
          end
          @NetworkMode = params['NetworkMode']
          unless params['Metadata'].nil?
            @Metadata = []
            params['Metadata'].each do |i|
              metadatavar_tmp = MetadataVar.new
              metadatavar_tmp.deserialize(i)
              @Metadata << metadatavar_tmp
            end
          end
          @AuthMode = params['AuthMode']
        end
      end

      # 沙箱工具结构体
      class SandboxTool < TencentCloud::Common::AbstractModel
        # @param ToolId: <p>沙箱工具唯一标识符</p>
        # @type ToolId: String
        # @param ToolName: <p>沙箱工具名称，长度 1-50 字符，支持中英文、数字、下划线。同一 AppId 下沙箱工具名称必须唯一</p>
        # @type ToolName: String
        # @param ToolType: <p>沙箱工具类型，取值：browser（浏览器工具）、code-interpreter（代码解释器工具）、computer（计算机控制工具）、mobile（移动设备工具）</p>
        # @type ToolType: String
        # @param Status: <p>沙箱工具状态，取值：CREATING（创建中）、ACTIVE（可用）、DELETING（删除中）、FAILED（失败）</p>
        # @type Status: String
        # @param Description: <p>沙箱工具描述信息，最大长度 200 字符</p>
        # @type Description: String
        # @param Persistent: <p>是否常驻沙箱</p>
        # @type Persistent: Boolean
        # @param DefaultTimeoutSeconds: <p>默认超时时间，支持格式：5m、300s、1h 等，不指定则使用系统默认值（5 分钟）。最大 24 小时</p>
        # @type DefaultTimeoutSeconds: Integer
        # @param NetworkConfiguration: <p>网络配置</p>
        # @type NetworkConfiguration: :class:`Tencentcloud::Ags.v20250920.models.NetworkConfiguration`
        # @param Tags: <p>标签规格，包含资源标签绑定关系。用于为沙箱工具绑定标签，支持多种资源类型的标签绑定</p>
        # @type Tags: Array
        # @param CreateTime: <p>沙箱工具创建时间，格式：ISO8601</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>沙箱工具更新时间，格式：ISO8601</p>
        # @type UpdateTime: String
        # @param RoleArn: <p>沙箱工具绑定角色ARN</p>
        # @type RoleArn: String
        # @param StorageMounts: <p>沙箱工具中实例存储挂载配置</p>
        # @type StorageMounts: Array
        # @param CustomConfiguration: <p>沙箱工具自定义配置</p>
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfigurationDetail`
        # @param LogConfiguration: <p>沙箱工具日志推送相关配置</p>
        # @type LogConfiguration: :class:`Tencentcloud::Ags.v20250920.models.LogConfiguration`
        # @param ComputerConfiguration: <p>桌面电脑环境类沙箱配置</p>
        # @type ComputerConfiguration: :class:`Tencentcloud::Ags.v20250920.models.ComputerConfiguration`
        # @param StatusReason: <p>用于说明沙箱工具处于该状态的原因</p>
        # @type StatusReason: String

        attr_accessor :ToolId, :ToolName, :ToolType, :Status, :Description, :Persistent, :DefaultTimeoutSeconds, :NetworkConfiguration, :Tags, :CreateTime, :UpdateTime, :RoleArn, :StorageMounts, :CustomConfiguration, :LogConfiguration, :ComputerConfiguration, :StatusReason

        def initialize(toolid=nil, toolname=nil, tooltype=nil, status=nil, description=nil, persistent=nil, defaulttimeoutseconds=nil, networkconfiguration=nil, tags=nil, createtime=nil, updatetime=nil, rolearn=nil, storagemounts=nil, customconfiguration=nil, logconfiguration=nil, computerconfiguration=nil, statusreason=nil)
          @ToolId = toolid
          @ToolName = toolname
          @ToolType = tooltype
          @Status = status
          @Description = description
          @Persistent = persistent
          @DefaultTimeoutSeconds = defaulttimeoutseconds
          @NetworkConfiguration = networkconfiguration
          @Tags = tags
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RoleArn = rolearn
          @StorageMounts = storagemounts
          @CustomConfiguration = customconfiguration
          @LogConfiguration = logconfiguration
          @ComputerConfiguration = computerconfiguration
          @StatusReason = statusreason
        end

        def deserialize(params)
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @ToolType = params['ToolType']
          @Status = params['Status']
          @Description = params['Description']
          @Persistent = params['Persistent']
          @DefaultTimeoutSeconds = params['DefaultTimeoutSeconds']
          unless params['NetworkConfiguration'].nil?
            @NetworkConfiguration = NetworkConfiguration.new
            @NetworkConfiguration.deserialize(params['NetworkConfiguration'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @RoleArn = params['RoleArn']
          unless params['StorageMounts'].nil?
            @StorageMounts = []
            params['StorageMounts'].each do |i|
              storagemount_tmp = StorageMount.new
              storagemount_tmp.deserialize(i)
              @StorageMounts << storagemount_tmp
            end
          end
          unless params['CustomConfiguration'].nil?
            @CustomConfiguration = CustomConfigurationDetail.new
            @CustomConfiguration.deserialize(params['CustomConfiguration'])
          end
          unless params['LogConfiguration'].nil?
            @LogConfiguration = LogConfiguration.new
            @LogConfiguration.deserialize(params['LogConfiguration'])
          end
          unless params['ComputerConfiguration'].nil?
            @ComputerConfiguration = ComputerConfiguration.new
            @ComputerConfiguration.deserialize(params['ComputerConfiguration'])
          end
          @StatusReason = params['StatusReason']
        end
      end

      # Deployment 活跃容量配置
      class ScalingConfiguration < TencentCloud::Common::AbstractModel
        # @param MinInstanceCount: <p>活跃 Sandbox Instance 下限，必须大于等于 0。</p>
        # @type MinInstanceCount: Integer
        # @param MaxInstanceCount: <p>活跃 Sandbox Instance 上限，必须大于等于 1，并且不小于 MinInstanceCount。</p>
        # @type MaxInstanceCount: Integer
        # @param MaxInstanceRequestConcurrency: <p>每个活跃 Sandbox Instance 同时持有的 Deployment 请求或连接 Lease 上限，必须大于等于 1。</p>
        # @type MaxInstanceRequestConcurrency: Integer

        attr_accessor :MinInstanceCount, :MaxInstanceCount, :MaxInstanceRequestConcurrency

        def initialize(mininstancecount=nil, maxinstancecount=nil, maxinstancerequestconcurrency=nil)
          @MinInstanceCount = mininstancecount
          @MaxInstanceCount = maxinstancecount
          @MaxInstanceRequestConcurrency = maxinstancerequestconcurrency
        end

        def deserialize(params)
          @MinInstanceCount = params['MinInstanceCount']
          @MaxInstanceCount = params['MaxInstanceCount']
          @MaxInstanceRequestConcurrency = params['MaxInstanceRequestConcurrency']
        end
      end

      # StartSandboxInstance请求参数结构体
      class StartSandboxInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ToolId: <p>沙箱工具 ID，与 ToolName 至少有一个要填</p>
        # @type ToolId: String
        # @param ToolName: <p>沙箱工具名称，与 ToolId 至少有一个要填</p>
        # @type ToolName: String
        # @param Timeout: <p>超时时间，超过这个时间就自动回收实例。支持格式：5m、300s、1h 等，默认 5m。最小 30s，最大 24h</p>
        # @type Timeout: String
        # @param ClientToken: <p>幂等性 Token，长度不超过 64 字符</p>
        # @type ClientToken: String
        # @param MountOptions: <p>沙箱实例存储挂载配置</p>
        # @type MountOptions: Array
        # @param CustomConfiguration: <p>沙箱实例自定义配置</p>
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfiguration`
        # @param AuthMode: <p>沙箱访问认证模式</p><p>枚举值：</p><ul><li>DEFAULT： 默认，即TOKEN认证</li><li>TOKEN： Token认证，即所有端口访问都需携带Token</li><li>NONE： 免认证，即所有端口访问无需携带Token</li><li>PUBLIC： 公开模式，即ENVD管理端口（49983）访问需携带Token，其他端口无需携带Token</li></ul><p>默认值：DEFAULT</p>
        # @type AuthMode: String
        # @param Metadata: <p>沙箱元数据</p>
        # @type Metadata: Array

        attr_accessor :ToolId, :ToolName, :Timeout, :ClientToken, :MountOptions, :CustomConfiguration, :AuthMode, :Metadata

        def initialize(toolid=nil, toolname=nil, timeout=nil, clienttoken=nil, mountoptions=nil, customconfiguration=nil, authmode=nil, metadata=nil)
          @ToolId = toolid
          @ToolName = toolname
          @Timeout = timeout
          @ClientToken = clienttoken
          @MountOptions = mountoptions
          @CustomConfiguration = customconfiguration
          @AuthMode = authmode
          @Metadata = metadata
        end

        def deserialize(params)
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @Timeout = params['Timeout']
          @ClientToken = params['ClientToken']
          unless params['MountOptions'].nil?
            @MountOptions = []
            params['MountOptions'].each do |i|
              mountoption_tmp = MountOption.new
              mountoption_tmp.deserialize(i)
              @MountOptions << mountoption_tmp
            end
          end
          unless params['CustomConfiguration'].nil?
            @CustomConfiguration = CustomConfiguration.new
            @CustomConfiguration.deserialize(params['CustomConfiguration'])
          end
          @AuthMode = params['AuthMode']
          unless params['Metadata'].nil?
            @Metadata = []
            params['Metadata'].each do |i|
              metadatavar_tmp = MetadataVar.new
              metadatavar_tmp.deserialize(i)
              @Metadata << metadatavar_tmp
            end
          end
        end
      end

      # StartSandboxInstance返回参数结构体
      class StartSandboxInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Instance: <p>创建的沙箱实例完整信息</p>
        # @type Instance: :class:`Tencentcloud::Ags.v20250920.models.SandboxInstance`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instance, :RequestId

        def initialize(instance=nil, requestid=nil)
          @Instance = instance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instance'].nil?
            @Instance = SandboxInstance.new
            @Instance.deserialize(params['Instance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # StopSandboxInstance请求参数结构体
      class StopSandboxInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 沙箱实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StopSandboxInstance返回参数结构体
      class StopSandboxInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 沙箱工具中实例存储挂载配置
      class StorageMount < TencentCloud::Common::AbstractModel
        # @param Name: <p>存储挂载配置名称</p>
        # @type Name: String
        # @param StorageSource: <p>存储配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSource: :class:`Tencentcloud::Ags.v20250920.models.StorageSource`
        # @param MountPath: <p>沙箱实例本地挂载路径</p>
        # @type MountPath: String
        # @param ReadOnly: <p>存储挂载读写权限配置，默认为false</p>
        # @type ReadOnly: Boolean

        attr_accessor :Name, :StorageSource, :MountPath, :ReadOnly

        def initialize(name=nil, storagesource=nil, mountpath=nil, readonly=nil)
          @Name = name
          @StorageSource = storagesource
          @MountPath = mountpath
          @ReadOnly = readonly
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['StorageSource'].nil?
            @StorageSource = StorageSource.new
            @StorageSource.deserialize(params['StorageSource'])
          end
          @MountPath = params['MountPath']
          @ReadOnly = params['ReadOnly']
        end
      end

      # 挂载存储配置
      class StorageSource < TencentCloud::Common::AbstractModel
        # @param Cos: <p>对象存储桶配置</p>
        # @type Cos: :class:`Tencentcloud::Ags.v20250920.models.CosStorageSource`
        # @param Image: <p>镜像卷配置</p>
        # @type Image: :class:`Tencentcloud::Ags.v20250920.models.ImageStorageSource`
        # @param Cfs: <p>文件存储配置</p>
        # @type Cfs: :class:`Tencentcloud::Ags.v20250920.models.CfsStorageSource`
        # @param AgentBucket: <p>AgentBucket 存储配置</p>
        # @type AgentBucket: :class:`Tencentcloud::Ags.v20250920.models.AgentBucketStorageSource`

        attr_accessor :Cos, :Image, :Cfs, :AgentBucket

        def initialize(cos=nil, image=nil, cfs=nil, agentbucket=nil)
          @Cos = cos
          @Image = image
          @Cfs = cfs
          @AgentBucket = agentbucket
        end

        def deserialize(params)
          unless params['Cos'].nil?
            @Cos = CosStorageSource.new
            @Cos.deserialize(params['Cos'])
          end
          unless params['Image'].nil?
            @Image = ImageStorageSource.new
            @Image.deserialize(params['Image'])
          end
          unless params['Cfs'].nil?
            @Cfs = CfsStorageSource.new
            @Cfs.deserialize(params['Cfs'])
          end
          unless params['AgentBucket'].nil?
            @AgentBucket = AgentBucketStorageSource.new
            @AgentBucket.deserialize(params['AgentBucket'])
          end
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
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

      # UpdateSandboxInstance请求参数结构体
      class UpdateSandboxInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>沙箱实例ID</p>
        # @type InstanceId: String
        # @param Timeout: <p>新的超时时间（从设置时开始重新计算超时），支持格式：5m、300s、1h等。最小30s，最大24h。如果不指定则保持原有超时设置</p>
        # @type Timeout: String
        # @param Metadata: <p>沙箱实例元数据</p>
        # @type Metadata: Array

        attr_accessor :InstanceId, :Timeout, :Metadata

        def initialize(instanceid=nil, timeout=nil, metadata=nil)
          @InstanceId = instanceid
          @Timeout = timeout
          @Metadata = metadata
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Timeout = params['Timeout']
          unless params['Metadata'].nil?
            @Metadata = []
            params['Metadata'].each do |i|
              metadatavar_tmp = MetadataVar.new
              metadatavar_tmp.deserialize(i)
              @Metadata << metadatavar_tmp
            end
          end
        end
      end

      # UpdateSandboxInstance返回参数结构体
      class UpdateSandboxInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpdateSandboxTool请求参数结构体
      class UpdateSandboxToolRequest < TencentCloud::Common::AbstractModel
        # @param ToolId: <p>沙箱工具ID</p>
        # @type ToolId: String
        # @param Description: <p>沙箱工具描述，最大长度200字符</p>
        # @type Description: String
        # @param NetworkConfiguration: <p>网络配置</p>
        # @type NetworkConfiguration: :class:`Tencentcloud::Ags.v20250920.models.NetworkConfiguration`
        # @param Tags: <p>标签</p>
        # @type Tags: Array
        # @param CustomConfiguration: <p>沙箱工具自定义配置</p>
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfiguration`
        # @param ComputerConfiguration: <p>桌面电脑环境类沙箱配置</p>
        # @type ComputerConfiguration: :class:`Tencentcloud::Ags.v20250920.models.ComputerConfiguration`

        attr_accessor :ToolId, :Description, :NetworkConfiguration, :Tags, :CustomConfiguration, :ComputerConfiguration

        def initialize(toolid=nil, description=nil, networkconfiguration=nil, tags=nil, customconfiguration=nil, computerconfiguration=nil)
          @ToolId = toolid
          @Description = description
          @NetworkConfiguration = networkconfiguration
          @Tags = tags
          @CustomConfiguration = customconfiguration
          @ComputerConfiguration = computerconfiguration
        end

        def deserialize(params)
          @ToolId = params['ToolId']
          @Description = params['Description']
          unless params['NetworkConfiguration'].nil?
            @NetworkConfiguration = NetworkConfiguration.new
            @NetworkConfiguration.deserialize(params['NetworkConfiguration'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['CustomConfiguration'].nil?
            @CustomConfiguration = CustomConfiguration.new
            @CustomConfiguration.deserialize(params['CustomConfiguration'])
          end
          unless params['ComputerConfiguration'].nil?
            @ComputerConfiguration = ComputerConfiguration.new
            @ComputerConfiguration.deserialize(params['ComputerConfiguration'])
          end
        end
      end

      # UpdateSandboxTool返回参数结构体
      class UpdateSandboxToolResponse < TencentCloud::Common::AbstractModel
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

      # 沙箱工具VPC相关配置
      class VPCConfig < TencentCloud::Common::AbstractModel
        # @param SubnetIds: <p>VPC子网ID列表</p>
        # @type SubnetIds: Array
        # @param SecurityGroupIds: <p>安全组ID列表</p>
        # @type SecurityGroupIds: Array

        attr_accessor :SubnetIds, :SecurityGroupIds

        def initialize(subnetids=nil, securitygroupids=nil)
          @SubnetIds = subnetids
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SubnetIds = params['SubnetIds']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # waa自定义配置项
      class WAAConfiguration < TencentCloud::Common::AbstractModel
        # @param ImageId: <p>自定义waa镜像ID</p>
        # @type ImageId: String

        attr_accessor :ImageId

        def initialize(imageid=nil)
          @ImageId = imageid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
        end
      end

    end
  end
end

