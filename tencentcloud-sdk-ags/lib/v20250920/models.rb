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

      # AcquireSandboxInstanceToken请求参数结构体
      class AcquireSandboxInstanceTokenRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 沙箱实例ID，生成的访问Token将仅可用于访问此沙箱实例
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
        # @param Token: 访问Token
        # @type Token: String
        # @param ExpiresAt: 过期时间
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

      # CreatePreCacheImageTask请求参数结构体
      class CreatePreCacheImageTaskRequest < TencentCloud::Common::AbstractModel
        # @param Image: 镜像地址
        # @type Image: String
        # @param ImageRegistryType: 镜像仓库类型：`enterprise`、`personal`。
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
        # @param Image: 镜像地址
        # @type Image: String
        # @param ImageDigest: 镜像 Digest
        # @type ImageDigest: String
        # @param ImageRegistryType: 镜像仓库类型：`enterprise`、`personal`。
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
        # @param ToolName: 沙箱工具名称，长度 1-50 字符，支持英文、数字、下划线和连接线。同一 AppId 下沙箱工具名称必须唯一
        # @type ToolName: String
        # @param ToolType: 沙箱工具类型，目前支持：browser、code-interpreter、custom
        # @type ToolType: String
        # @param NetworkConfiguration: 网络配置
        # @type NetworkConfiguration: :class:`Tencentcloud::Ags.v20250920.models.NetworkConfiguration`
        # @param Description: 沙箱工具描述，最大长度 200 字符
        # @type Description: String
        # @param DefaultTimeout: 默认超时时间，支持格式：5m、300s、1h 等，不指定则使用系统默认值（5 分钟）。最大 24 小时
        # @type DefaultTimeout: String
        # @param Tags: 标签规格，为沙箱工具绑定标签，支持多种资源类型的标签绑定
        # @type Tags: Array
        # @param ClientToken: 幂等性 Token，长度不超过 64 字符
        # @type ClientToken: String
        # @param RoleArn: 角色ARN
        # @type RoleArn: String
        # @param StorageMounts: 沙箱工具存储配置
        # @type StorageMounts: Array
        # @param CustomConfiguration: 沙箱工具自定义配置
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfiguration`

        attr_accessor :ToolName, :ToolType, :NetworkConfiguration, :Description, :DefaultTimeout, :Tags, :ClientToken, :RoleArn, :StorageMounts, :CustomConfiguration

        def initialize(toolname=nil, tooltype=nil, networkconfiguration=nil, description=nil, defaulttimeout=nil, tags=nil, clienttoken=nil, rolearn=nil, storagemounts=nil, customconfiguration=nil)
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
        end
      end

      # CreateSandboxTool返回参数结构体
      class CreateSandboxToolResponse < TencentCloud::Common::AbstractModel
        # @param ToolId: 创建的沙箱工具 ID
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
        # @param Image: 镜像地址
        # @type Image: String
        # @param ImageRegistryType: 镜像仓库类型：`enterprise`、`personal`。
        # @type ImageRegistryType: String
        # @param Command: 启动命令
        # @type Command: Array
        # @param Args: 启动参数
        # @type Args: Array
        # @param Env: 环境变量
        # @type Env: Array
        # @param Ports: 端口配置
        # @type Ports: Array
        # @param Resources: 资源配置
        # @type Resources: :class:`Tencentcloud::Ags.v20250920.models.ResourceConfiguration`
        # @param Probe: 探针配置
        # @type Probe: :class:`Tencentcloud::Ags.v20250920.models.ProbeConfiguration`

        attr_accessor :Image, :ImageRegistryType, :Command, :Args, :Env, :Ports, :Resources, :Probe

        def initialize(image=nil, imageregistrytype=nil, command=nil, args=nil, env=nil, ports=nil, resources=nil, probe=nil)
          @Image = image
          @ImageRegistryType = imageregistrytype
          @Command = command
          @Args = args
          @Env = env
          @Ports = ports
          @Resources = resources
          @Probe = probe
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
        end
      end

      # 沙箱自定义配置详细信息
      class CustomConfigurationDetail < TencentCloud::Common::AbstractModel
        # @param Image: 镜像地址
        # @type Image: String
        # @param ImageRegistryType: 镜像仓库类型：`TCR`、`CCR`。
        # @type ImageRegistryType: String
        # @param ImageDigest: 镜像 Digest
        # @type ImageDigest: String
        # @param Command: 启动命令
        # @type Command: Array
        # @param Args: 启动参数
        # @type Args: Array
        # @param Env: 环境变量
        # @type Env: Array
        # @param Ports: 端口配置
        # @type Ports: Array
        # @param Resources: 资源配置
        # @type Resources: :class:`Tencentcloud::Ags.v20250920.models.ResourceConfiguration`
        # @param Probe: 探针配置
        # @type Probe: :class:`Tencentcloud::Ags.v20250920.models.ProbeConfiguration`

        attr_accessor :Image, :ImageRegistryType, :ImageDigest, :Command, :Args, :Env, :Ports, :Resources, :Probe

        def initialize(image=nil, imageregistrytype=nil, imagedigest=nil, command=nil, args=nil, env=nil, ports=nil, resources=nil, probe=nil)
          @Image = image
          @ImageRegistryType = imageregistrytype
          @ImageDigest = imagedigest
          @Command = command
          @Args = args
          @Env = env
          @Ports = ports
          @Resources = resources
          @Probe = probe
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

      # DescribePreCacheImageTask请求参数结构体
      class DescribePreCacheImageTaskRequest < TencentCloud::Common::AbstractModel
        # @param Image: 镜像地址
        # @type Image: String
        # @param ImageDigest: 镜像 Digest
        # @type ImageDigest: String
        # @param ImageRegistryType: 镜像仓库类型：`enterprise`、`personal`。
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
        # @param Image: 镜像地址
        # @type Image: String
        # @param ImageDigest: 镜像 Digest
        # @type ImageDigest: String
        # @param ImageRegistryType: 镜像仓库类型：`enterprise`、`personal`。
        # @type ImageRegistryType: String
        # @param Status: 镜像预热状态
        # @type Status: String
        # @param Message: 镜像预热状态描述
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
        # @param Reference: 镜像地址
        # @type Reference: String
        # @param ImageRegistryType: 镜像仓库类型：`enterprise`、`personal`。
        # @type ImageRegistryType: String
        # @param SubPath: 镜像内部的路径
        # @type SubPath: String
        # @param Digest: 镜像 Digest，请求时无需传入
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
        # @param CPU: cpu 资源量
        # @type CPU: String
        # @param Memory: 内存资源量
        # @type Memory: String

        attr_accessor :CPU, :Memory

        def initialize(cpu=nil, memory=nil)
          @CPU = cpu
          @Memory = memory
        end

        def deserialize(params)
          @CPU = params['CPU']
          @Memory = params['Memory']
        end
      end

      # 沙箱实例结构体
      class SandboxInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 沙箱实例唯一标识符
        # @type InstanceId: String
        # @param ToolId: 所属沙箱工具 ID
        # @type ToolId: String
        # @param ToolName: 所属沙箱工具名称
        # @type ToolName: String
        # @param Status: 实例状态：STARTING（启动中）、RUNNING（运行中）、STOPPING（停止中）、STOPPED（已停止）、STOP_FAILED（停止失败）、FAILED（失败状态）
        # @type Status: String
        # @param TimeoutSeconds: 超时时间（秒），null 表示无超时设置
        # @type TimeoutSeconds: Integer
        # @param ExpiresAt: 过期时间（ISO 8601 格式），null 表示无过期时间
        # @type ExpiresAt: String
        # @param StopReason: 停止原因：manual（手动）、timeout（超时）、error（错误）、system（系统），仅在状态为 STOPPED、STOP_FAILED 或 FAILED 时有值。当 provider 停止失败时，状态为 STOP_FAILED，原因为 error
        # @type StopReason: String
        # @param CreateTime: 创建时间（ISO 8601 格式）
        # @type CreateTime: String
        # @param UpdateTime: 更新时间（ISO 8601 格式）
        # @type UpdateTime: String
        # @param MountOptions: 存储挂载选项
        # @type MountOptions: Array
        # @param CustomConfiguration: 沙箱实例自定义配置
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfigurationDetail`

        attr_accessor :InstanceId, :ToolId, :ToolName, :Status, :TimeoutSeconds, :ExpiresAt, :StopReason, :CreateTime, :UpdateTime, :MountOptions, :CustomConfiguration

        def initialize(instanceid=nil, toolid=nil, toolname=nil, status=nil, timeoutseconds=nil, expiresat=nil, stopreason=nil, createtime=nil, updatetime=nil, mountoptions=nil, customconfiguration=nil)
          @InstanceId = instanceid
          @ToolId = toolid
          @ToolName = toolname
          @Status = status
          @TimeoutSeconds = timeoutseconds
          @ExpiresAt = expiresat
          @StopReason = stopreason
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MountOptions = mountoptions
          @CustomConfiguration = customconfiguration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @Status = params['Status']
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
        end
      end

      # 沙箱工具结构体
      class SandboxTool < TencentCloud::Common::AbstractModel
        # @param ToolId: 沙箱工具唯一标识符
        # @type ToolId: String
        # @param ToolName: 沙箱工具名称，长度 1-50 字符，支持中英文、数字、下划线。同一 AppId 下沙箱工具名称必须唯一
        # @type ToolName: String
        # @param ToolType: 沙箱工具类型，取值：browser（浏览器工具）、code-interpreter（代码解释器工具）、computer（计算机控制工具）、mobile（移动设备工具）
        # @type ToolType: String
        # @param Status: 沙箱工具状态，取值：CREATING（创建中）、ACTIVE（可用）、DELETING（删除中）、FAILED（失败）
        # @type Status: String
        # @param Description: 沙箱工具描述信息，最大长度 200 字符
        # @type Description: String
        # @param DefaultTimeoutSeconds: 默认超时时间，支持格式：5m、300s、1h 等，不指定则使用系统默认值（5 分钟）。最大 24 小时
        # @type DefaultTimeoutSeconds: Integer
        # @param NetworkConfiguration: 网络配置
        # @type NetworkConfiguration: :class:`Tencentcloud::Ags.v20250920.models.NetworkConfiguration`
        # @param Tags: 标签规格，包含资源标签绑定关系。用于为沙箱工具绑定标签，支持多种资源类型的标签绑定
        # @type Tags: Array
        # @param CreateTime: 沙箱工具创建时间，格式：ISO8601
        # @type CreateTime: String
        # @param UpdateTime: 沙箱工具更新时间，格式：ISO8601
        # @type UpdateTime: String
        # @param RoleArn: 沙箱工具绑定角色ARN
        # @type RoleArn: String
        # @param StorageMounts: 沙箱工具中实例存储挂载配置
        # @type StorageMounts: Array
        # @param CustomConfiguration: 沙箱工具自定义配置
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfigurationDetail`

        attr_accessor :ToolId, :ToolName, :ToolType, :Status, :Description, :DefaultTimeoutSeconds, :NetworkConfiguration, :Tags, :CreateTime, :UpdateTime, :RoleArn, :StorageMounts, :CustomConfiguration

        def initialize(toolid=nil, toolname=nil, tooltype=nil, status=nil, description=nil, defaulttimeoutseconds=nil, networkconfiguration=nil, tags=nil, createtime=nil, updatetime=nil, rolearn=nil, storagemounts=nil, customconfiguration=nil)
          @ToolId = toolid
          @ToolName = toolname
          @ToolType = tooltype
          @Status = status
          @Description = description
          @DefaultTimeoutSeconds = defaulttimeoutseconds
          @NetworkConfiguration = networkconfiguration
          @Tags = tags
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RoleArn = rolearn
          @StorageMounts = storagemounts
          @CustomConfiguration = customconfiguration
        end

        def deserialize(params)
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @ToolType = params['ToolType']
          @Status = params['Status']
          @Description = params['Description']
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
        end
      end

      # StartSandboxInstance请求参数结构体
      class StartSandboxInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ToolId: 沙箱工具 ID，与 ToolName 至少有一个要填
        # @type ToolId: String
        # @param ToolName: 沙箱工具名称，与 ToolId 至少有一个要填
        # @type ToolName: String
        # @param Timeout: 超时时间，超过这个时间就自动回收实例。支持格式：5m、300s、1h 等，默认 5m。最小 30s，最大 24h
        # @type Timeout: String
        # @param ClientToken: 幂等性 Token，长度不超过 64 字符
        # @type ClientToken: String
        # @param MountOptions: 沙箱实例存储挂载配置
        # @type MountOptions: Array
        # @param CustomConfiguration: 沙箱实例自定义配置
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfiguration`

        attr_accessor :ToolId, :ToolName, :Timeout, :ClientToken, :MountOptions, :CustomConfiguration

        def initialize(toolid=nil, toolname=nil, timeout=nil, clienttoken=nil, mountoptions=nil, customconfiguration=nil)
          @ToolId = toolid
          @ToolName = toolname
          @Timeout = timeout
          @ClientToken = clienttoken
          @MountOptions = mountoptions
          @CustomConfiguration = customconfiguration
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
        end
      end

      # StartSandboxInstance返回参数结构体
      class StartSandboxInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Instance: 创建的沙箱实例完整信息
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
        # @param Name: 存储挂载配置名称
        # @type Name: String
        # @param StorageSource: 存储配置
        # @type StorageSource: :class:`Tencentcloud::Ags.v20250920.models.StorageSource`
        # @param MountPath: 沙箱实例本地挂载路径
        # @type MountPath: String
        # @param ReadOnly: 存储挂载读写权限配置，默认为false
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
        # @param Cos: 对象存储桶配置
        # @type Cos: :class:`Tencentcloud::Ags.v20250920.models.CosStorageSource`
        # @param Image: 镜像卷配置
        # @type Image: :class:`Tencentcloud::Ags.v20250920.models.ImageStorageSource`

        attr_accessor :Cos, :Image

        def initialize(cos=nil, image=nil)
          @Cos = cos
          @Image = image
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
        # @param InstanceId: 沙箱实例ID
        # @type InstanceId: String
        # @param Timeout: 新的超时时间（从设置时开始重新计算超时），支持格式：5m、300s、1h等。最小30s，最大24h。如果不指定则保持原有超时设置
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
        # @param ToolId: 沙箱工具ID
        # @type ToolId: String
        # @param Description: 沙箱工具描述，最大长度200字符
        # @type Description: String
        # @param NetworkConfiguration: 网络配置
        # @type NetworkConfiguration: :class:`Tencentcloud::Ags.v20250920.models.NetworkConfiguration`
        # @param Tags: 标签
        # @type Tags: Array
        # @param CustomConfiguration: 沙箱工具自定义配置
        # @type CustomConfiguration: :class:`Tencentcloud::Ags.v20250920.models.CustomConfiguration`

        attr_accessor :ToolId, :Description, :NetworkConfiguration, :Tags, :CustomConfiguration

        def initialize(toolid=nil, description=nil, networkconfiguration=nil, tags=nil, customconfiguration=nil)
          @ToolId = toolid
          @Description = description
          @NetworkConfiguration = networkconfiguration
          @Tags = tags
          @CustomConfiguration = customconfiguration
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
        # @param SubnetIds: VPC子网ID列表
        # @type SubnetIds: Array
        # @param SecurityGroupIds: 安全组ID列表
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

    end
  end
end

