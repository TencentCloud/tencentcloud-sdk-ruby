# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
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
  module Tem
    module V20201221
      # Cos token
      class CosToken < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID
        # @type RequestId: String
        # @param Bucket: 存储桶桶名
        # @type Bucket: String
        # @param Region: 存储桶所在区域
        # @type Region: String
        # @param TmpSecretId: 临时密钥的SecretId
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥的SecretKey
        # @type TmpSecretKey: String
        # @param SessionToken: 临时密钥的 sessionToken
        # @type SessionToken: String
        # @param StartTime: 临时密钥获取的开始时间
        # @type StartTime: String
        # @param ExpiredTime: 临时密钥的 expiredTime
        # @type ExpiredTime: String
        # @param FullPath: 包完整路径
        # @type FullPath: String

        attr_accessor :RequestId, :Bucket, :Region, :TmpSecretId, :TmpSecretKey, :SessionToken, :StartTime, :ExpiredTime, :FullPath
        
        def initialize(requestid=nil, bucket=nil, region=nil, tmpsecretid=nil, tmpsecretkey=nil, sessiontoken=nil, starttime=nil, expiredtime=nil, fullpath=nil)
          @RequestId = requestid
          @Bucket = bucket
          @Region = region
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @SessionToken = sessiontoken
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @FullPath = fullpath
        end

        def deserialize(params)
          @RequestId = params['RequestId']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @SessionToken = params['SessionToken']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @FullPath = params['FullPath']
        end
      end

      # CreateCosToken请求参数结构体
      class CreateCosTokenRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param VersionId: 服务版本ID
        # @type VersionId: String
        # @param PkgName: 包名
        # @type PkgName: String
        # @param OptType: optType 1上传  2查询
        # @type OptType: Integer
        # @param SourceChannel: 来源 channel
        # @type SourceChannel: Integer

        attr_accessor :ServiceId, :VersionId, :PkgName, :OptType, :SourceChannel
        
        def initialize(serviceid=nil, versionid=nil, pkgname=nil, opttype=nil, sourcechannel=nil)
          @ServiceId = serviceid
          @VersionId = versionid
          @PkgName = pkgname
          @OptType = opttype
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @VersionId = params['VersionId']
          @PkgName = params['PkgName']
          @OptType = params['OptType']
          @SourceChannel = params['SourceChannel']
        end
      end

      # CreateCosToken返回参数结构体
      class CreateCosTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为CosToken对象，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tem.v20201221.models.CosToken`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CosToken.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCosTokenV2请求参数结构体
      class CreateCosTokenV2Request < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param PkgName: 包名
        # @type PkgName: String
        # @param OptType: optType 1上传  2查询
        # @type OptType: Integer
        # @param SourceChannel: 来源 channel
        # @type SourceChannel: Integer

        attr_accessor :ServiceId, :PkgName, :OptType, :SourceChannel
        
        def initialize(serviceid=nil, pkgname=nil, opttype=nil, sourcechannel=nil)
          @ServiceId = serviceid
          @PkgName = pkgname
          @OptType = opttype
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @PkgName = params['PkgName']
          @OptType = params['OptType']
          @SourceChannel = params['SourceChannel']
        end
      end

      # CreateCosTokenV2返回参数结构体
      class CreateCosTokenV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为CosToken对象，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tem.v20201221.models.CosToken`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CosToken.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNamespace请求参数结构体
      class CreateNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Vpc: 私有网络名称
        # @type Vpc: String
        # @param SubnetIds: 子网列表
        # @type SubnetIds: Array
        # @param Description: 命名空间描述
        # @type Description: String
        # @param K8sVersion: K8s version
        # @type K8sVersion: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnableTswTraceService: 是否开启tsw服务
        # @type EnableTswTraceService: Boolean

        attr_accessor :NamespaceName, :Vpc, :SubnetIds, :Description, :K8sVersion, :SourceChannel, :EnableTswTraceService
        
        def initialize(namespacename=nil, vpc=nil, subnetids=nil, description=nil, k8sversion=nil, sourcechannel=nil, enabletswtraceservice=nil)
          @NamespaceName = namespacename
          @Vpc = vpc
          @SubnetIds = subnetids
          @Description = description
          @K8sVersion = k8sversion
          @SourceChannel = sourcechannel
          @EnableTswTraceService = enabletswtraceservice
        end

        def deserialize(params)
          @NamespaceName = params['NamespaceName']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @Description = params['Description']
          @K8sVersion = params['K8sVersion']
          @SourceChannel = params['SourceChannel']
          @EnableTswTraceService = params['EnableTswTraceService']
        end
      end

      # CreateNamespace返回参数结构体
      class CreateNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为命名空间ID，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateResource请求参数结构体
      class CreateResourceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间 Id
        # @type NamespaceId: String
        # @param ResourceType: 资源类型，目前支持文件系统：CFS；日志服务：CLS；注册中心：TSE_SRE
        # @type ResourceType: String
        # @param ResourceId: 资源 Id
        # @type ResourceId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceId, :ResourceType, :ResourceId, :SourceChannel
        
        def initialize(namespaceid=nil, resourcetype=nil, resourceid=nil, sourcechannel=nil)
          @NamespaceId = namespaceid
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @SourceChannel = params['SourceChannel']
        end
      end

      # CreateResource返回参数结构体
      class CreateResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功与否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateServiceV2请求参数结构体
      class CreateServiceV2Request < TencentCloud::Common::AbstractModel
        # @param ServiceName: 服务名
        # @type ServiceName: String
        # @param Description: 描述
        # @type Description: String
        # @param UseDefaultImageService: 是否使用默认镜像服务 1-是，0-否
        # @type UseDefaultImageService: Integer
        # @param RepoType: 如果是绑定仓库，绑定的仓库类型，0-个人版，1-企业版
        # @type RepoType: Integer
        # @param InstanceId: 企业版镜像服务的实例id
        # @type InstanceId: String
        # @param RepoServer: 绑定镜像服务器地址
        # @type RepoServer: String
        # @param RepoName: 绑定镜像仓库名
        # @type RepoName: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param SubnetList: 服务所在子网
        # @type SubnetList: Array
        # @param CodingLanguage: 编程语言
        # - JAVA
        # - OTHER
        # @type CodingLanguage: String
        # @param DeployMode: 部署方式
        # - IMAGE
        # - JAR
        # - WAR
        # @type DeployMode: String

        attr_accessor :ServiceName, :Description, :UseDefaultImageService, :RepoType, :InstanceId, :RepoServer, :RepoName, :SourceChannel, :SubnetList, :CodingLanguage, :DeployMode
        
        def initialize(servicename=nil, description=nil, usedefaultimageservice=nil, repotype=nil, instanceid=nil, reposerver=nil, reponame=nil, sourcechannel=nil, subnetlist=nil, codinglanguage=nil, deploymode=nil)
          @ServiceName = servicename
          @Description = description
          @UseDefaultImageService = usedefaultimageservice
          @RepoType = repotype
          @InstanceId = instanceid
          @RepoServer = reposerver
          @RepoName = reponame
          @SourceChannel = sourcechannel
          @SubnetList = subnetlist
          @CodingLanguage = codinglanguage
          @DeployMode = deploymode
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @Description = params['Description']
          @UseDefaultImageService = params['UseDefaultImageService']
          @RepoType = params['RepoType']
          @InstanceId = params['InstanceId']
          @RepoServer = params['RepoServer']
          @RepoName = params['RepoName']
          @SourceChannel = params['SourceChannel']
          @SubnetList = params['SubnetList']
          @CodingLanguage = params['CodingLanguage']
          @DeployMode = params['DeployMode']
        end
      end

      # CreateServiceV2返回参数结构体
      class CreateServiceV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 服务code
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteIngress请求参数结构体
      class DeleteIngressRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: tem NamespaceId
        # @type NamespaceId: String
        # @param EksNamespace: eks namespace 名
        # @type EksNamespace: String
        # @param Name: ingress 规则名
        # @type Name: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceId, :EksNamespace, :Name, :SourceChannel
        
        def initialize(namespaceid=nil, eksnamespace=nil, name=nil, sourcechannel=nil)
          @NamespaceId = namespaceid
          @EksNamespace = eksnamespace
          @Name = name
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @EksNamespace = params['EksNamespace']
          @Name = params['Name']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DeleteIngress返回参数结构体
      class DeleteIngressResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否删除成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeployServiceV2请求参数结构体
      class DeployServiceV2Request < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param ContainerPort: 容器端口
        # @type ContainerPort: Integer
        # @param InitPodNum: 初始化 pod 数
        # @type InitPodNum: Integer
        # @param CpuSpec: cpu规格
        # @type CpuSpec: Float
        # @param MemorySpec: 内存规格
        # @type MemorySpec: Float
        # @param NamespaceId: 环境ID
        # @type NamespaceId: String
        # @param ImgRepo: 镜像仓库
        # @type ImgRepo: String
        # @param VersionDesc: 版本描述信息
        # @type VersionDesc: String
        # @param JvmOpts: 启动参数
        # @type JvmOpts: String
        # @param EsInfo: 弹性伸缩配置，不传默认不启用弹性伸缩配置
        # @type EsInfo: :class:`Tencentcloud::Tem.v20201221.models.EsInfo`
        # @param EnvConf: 环境变量配置
        # @type EnvConf: Array
        # @param LogConfs: 日志配置
        # @type LogConfs: Array
        # @param StorageConfs: 数据卷配置
        # @type StorageConfs: Array
        # @param StorageMountConfs: 数据卷挂载配置
        # @type StorageMountConfs: Array
        # @param DeployMode: 部署类型。
        # - JAR：通过 jar 包部署
        # - WAR：通过 war 包部署
        # - IMAGE：通过镜像部署
        # @type DeployMode: String
        # @param DeployVersion: 部署类型为 IMAGE 时，该参数表示镜像 tag。
        # 部署类型为 JAR/WAR 时，该参数表示包版本号。
        # @type DeployVersion: String
        # @param PkgName: 包名。使用 JAR 包或者 WAR 包部署的时候必填。
        # @type PkgName: String
        # @param JdkVersion: JDK 版本。
        # - KONA：使用 kona jdk。
        # - OPEN：使用 open jdk。
        # @type JdkVersion: String
        # @param SecurityGroupIds: 安全组ID s
        # @type SecurityGroupIds: Array
        # @param LogOutputConf: 日志输出配置
        # @type LogOutputConf: :class:`Tencentcloud::Tem.v20201221.models.LogOutputConf`
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Description: 版本描述
        # @type Description: String
        # @param ImageCommand: 镜像命令
        # @type ImageCommand: String
        # @param ImageArgs: 镜像命令参数
        # @type ImageArgs: Array
        # @param PortMappings: 服务端口映射
        # @type PortMappings: Array
        # @param UseRegistryDefaultConfig: 是否添加默认注册中心配置
        # @type UseRegistryDefaultConfig: Boolean
        # @param SettingConfs: 挂载配置信息
        # @type SettingConfs: Array
        # @param EksService: eks 访问设置
        # @type EksService: :class:`Tencentcloud::Tem.v20201221.models.EksService`

        attr_accessor :ServiceId, :ContainerPort, :InitPodNum, :CpuSpec, :MemorySpec, :NamespaceId, :ImgRepo, :VersionDesc, :JvmOpts, :EsInfo, :EnvConf, :LogConfs, :StorageConfs, :StorageMountConfs, :DeployMode, :DeployVersion, :PkgName, :JdkVersion, :SecurityGroupIds, :LogOutputConf, :SourceChannel, :Description, :ImageCommand, :ImageArgs, :PortMappings, :UseRegistryDefaultConfig, :SettingConfs, :EksService
        
        def initialize(serviceid=nil, containerport=nil, initpodnum=nil, cpuspec=nil, memoryspec=nil, namespaceid=nil, imgrepo=nil, versiondesc=nil, jvmopts=nil, esinfo=nil, envconf=nil, logconfs=nil, storageconfs=nil, storagemountconfs=nil, deploymode=nil, deployversion=nil, pkgname=nil, jdkversion=nil, securitygroupids=nil, logoutputconf=nil, sourcechannel=nil, description=nil, imagecommand=nil, imageargs=nil, portmappings=nil, useregistrydefaultconfig=nil, settingconfs=nil, eksservice=nil)
          @ServiceId = serviceid
          @ContainerPort = containerport
          @InitPodNum = initpodnum
          @CpuSpec = cpuspec
          @MemorySpec = memoryspec
          @NamespaceId = namespaceid
          @ImgRepo = imgrepo
          @VersionDesc = versiondesc
          @JvmOpts = jvmopts
          @EsInfo = esinfo
          @EnvConf = envconf
          @LogConfs = logconfs
          @StorageConfs = storageconfs
          @StorageMountConfs = storagemountconfs
          @DeployMode = deploymode
          @DeployVersion = deployversion
          @PkgName = pkgname
          @JdkVersion = jdkversion
          @SecurityGroupIds = securitygroupids
          @LogOutputConf = logoutputconf
          @SourceChannel = sourcechannel
          @Description = description
          @ImageCommand = imagecommand
          @ImageArgs = imageargs
          @PortMappings = portmappings
          @UseRegistryDefaultConfig = useregistrydefaultconfig
          @SettingConfs = settingconfs
          @EksService = eksservice
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ContainerPort = params['ContainerPort']
          @InitPodNum = params['InitPodNum']
          @CpuSpec = params['CpuSpec']
          @MemorySpec = params['MemorySpec']
          @NamespaceId = params['NamespaceId']
          @ImgRepo = params['ImgRepo']
          @VersionDesc = params['VersionDesc']
          @JvmOpts = params['JvmOpts']
          unless params['EsInfo'].nil?
            @EsInfo = EsInfo.new.deserialize(params['EsInfo'])
          end
          unless params['EnvConf'].nil?
            @EnvConf = []
            params['EnvConf'].each do |i|
              @EnvConf << Pair.new.deserialize(i)
            end
          end
          @LogConfs = params['LogConfs']
          unless params['StorageConfs'].nil?
            @StorageConfs = []
            params['StorageConfs'].each do |i|
              @StorageConfs << StorageConf.new.deserialize(i)
            end
          end
          unless params['StorageMountConfs'].nil?
            @StorageMountConfs = []
            params['StorageMountConfs'].each do |i|
              @StorageMountConfs << StorageMountConf.new.deserialize(i)
            end
          end
          @DeployMode = params['DeployMode']
          @DeployVersion = params['DeployVersion']
          @PkgName = params['PkgName']
          @JdkVersion = params['JdkVersion']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['LogOutputConf'].nil?
            @LogOutputConf = LogOutputConf.new.deserialize(params['LogOutputConf'])
          end
          @SourceChannel = params['SourceChannel']
          @Description = params['Description']
          @ImageCommand = params['ImageCommand']
          @ImageArgs = params['ImageArgs']
          unless params['PortMappings'].nil?
            @PortMappings = []
            params['PortMappings'].each do |i|
              @PortMappings << PortMapping.new.deserialize(i)
            end
          end
          @UseRegistryDefaultConfig = params['UseRegistryDefaultConfig']
          unless params['SettingConfs'].nil?
            @SettingConfs = []
            params['SettingConfs'].each do |i|
              @SettingConfs << MountedSettingConf.new.deserialize(i)
            end
          end
          unless params['EksService'].nil?
            @EksService = EksService.new.deserialize(params['EksService'])
          end
        end
      end

      # DeployServiceV2返回参数结构体
      class DeployServiceV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 版本ID（前端可忽略）
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIngress请求参数结构体
      class DescribeIngressRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: tem namespaceId
        # @type NamespaceId: String
        # @param EksNamespace: eks namespace 名
        # @type EksNamespace: String
        # @param Name: ingress 规则名
        # @type Name: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceId, :EksNamespace, :Name, :SourceChannel
        
        def initialize(namespaceid=nil, eksnamespace=nil, name=nil, sourcechannel=nil)
          @NamespaceId = namespaceid
          @EksNamespace = eksnamespace
          @Name = name
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @EksNamespace = params['EksNamespace']
          @Name = params['Name']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeIngress返回参数结构体
      class DescribeIngressResponse < TencentCloud::Common::AbstractModel
        # @param Result: Ingress 规则配置
        # @type Result: :class:`Tencentcloud::Tem.v20201221.models.IngressInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = IngressInfo.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIngresses请求参数结构体
      class DescribeIngressesRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: namespace id
        # @type NamespaceId: String
        # @param EksNamespace: namespace
        # @type EksNamespace: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Names: ingress 规则名列表
        # @type Names: Array

        attr_accessor :NamespaceId, :EksNamespace, :SourceChannel, :Names
        
        def initialize(namespaceid=nil, eksnamespace=nil, sourcechannel=nil, names=nil)
          @NamespaceId = namespaceid
          @EksNamespace = eksnamespace
          @SourceChannel = sourcechannel
          @Names = names
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @EksNamespace = params['EksNamespace']
          @SourceChannel = params['SourceChannel']
          @Names = params['Names']
        end
      end

      # DescribeIngresses返回参数结构体
      class DescribeIngressesResponse < TencentCloud::Common::AbstractModel
        # @param Result: ingress 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              @Result << IngressInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNamespaces请求参数结构体
      class DescribeNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页limit
        # @type Limit: Integer
        # @param Offset: 分页下标
        # @type Offset: Integer
        # @param SourceChannel: 来源source
        # @type SourceChannel: Integer

        attr_accessor :Limit, :Offset, :SourceChannel
        
        def initialize(limit=nil, offset=nil, sourcechannel=nil)
          @Limit = limit
          @Offset = offset
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeNamespaces返回参数结构体
      class DescribeNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tem.v20201221.models.NamespacePage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = NamespacePage.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelatedIngresses请求参数结构体
      class DescribeRelatedIngressesRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 环境 id
        # @type NamespaceId: String
        # @param EksNamespace: EKS namespace
        # @type EksNamespace: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param ServiceId: 服务 ID
        # @type ServiceId: String

        attr_accessor :NamespaceId, :EksNamespace, :SourceChannel, :ServiceId
        
        def initialize(namespaceid=nil, eksnamespace=nil, sourcechannel=nil, serviceid=nil)
          @NamespaceId = namespaceid
          @EksNamespace = eksnamespace
          @SourceChannel = sourcechannel
          @ServiceId = serviceid
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @EksNamespace = params['EksNamespace']
          @SourceChannel = params['SourceChannel']
          @ServiceId = params['ServiceId']
        end
      end

      # DescribeRelatedIngresses返回参数结构体
      class DescribeRelatedIngressesResponse < TencentCloud::Common::AbstractModel
        # @param Result: ingress 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              @Result << IngressInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 版本pod列表
      class DescribeRunPodPage < TencentCloud::Common::AbstractModel
        # @param Offset: 分页下标
        # @type Offset: Integer
        # @param Limit: 单页条数
        # @type Limit: Integer
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 请求id
        # @type RequestId: String
        # @param PodList: 条目
        # @type PodList: Array

        attr_accessor :Offset, :Limit, :TotalCount, :RequestId, :PodList
        
        def initialize(offset=nil, limit=nil, totalcount=nil, requestid=nil, podlist=nil)
          @Offset = offset
          @Limit = limit
          @TotalCount = totalcount
          @RequestId = requestid
          @PodList = podlist
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
          unless params['PodList'].nil?
            @PodList = []
            params['PodList'].each do |i|
              @PodList << RunVersionPod.new.deserialize(i)
            end
          end
        end
      end

      # DescribeServiceRunPodListV2请求参数结构体
      class DescribeServiceRunPodListV2Request < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 环境id
        # @type NamespaceId: String
        # @param ServiceId: 服务名id
        # @type ServiceId: String
        # @param Limit: 单页条数，默认值20
        # @type Limit: Integer
        # @param Offset: 分页下标，默认值0
        # @type Offset: Integer
        # @param Status: 实例状态
        # - Running
        # - Pending
        # - Error
        # @type Status: String
        # @param PodName: 实例名字
        # @type PodName: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceId, :ServiceId, :Limit, :Offset, :Status, :PodName, :SourceChannel
        
        def initialize(namespaceid=nil, serviceid=nil, limit=nil, offset=nil, status=nil, podname=nil, sourcechannel=nil)
          @NamespaceId = namespaceid
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
          @Status = status
          @PodName = podname
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @PodName = params['PodName']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeServiceRunPodListV2返回参数结构体
      class DescribeServiceRunPodListV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tem.v20201221.models.DescribeRunPodPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeRunPodPage.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # eks service info
      class EksService < TencentCloud::Common::AbstractModel
        # @param Name: service name
        # @type Name: String
        # @param Ports: 可用端口
        # @type Ports: Array
        # @param Yaml: yaml 内容
        # @type Yaml: String
        # @param ServiceName: 服务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param VersionName: 版本名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param ClusterIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIp: Array
        # @param ExternalIp: 外网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalIp: String
        # @param Type: 访问类型，可选值：
        # - EXTERNAL（公网访问）
        # - VPC（vpc内访问）
        # - CLUSTER（集群内访问）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param SubnetId: 子网ID，只在类型为vpc访问时才有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param LoadBalanceId: 负载均衡ID，只在外网访问和vpc内访问才有值，默认自动创建
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalanceId: String
        # @param PortMappings: 端口映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortMappings: Array

        attr_accessor :Name, :Ports, :Yaml, :ServiceName, :VersionName, :ClusterIp, :ExternalIp, :Type, :SubnetId, :LoadBalanceId, :PortMappings
        
        def initialize(name=nil, ports=nil, yaml=nil, servicename=nil, versionname=nil, clusterip=nil, externalip=nil, type=nil, subnetid=nil, loadbalanceid=nil, portmappings=nil)
          @Name = name
          @Ports = ports
          @Yaml = yaml
          @ServiceName = servicename
          @VersionName = versionname
          @ClusterIp = clusterip
          @ExternalIp = externalip
          @Type = type
          @SubnetId = subnetid
          @LoadBalanceId = loadbalanceid
          @PortMappings = portmappings
        end

        def deserialize(params)
          @Name = params['Name']
          @Ports = params['Ports']
          @Yaml = params['Yaml']
          @ServiceName = params['ServiceName']
          @VersionName = params['VersionName']
          @ClusterIp = params['ClusterIp']
          @ExternalIp = params['ExternalIp']
          @Type = params['Type']
          @SubnetId = params['SubnetId']
          @LoadBalanceId = params['LoadBalanceId']
          unless params['PortMappings'].nil?
            @PortMappings = []
            params['PortMappings'].each do |i|
              @PortMappings << PortMapping.new.deserialize(i)
            end
          end
        end
      end

      # 弹性伸缩配置
      class EsInfo < TencentCloud::Common::AbstractModel
        # @param MinAliveInstances: 最小实例数
        # @type MinAliveInstances: Integer
        # @param MaxAliveInstances: 最大实例数
        # @type MaxAliveInstances: Integer
        # @param EsStrategy: 弹性策略,1:cpu，2:内存
        # @type EsStrategy: Integer
        # @param Threshold: 弹性扩缩容条件值
        # @type Threshold: Integer
        # @param VersionId: 版本Id
        # @type VersionId: String

        attr_accessor :MinAliveInstances, :MaxAliveInstances, :EsStrategy, :Threshold, :VersionId
        
        def initialize(minaliveinstances=nil, maxaliveinstances=nil, esstrategy=nil, threshold=nil, versionid=nil)
          @MinAliveInstances = minaliveinstances
          @MaxAliveInstances = maxaliveinstances
          @EsStrategy = esstrategy
          @Threshold = threshold
          @VersionId = versionid
        end

        def deserialize(params)
          @MinAliveInstances = params['MinAliveInstances']
          @MaxAliveInstances = params['MaxAliveInstances']
          @EsStrategy = params['EsStrategy']
          @Threshold = params['Threshold']
          @VersionId = params['VersionId']
        end
      end

      # Ingress 配置
      class IngressInfo < TencentCloud::Common::AbstractModel
        # @param NamespaceId: tem namespaceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param EksNamespace: eks namespace
        # @type EksNamespace: String
        # @param AddressIPVersion: ip version
        # @type AddressIPVersion: String
        # @param Name: ingress name
        # @type Name: String
        # @param Rules: rules 配置
        # @type Rules: Array
        # @param ClbId: clb ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClbId: String
        # @param Tls: tls 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tls: Array
        # @param ClusterId: eks clusterId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Vip: clb ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Mixed: 是否混合 https，默认 false，可选值 true 代表有 https 协议监听
        # @type Mixed: Boolean

        attr_accessor :NamespaceId, :EksNamespace, :AddressIPVersion, :Name, :Rules, :ClbId, :Tls, :ClusterId, :Vip, :CreateTime, :Mixed
        
        def initialize(namespaceid=nil, eksnamespace=nil, addressipversion=nil, name=nil, rules=nil, clbid=nil, tls=nil, clusterid=nil, vip=nil, createtime=nil, mixed=nil)
          @NamespaceId = namespaceid
          @EksNamespace = eksnamespace
          @AddressIPVersion = addressipversion
          @Name = name
          @Rules = rules
          @ClbId = clbid
          @Tls = tls
          @ClusterId = clusterid
          @Vip = vip
          @CreateTime = createtime
          @Mixed = mixed
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @EksNamespace = params['EksNamespace']
          @AddressIPVersion = params['AddressIPVersion']
          @Name = params['Name']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              @Rules << IngressRule.new.deserialize(i)
            end
          end
          @ClbId = params['ClbId']
          unless params['Tls'].nil?
            @Tls = []
            params['Tls'].each do |i|
              @Tls << IngressTls.new.deserialize(i)
            end
          end
          @ClusterId = params['ClusterId']
          @Vip = params['Vip']
          @CreateTime = params['CreateTime']
          @Mixed = params['Mixed']
        end
      end

      # ingress rule 配置
      class IngressRule < TencentCloud::Common::AbstractModel
        # @param Http: ingress rule value
        # @type Http: :class:`Tencentcloud::Tem.v20201221.models.IngressRuleValue`
        # @param Host: host 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Protocol: 协议，选项为 http， https，默认为 http
        # @type Protocol: String

        attr_accessor :Http, :Host, :Protocol
        
        def initialize(http=nil, host=nil, protocol=nil)
          @Http = http
          @Host = host
          @Protocol = protocol
        end

        def deserialize(params)
          unless params['Http'].nil?
            @Http = IngressRuleValue.new.deserialize(params['Http'])
          end
          @Host = params['Host']
          @Protocol = params['Protocol']
        end
      end

      # Ingress 规则 backend 配置
      class IngressRuleBackend < TencentCloud::Common::AbstractModel
        # @param ServiceName: eks service 名
        # @type ServiceName: String
        # @param ServicePort: eks service 端口
        # @type ServicePort: Integer

        attr_accessor :ServiceName, :ServicePort
        
        def initialize(servicename=nil, serviceport=nil)
          @ServiceName = servicename
          @ServicePort = serviceport
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @ServicePort = params['ServicePort']
        end
      end

      # Ingress Rule Path 配置
      class IngressRulePath < TencentCloud::Common::AbstractModel
        # @param Path: path 信息
        # @type Path: String
        # @param Backend: backend 配置
        # @type Backend: :class:`Tencentcloud::Tem.v20201221.models.IngressRuleBackend`

        attr_accessor :Path, :Backend
        
        def initialize(path=nil, backend=nil)
          @Path = path
          @Backend = backend
        end

        def deserialize(params)
          @Path = params['Path']
          unless params['Backend'].nil?
            @Backend = IngressRuleBackend.new.deserialize(params['Backend'])
          end
        end
      end

      # Ingress Rule Value 配置
      class IngressRuleValue < TencentCloud::Common::AbstractModel
        # @param Paths: rule 整体配置
        # @type Paths: Array

        attr_accessor :Paths
        
        def initialize(paths=nil)
          @Paths = paths
        end

        def deserialize(params)
          unless params['Paths'].nil?
            @Paths = []
            params['Paths'].each do |i|
              @Paths << IngressRulePath.new.deserialize(i)
            end
          end
        end
      end

      # ingress tls 配置
      class IngressTls < TencentCloud::Common::AbstractModel
        # @param Hosts: host 数组, 空数组表示全部域名的默认证书
        # @type Hosts: Array
        # @param SecretName: secret name，如使用证书，则填空字符串
        # @type SecretName: String
        # @param CertificateId: SSL Certificate Id
        # @type CertificateId: String

        attr_accessor :Hosts, :SecretName, :CertificateId
        
        def initialize(hosts=nil, secretname=nil, certificateid=nil)
          @Hosts = hosts
          @SecretName = secretname
          @CertificateId = certificateid
        end

        def deserialize(params)
          @Hosts = params['Hosts']
          @SecretName = params['SecretName']
          @CertificateId = params['CertificateId']
        end
      end

      # 日志输出配置
      class LogOutputConf < TencentCloud::Common::AbstractModel
        # @param OutputType: 日志消费端类型
        # @type OutputType: String
        # @param ClsLogsetName: cls日志集
        # @type ClsLogsetName: String
        # @param ClsLogTopicId: cls日志主题
        # @type ClsLogTopicId: String
        # @param ClsLogsetId: cls日志集id
        # @type ClsLogsetId: String
        # @param ClsLogTopicName: cls日志名称
        # @type ClsLogTopicName: String

        attr_accessor :OutputType, :ClsLogsetName, :ClsLogTopicId, :ClsLogsetId, :ClsLogTopicName
        
        def initialize(outputtype=nil, clslogsetname=nil, clslogtopicid=nil, clslogsetid=nil, clslogtopicname=nil)
          @OutputType = outputtype
          @ClsLogsetName = clslogsetname
          @ClsLogTopicId = clslogtopicid
          @ClsLogsetId = clslogsetid
          @ClsLogTopicName = clslogtopicname
        end

        def deserialize(params)
          @OutputType = params['OutputType']
          @ClsLogsetName = params['ClsLogsetName']
          @ClsLogTopicId = params['ClsLogTopicId']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsLogTopicName = params['ClsLogTopicName']
        end
      end

      # ModifyIngress请求参数结构体
      class ModifyIngressRequest < TencentCloud::Common::AbstractModel
        # @param Ingress: Ingress 规则配置
        # @type Ingress: :class:`Tencentcloud::Tem.v20201221.models.IngressInfo`
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :Ingress, :SourceChannel
        
        def initialize(ingress=nil, sourcechannel=nil)
          @Ingress = ingress
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          unless params['Ingress'].nil?
            @Ingress = IngressInfo.new.deserialize(params['Ingress'])
          end
          @SourceChannel = params['SourceChannel']
        end
      end

      # ModifyIngress返回参数结构体
      class ModifyIngressResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyNamespace请求参数结构体
      class ModifyNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 环境id
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Description: 命名空间描述
        # @type Description: String
        # @param Vpc: 私有网络名称
        # @type Vpc: String
        # @param SubnetIds: 子网网络
        # @type SubnetIds: Array
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceId, :NamespaceName, :Description, :Vpc, :SubnetIds, :SourceChannel
        
        def initialize(namespaceid=nil, namespacename=nil, description=nil, vpc=nil, subnetids=nil, sourcechannel=nil)
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @Description = description
          @Vpc = vpc
          @SubnetIds = subnetids
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @Description = params['Description']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @SourceChannel = params['SourceChannel']
        end
      end

      # ModifyNamespace返回参数结构体
      class ModifyNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为命名空间ID，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyServiceInfo请求参数结构体
      class ModifyServiceInfoRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Description: 描述
        # @type Description: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :ServiceId, :Description, :SourceChannel
        
        def initialize(serviceid=nil, description=nil, sourcechannel=nil)
          @ServiceId = serviceid
          @Description = description
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Description = params['Description']
          @SourceChannel = params['SourceChannel']
        end
      end

      # ModifyServiceInfo返回参数结构体
      class ModifyServiceInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功与否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 挂载配置信息
      class MountedSettingConf < TencentCloud::Common::AbstractModel
        # @param ConfigDataName: 配置名称
        # @type ConfigDataName: String
        # @param MountedPath: 挂载路径
        # @type MountedPath: String
        # @param Data: 配置内容
        # @type Data: Array

        attr_accessor :ConfigDataName, :MountedPath, :Data
        
        def initialize(configdataname=nil, mountedpath=nil, data=nil)
          @ConfigDataName = configdataname
          @MountedPath = mountedpath
          @Data = data
        end

        def deserialize(params)
          @ConfigDataName = params['ConfigDataName']
          @MountedPath = params['MountedPath']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              @Data << Pair.new.deserialize(i)
            end
          end
        end
      end

      # 命名空间分页
      class NamespacePage < TencentCloud::Common::AbstractModel
        # @param Records: 分页内容
        # @type Records: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param Size: 条目数
        # @type Size: Integer
        # @param Pages: 页数
        # @type Pages: Integer

        attr_accessor :Records, :Total, :Size, :Pages
        
        def initialize(records=nil, total=nil, size=nil, pages=nil)
          @Records = records
          @Total = total
          @Size = size
          @Pages = pages
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              @Records << TemNamespaceInfo.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @Size = params['Size']
          @Pages = params['Pages']
        end
      end

      # 键值对
      class Pair < TencentCloud::Common::AbstractModel
        # @param Key: 建
        # @type Key: String
        # @param Value: 值
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

      # 服务端口映射
      class PortMapping < TencentCloud::Common::AbstractModel
        # @param Port: 端口
        # @type Port: Integer
        # @param TargetPort: 映射端口
        # @type TargetPort: Integer
        # @param Protocol: 协议栈 TCP/UDP
        # @type Protocol: String

        attr_accessor :Port, :TargetPort, :Protocol
        
        def initialize(port=nil, targetport=nil, protocol=nil)
          @Port = port
          @TargetPort = targetport
          @Protocol = protocol
        end

        def deserialize(params)
          @Port = params['Port']
          @TargetPort = params['TargetPort']
          @Protocol = params['Protocol']
        end
      end

      # RestartServiceRunPod请求参数结构体
      class RestartServiceRunPodRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 环境id
        # @type NamespaceId: String
        # @param ServiceId: 服务名id
        # @type ServiceId: String
        # @param PodName: 名字
        # @type PodName: String
        # @param Limit: 单页条数
        # @type Limit: Integer
        # @param Offset: 分页下标
        # @type Offset: Integer
        # @param Status: pod状态
        # @type Status: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceId, :ServiceId, :PodName, :Limit, :Offset, :Status, :SourceChannel
        
        def initialize(namespaceid=nil, serviceid=nil, podname=nil, limit=nil, offset=nil, status=nil, sourcechannel=nil)
          @NamespaceId = namespaceid
          @ServiceId = serviceid
          @PodName = podname
          @Limit = limit
          @Offset = offset
          @Status = status
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @ServiceId = params['ServiceId']
          @PodName = params['PodName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @SourceChannel = params['SourceChannel']
        end
      end

      # RestartServiceRunPod返回参数结构体
      class RestartServiceRunPodResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 版本pod
      class RunVersionPod < TencentCloud::Common::AbstractModel
        # @param Webshell: shell地址
        # @type Webshell: String
        # @param PodId: pod的id
        # @type PodId: String
        # @param Status: 状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PodIp: 实例的ip
        # @type PodIp: String
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param DeployVersion: 部署版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployVersion: String

        attr_accessor :Webshell, :PodId, :Status, :CreateTime, :PodIp, :Zone, :DeployVersion
        
        def initialize(webshell=nil, podid=nil, status=nil, createtime=nil, podip=nil, zone=nil, deployversion=nil)
          @Webshell = webshell
          @PodId = podid
          @Status = status
          @CreateTime = createtime
          @PodIp = podip
          @Zone = zone
          @DeployVersion = deployversion
        end

        def deserialize(params)
          @Webshell = params['Webshell']
          @PodId = params['PodId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @PodIp = params['PodIp']
          @Zone = params['Zone']
          @DeployVersion = params['DeployVersion']
        end
      end

      # 存储卷配置
      class StorageConf < TencentCloud::Common::AbstractModel
        # @param StorageVolName: 存储卷名称
        # @type StorageVolName: String
        # @param StorageVolPath: 存储卷路径
        # @type StorageVolPath: String
        # @param StorageVolIp: 存储卷IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageVolIp: String

        attr_accessor :StorageVolName, :StorageVolPath, :StorageVolIp
        
        def initialize(storagevolname=nil, storagevolpath=nil, storagevolip=nil)
          @StorageVolName = storagevolname
          @StorageVolPath = storagevolpath
          @StorageVolIp = storagevolip
        end

        def deserialize(params)
          @StorageVolName = params['StorageVolName']
          @StorageVolPath = params['StorageVolPath']
          @StorageVolIp = params['StorageVolIp']
        end
      end

      # 数据卷挂载信息
      class StorageMountConf < TencentCloud::Common::AbstractModel
        # @param VolumeName: 数据卷名
        # @type VolumeName: String
        # @param MountPath: 数据卷绑定路径
        # @type MountPath: String

        attr_accessor :VolumeName, :MountPath
        
        def initialize(volumename=nil, mountpath=nil)
          @VolumeName = volumename
          @MountPath = mountpath
        end

        def deserialize(params)
          @VolumeName = params['VolumeName']
          @MountPath = params['MountPath']
        end
      end

      # 命名空间对象
      class TemNamespaceInfo < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间id
        # @type NamespaceId: String
        # @param Channel: 渠道
        # @type Channel: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Region: 区域名称
        # @type Region: String
        # @param Description: 命名空间描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: 状态,1:已销毁;0:正常
        # @type Status: Integer
        # @param Vpc: vpc网络
        # @type Vpc: String
        # @param CreateDate: 创建时间
        # @type CreateDate: String
        # @param ModifyDate: 修改时间
        # @type ModifyDate: String
        # @param Modifier: 修改人
        # @type Modifier: String
        # @param Creator: 创建人
        # @type Creator: String
        # @param ServiceNum: 服务数
        # @type ServiceNum: Integer
        # @param RunInstancesNum: 运行实例数
        # @type RunInstancesNum: Integer
        # @param SubnetId: 子网络
        # @type SubnetId: String
        # @param TcbEnvStatus: tcb环境状态
        # @type TcbEnvStatus: String
        # @param ClusterStatus: eks cluster status
        # @type ClusterStatus: String
        # @param EnableTswTraceService: 是否开启tsw
        # @type EnableTswTraceService: Boolean

        attr_accessor :NamespaceId, :Channel, :NamespaceName, :Region, :Description, :Status, :Vpc, :CreateDate, :ModifyDate, :Modifier, :Creator, :ServiceNum, :RunInstancesNum, :SubnetId, :TcbEnvStatus, :ClusterStatus, :EnableTswTraceService
        
        def initialize(namespaceid=nil, channel=nil, namespacename=nil, region=nil, description=nil, status=nil, vpc=nil, createdate=nil, modifydate=nil, modifier=nil, creator=nil, servicenum=nil, runinstancesnum=nil, subnetid=nil, tcbenvstatus=nil, clusterstatus=nil, enabletswtraceservice=nil)
          @NamespaceId = namespaceid
          @Channel = channel
          @NamespaceName = namespacename
          @Region = region
          @Description = description
          @Status = status
          @Vpc = vpc
          @CreateDate = createdate
          @ModifyDate = modifydate
          @Modifier = modifier
          @Creator = creator
          @ServiceNum = servicenum
          @RunInstancesNum = runinstancesnum
          @SubnetId = subnetid
          @TcbEnvStatus = tcbenvstatus
          @ClusterStatus = clusterstatus
          @EnableTswTraceService = enabletswtraceservice
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @Channel = params['Channel']
          @NamespaceName = params['NamespaceName']
          @Region = params['Region']
          @Description = params['Description']
          @Status = params['Status']
          @Vpc = params['Vpc']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          @Modifier = params['Modifier']
          @Creator = params['Creator']
          @ServiceNum = params['ServiceNum']
          @RunInstancesNum = params['RunInstancesNum']
          @SubnetId = params['SubnetId']
          @TcbEnvStatus = params['TcbEnvStatus']
          @ClusterStatus = params['ClusterStatus']
          @EnableTswTraceService = params['EnableTswTraceService']
        end
      end

    end
  end
end

