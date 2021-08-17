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
    module V20210701
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

      # CreateApplication请求参数结构体
      class CreateApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationName: 应用名
        # @type ApplicationName: String
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
        # @param SubnetList: 应用所在子网
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
        # @param EnableTracing: 是否启用调用链功能
        # @type EnableTracing: Integer

        attr_accessor :ApplicationName, :Description, :UseDefaultImageService, :RepoType, :InstanceId, :RepoServer, :RepoName, :SourceChannel, :SubnetList, :CodingLanguage, :DeployMode, :EnableTracing
        
        def initialize(applicationname=nil, description=nil, usedefaultimageservice=nil, repotype=nil, instanceid=nil, reposerver=nil, reponame=nil, sourcechannel=nil, subnetlist=nil, codinglanguage=nil, deploymode=nil, enabletracing=nil)
          @ApplicationName = applicationname
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
          @EnableTracing = enabletracing
        end

        def deserialize(params)
          @ApplicationName = params['ApplicationName']
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
          @EnableTracing = params['EnableTracing']
        end
      end

      # CreateApplication返回参数结构体
      class CreateApplicationResponse < TencentCloud::Common::AbstractModel
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

      # CreateCosToken请求参数结构体
      class CreateCosTokenRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param PkgName: 包名
        # @type PkgName: String
        # @param OptType: optType 1上传  2查询
        # @type OptType: Integer
        # @param SourceChannel: 来源 channel
        # @type SourceChannel: Integer
        # @param TimeVersion: 充当deployVersion入参
        # @type TimeVersion: String

        attr_accessor :ApplicationId, :PkgName, :OptType, :SourceChannel, :TimeVersion
        
        def initialize(applicationid=nil, pkgname=nil, opttype=nil, sourcechannel=nil, timeversion=nil)
          @ApplicationId = applicationid
          @PkgName = pkgname
          @OptType = opttype
          @SourceChannel = sourcechannel
          @TimeVersion = timeversion
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @PkgName = params['PkgName']
          @OptType = params['OptType']
          @SourceChannel = params['SourceChannel']
          @TimeVersion = params['TimeVersion']
        end
      end

      # CreateCosToken返回参数结构体
      class CreateCosTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为CosToken对象，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.CosToken`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CosToken.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateEnvironment请求参数结构体
      class CreateEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentName: 环境名称
        # @type EnvironmentName: String
        # @param Vpc: 私有网络名称
        # @type Vpc: String
        # @param SubnetIds: 子网列表
        # @type SubnetIds: Array
        # @param Description: 环境描述
        # @type Description: String
        # @param K8sVersion: K8s version
        # @type K8sVersion: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnableTswTraceService: 是否开启tsw服务
        # @type EnableTswTraceService: Boolean

        attr_accessor :EnvironmentName, :Vpc, :SubnetIds, :Description, :K8sVersion, :SourceChannel, :EnableTswTraceService
        
        def initialize(environmentname=nil, vpc=nil, subnetids=nil, description=nil, k8sversion=nil, sourcechannel=nil, enabletswtraceservice=nil)
          @EnvironmentName = environmentname
          @Vpc = vpc
          @SubnetIds = subnetids
          @Description = description
          @K8sVersion = k8sversion
          @SourceChannel = sourcechannel
          @EnableTswTraceService = enabletswtraceservice
        end

        def deserialize(params)
          @EnvironmentName = params['EnvironmentName']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @Description = params['Description']
          @K8sVersion = params['K8sVersion']
          @SourceChannel = params['SourceChannel']
          @EnableTswTraceService = params['EnableTswTraceService']
        end
      end

      # CreateEnvironment返回参数结构体
      class CreateEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为环境ID，失败为null
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
        # @param EnvironmentId: 环境 Id
        # @type EnvironmentId: String
        # @param ResourceType: 资源类型，目前支持文件系统：CFS；日志服务：CLS；注册中心：TSE_SRE
        # @type ResourceType: String
        # @param ResourceId: 资源 Id
        # @type ResourceId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :ResourceType, :ResourceId, :SourceChannel
        
        def initialize(environmentid=nil, resourcetype=nil, resourceid=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
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

      # 定时伸缩策略
      class CronHorizontalAutoscaler < TencentCloud::Common::AbstractModel
        # @param Name: 定时伸缩策略名称
        # @type Name: String
        # @param Period: 策略周期
        # * * *，三个范围，第一个是天，第二个是月，第三个是周，中间用空格隔开
        # 例子：
        # * * * （每天）
        # * * 0-3 （每周日到周三）
        # 1,11,21 * *（每个月1号，11号，21号）
        # @type Period: String
        # @param Schedules: 定时伸缩策略明细
        # @type Schedules: Array
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param Priority: 策略优先级，值越大优先级越高，0为最小值
        # @type Priority: Integer

        attr_accessor :Name, :Period, :Schedules, :Enabled, :Priority
        
        def initialize(name=nil, period=nil, schedules=nil, enabled=nil, priority=nil)
          @Name = name
          @Period = period
          @Schedules = schedules
          @Enabled = enabled
          @Priority = priority
        end

        def deserialize(params)
          @Name = params['Name']
          @Period = params['Period']
          unless params['Schedules'].nil?
            @Schedules = []
            params['Schedules'].each do |i|
              cronhorizontalautoscalerschedule_tmp = CronHorizontalAutoscalerSchedule.new
              cronhorizontalautoscalerschedule_tmp.deserialize(i)
              @Schedules << cronhorizontalautoscalerschedule_tmp
            end
          end
          @Enabled = params['Enabled']
          @Priority = params['Priority']
        end
      end

      # 定时伸缩策略明细
      class CronHorizontalAutoscalerSchedule < TencentCloud::Common::AbstractModel
        # @param StartAt: 触发事件，小时分钟，用:分割
        # 例如
        # 00:00（零点零分触发）
        # @type StartAt: String
        # @param TargetReplicas: 目标实例数（不大于50）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetReplicas: Integer

        attr_accessor :StartAt, :TargetReplicas
        
        def initialize(startat=nil, targetreplicas=nil)
          @StartAt = startat
          @TargetReplicas = targetreplicas
        end

        def deserialize(params)
          @StartAt = params['StartAt']
          @TargetReplicas = params['TargetReplicas']
        end
      end

      # DeleteIngress请求参数结构体
      class DeleteIngressRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param ClusterNamespace: 环境 namespace
        # @type ClusterNamespace: String
        # @param IngressName: ingress 规则名
        # @type IngressName: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :ClusterNamespace, :IngressName, :SourceChannel
        
        def initialize(environmentid=nil, clusternamespace=nil, ingressname=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @ClusterNamespace = clusternamespace
          @IngressName = ingressname
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterNamespace = params['ClusterNamespace']
          @IngressName = params['IngressName']
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

      # DeployApplication请求参数结构体
      class DeployApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param InitPodNum: 初始化 pod 数
        # @type InitPodNum: Integer
        # @param CpuSpec: cpu规格
        # @type CpuSpec: Float
        # @param MemorySpec: 内存规格
        # @type MemorySpec: Float
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param ImgRepo: 镜像仓库
        # @type ImgRepo: String
        # @param VersionDesc: 版本描述信息
        # @type VersionDesc: String
        # @param JvmOpts: 启动参数
        # @type JvmOpts: String
        # @param EsInfo: 弹性伸缩配置（已废弃，请使用HorizontalAutoscaler设置弹性策略）
        # @type EsInfo: :class:`Tencentcloud::Tem.v20210701.models.EsInfo`
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
        # @type LogOutputConf: :class:`Tencentcloud::Tem.v20210701.models.LogOutputConf`
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Description: 版本描述
        # @type Description: String
        # @param ImageCommand: 镜像命令
        # @type ImageCommand: String
        # @param ImageArgs: 镜像命令参数
        # @type ImageArgs: Array
        # @param UseRegistryDefaultConfig: 是否添加默认注册中心配置
        # @type UseRegistryDefaultConfig: Boolean
        # @param SettingConfs: 挂载配置信息
        # @type SettingConfs: Array
        # @param Service: 应用访问设置
        # @type Service: :class:`Tencentcloud::Tem.v20210701.models.EksService`
        # @param VersionId: 要回滚到的历史版本id
        # @type VersionId: String
        # @param PostStart: 启动后执行的脚本
        # @type PostStart: String
        # @param PreStop: 停止前执行的脚本
        # @type PreStop: String
        # @param Liveness: 存活探针配置
        # @type Liveness: :class:`Tencentcloud::Tem.v20210701.models.HealthCheckConfig`
        # @param Readiness: 就绪探针配置
        # @type Readiness: :class:`Tencentcloud::Tem.v20210701.models.HealthCheckConfig`
        # @param DeployStrategyConf: 分批发布策略配置
        # @type DeployStrategyConf: :class:`Tencentcloud::Tem.v20210701.models.DeployStrategyConf`
        # @param HorizontalAutoscaler: 弹性策略
        # @type HorizontalAutoscaler: Array
        # @param CronHorizontalAutoscaler: 定时弹性策略
        # @type CronHorizontalAutoscaler: Array

        attr_accessor :ApplicationId, :InitPodNum, :CpuSpec, :MemorySpec, :EnvironmentId, :ImgRepo, :VersionDesc, :JvmOpts, :EsInfo, :EnvConf, :LogConfs, :StorageConfs, :StorageMountConfs, :DeployMode, :DeployVersion, :PkgName, :JdkVersion, :SecurityGroupIds, :LogOutputConf, :SourceChannel, :Description, :ImageCommand, :ImageArgs, :UseRegistryDefaultConfig, :SettingConfs, :Service, :VersionId, :PostStart, :PreStop, :Liveness, :Readiness, :DeployStrategyConf, :HorizontalAutoscaler, :CronHorizontalAutoscaler
        
        def initialize(applicationid=nil, initpodnum=nil, cpuspec=nil, memoryspec=nil, environmentid=nil, imgrepo=nil, versiondesc=nil, jvmopts=nil, esinfo=nil, envconf=nil, logconfs=nil, storageconfs=nil, storagemountconfs=nil, deploymode=nil, deployversion=nil, pkgname=nil, jdkversion=nil, securitygroupids=nil, logoutputconf=nil, sourcechannel=nil, description=nil, imagecommand=nil, imageargs=nil, useregistrydefaultconfig=nil, settingconfs=nil, service=nil, versionid=nil, poststart=nil, prestop=nil, liveness=nil, readiness=nil, deploystrategyconf=nil, horizontalautoscaler=nil, cronhorizontalautoscaler=nil)
          @ApplicationId = applicationid
          @InitPodNum = initpodnum
          @CpuSpec = cpuspec
          @MemorySpec = memoryspec
          @EnvironmentId = environmentid
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
          @UseRegistryDefaultConfig = useregistrydefaultconfig
          @SettingConfs = settingconfs
          @Service = service
          @VersionId = versionid
          @PostStart = poststart
          @PreStop = prestop
          @Liveness = liveness
          @Readiness = readiness
          @DeployStrategyConf = deploystrategyconf
          @HorizontalAutoscaler = horizontalautoscaler
          @CronHorizontalAutoscaler = cronhorizontalautoscaler
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @InitPodNum = params['InitPodNum']
          @CpuSpec = params['CpuSpec']
          @MemorySpec = params['MemorySpec']
          @EnvironmentId = params['EnvironmentId']
          @ImgRepo = params['ImgRepo']
          @VersionDesc = params['VersionDesc']
          @JvmOpts = params['JvmOpts']
          unless params['EsInfo'].nil?
            @EsInfo = EsInfo.new
            @EsInfo.deserialize(params['EsInfo'])
          end
          unless params['EnvConf'].nil?
            @EnvConf = []
            params['EnvConf'].each do |i|
              pair_tmp = Pair.new
              pair_tmp.deserialize(i)
              @EnvConf << pair_tmp
            end
          end
          @LogConfs = params['LogConfs']
          unless params['StorageConfs'].nil?
            @StorageConfs = []
            params['StorageConfs'].each do |i|
              storageconf_tmp = StorageConf.new
              storageconf_tmp.deserialize(i)
              @StorageConfs << storageconf_tmp
            end
          end
          unless params['StorageMountConfs'].nil?
            @StorageMountConfs = []
            params['StorageMountConfs'].each do |i|
              storagemountconf_tmp = StorageMountConf.new
              storagemountconf_tmp.deserialize(i)
              @StorageMountConfs << storagemountconf_tmp
            end
          end
          @DeployMode = params['DeployMode']
          @DeployVersion = params['DeployVersion']
          @PkgName = params['PkgName']
          @JdkVersion = params['JdkVersion']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['LogOutputConf'].nil?
            @LogOutputConf = LogOutputConf.new
            @LogOutputConf.deserialize(params['LogOutputConf'])
          end
          @SourceChannel = params['SourceChannel']
          @Description = params['Description']
          @ImageCommand = params['ImageCommand']
          @ImageArgs = params['ImageArgs']
          @UseRegistryDefaultConfig = params['UseRegistryDefaultConfig']
          unless params['SettingConfs'].nil?
            @SettingConfs = []
            params['SettingConfs'].each do |i|
              mountedsettingconf_tmp = MountedSettingConf.new
              mountedsettingconf_tmp.deserialize(i)
              @SettingConfs << mountedsettingconf_tmp
            end
          end
          unless params['Service'].nil?
            @Service = EksService.new
            @Service.deserialize(params['Service'])
          end
          @VersionId = params['VersionId']
          @PostStart = params['PostStart']
          @PreStop = params['PreStop']
          unless params['Liveness'].nil?
            @Liveness = HealthCheckConfig.new
            @Liveness.deserialize(params['Liveness'])
          end
          unless params['Readiness'].nil?
            @Readiness = HealthCheckConfig.new
            @Readiness.deserialize(params['Readiness'])
          end
          unless params['DeployStrategyConf'].nil?
            @DeployStrategyConf = DeployStrategyConf.new
            @DeployStrategyConf.deserialize(params['DeployStrategyConf'])
          end
          unless params['HorizontalAutoscaler'].nil?
            @HorizontalAutoscaler = []
            params['HorizontalAutoscaler'].each do |i|
              horizontalautoscaler_tmp = HorizontalAutoscaler.new
              horizontalautoscaler_tmp.deserialize(i)
              @HorizontalAutoscaler << horizontalautoscaler_tmp
            end
          end
          unless params['CronHorizontalAutoscaler'].nil?
            @CronHorizontalAutoscaler = []
            params['CronHorizontalAutoscaler'].each do |i|
              cronhorizontalautoscaler_tmp = CronHorizontalAutoscaler.new
              cronhorizontalautoscaler_tmp.deserialize(i)
              @CronHorizontalAutoscaler << cronhorizontalautoscaler_tmp
            end
          end
        end
      end

      # DeployApplication返回参数结构体
      class DeployApplicationResponse < TencentCloud::Common::AbstractModel
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

      # 分批发布单批次详情
      class DeployServiceBatchDetail < TencentCloud::Common::AbstractModel
        # @param OldPodList: 旧实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldPodList: :class:`Tencentcloud::Tem.v20210701.models.DeployServicePodDetail`
        # @param NewPodList: 新实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewPodList: :class:`Tencentcloud::Tem.v20210701.models.DeployServicePodDetail`
        # @param BatchStatus: 当前批次状态："WaitForTimeExceed", "WaitForResume", "Deploying", "Finish", "NotStart"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchStatus: String
        # @param PodNum: 该批次预计旧实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodNum: Integer
        # @param BatchIndex: 批次id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchIndex: Integer
        # @param OldPods: 旧实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldPods: Array
        # @param NewPods: 新实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewPods: Array
        # @param NextBatchStartTime: =0：手动确认批次；>0：下一批次开始时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextBatchStartTime: Integer

        attr_accessor :OldPodList, :NewPodList, :BatchStatus, :PodNum, :BatchIndex, :OldPods, :NewPods, :NextBatchStartTime
        
        def initialize(oldpodlist=nil, newpodlist=nil, batchstatus=nil, podnum=nil, batchindex=nil, oldpods=nil, newpods=nil, nextbatchstarttime=nil)
          @OldPodList = oldpodlist
          @NewPodList = newpodlist
          @BatchStatus = batchstatus
          @PodNum = podnum
          @BatchIndex = batchindex
          @OldPods = oldpods
          @NewPods = newpods
          @NextBatchStartTime = nextbatchstarttime
        end

        def deserialize(params)
          unless params['OldPodList'].nil?
            @OldPodList = DeployServicePodDetail.new
            @OldPodList.deserialize(params['OldPodList'])
          end
          unless params['NewPodList'].nil?
            @NewPodList = DeployServicePodDetail.new
            @NewPodList.deserialize(params['NewPodList'])
          end
          @BatchStatus = params['BatchStatus']
          @PodNum = params['PodNum']
          @BatchIndex = params['BatchIndex']
          unless params['OldPods'].nil?
            @OldPods = []
            params['OldPods'].each do |i|
              deployservicepoddetail_tmp = DeployServicePodDetail.new
              deployservicepoddetail_tmp.deserialize(i)
              @OldPods << deployservicepoddetail_tmp
            end
          end
          unless params['NewPods'].nil?
            @NewPods = []
            params['NewPods'].each do |i|
              deployservicepoddetail_tmp = DeployServicePodDetail.new
              deployservicepoddetail_tmp.deserialize(i)
              @NewPods << deployservicepoddetail_tmp
            end
          end
          @NextBatchStartTime = params['NextBatchStartTime']
        end
      end

      # 分批发布单批次详情
      class DeployServicePodDetail < TencentCloud::Common::AbstractModel
        # @param PodId: pod Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodId: String
        # @param PodStatus: pod状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodStatus: Array
        # @param PodVersion: pod版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodVersion: String
        # @param CreateTime: pod创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Zone: pod所在可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Webshell: webshell地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Webshell: String

        attr_accessor :PodId, :PodStatus, :PodVersion, :CreateTime, :Zone, :Webshell
        
        def initialize(podid=nil, podstatus=nil, podversion=nil, createtime=nil, zone=nil, webshell=nil)
          @PodId = podid
          @PodStatus = podstatus
          @PodVersion = podversion
          @CreateTime = createtime
          @Zone = zone
          @Webshell = webshell
        end

        def deserialize(params)
          @PodId = params['PodId']
          @PodStatus = params['PodStatus']
          @PodVersion = params['PodVersion']
          @CreateTime = params['CreateTime']
          @Zone = params['Zone']
          @Webshell = params['Webshell']
        end
      end

      # 分批发布策略配置
      class DeployStrategyConf < TencentCloud::Common::AbstractModel
        # @param TotalBatchCount: 总分批数
        # @type TotalBatchCount: Integer
        # @param BetaBatchNum: beta分批实例数
        # @type BetaBatchNum: Integer
        # @param DeployStrategyType: 分批策略：0-全自动，1-全手动，2-beta分批，beta批一定是手动的
        # @type DeployStrategyType: Integer
        # @param BatchInterval: 每批暂停间隔
        # @type BatchInterval: Integer

        attr_accessor :TotalBatchCount, :BetaBatchNum, :DeployStrategyType, :BatchInterval
        
        def initialize(totalbatchcount=nil, betabatchnum=nil, deploystrategytype=nil, batchinterval=nil)
          @TotalBatchCount = totalbatchcount
          @BetaBatchNum = betabatchnum
          @DeployStrategyType = deploystrategytype
          @BatchInterval = batchinterval
        end

        def deserialize(params)
          @TotalBatchCount = params['TotalBatchCount']
          @BetaBatchNum = params['BetaBatchNum']
          @DeployStrategyType = params['DeployStrategyType']
          @BatchInterval = params['BatchInterval']
        end
      end

      # DescribeApplicationPods请求参数结构体
      class DescribeApplicationPodsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String
        # @param ApplicationId: 应用id
        # @type ApplicationId: String
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

        attr_accessor :EnvironmentId, :ApplicationId, :Limit, :Offset, :Status, :PodName, :SourceChannel
        
        def initialize(environmentid=nil, applicationid=nil, limit=nil, offset=nil, status=nil, podname=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @ApplicationId = applicationid
          @Limit = limit
          @Offset = offset
          @Status = status
          @PodName = podname
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ApplicationId = params['ApplicationId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @PodName = params['PodName']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeApplicationPods返回参数结构体
      class DescribeApplicationPodsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.DescribeRunPodPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeRunPodPage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployApplicationDetail请求参数结构体
      class DescribeDeployApplicationDetailRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :EnvironmentId
        
        def initialize(applicationid=nil, environmentid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # DescribeDeployApplicationDetail返回参数结构体
      class DescribeDeployApplicationDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分批发布结果详情
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.TemDeployApplicationDetailInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TemDeployApplicationDetailInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironments请求参数结构体
      class DescribeEnvironmentsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeEnvironments返回参数结构体
      class DescribeEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.NamespacePage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = NamespacePage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIngress请求参数结构体
      class DescribeIngressRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param ClusterNamespace: 环境namespace
        # @type ClusterNamespace: String
        # @param IngressName: ingress 规则名
        # @type IngressName: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :ClusterNamespace, :IngressName, :SourceChannel
        
        def initialize(environmentid=nil, clusternamespace=nil, ingressname=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @ClusterNamespace = clusternamespace
          @IngressName = ingressname
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterNamespace = params['ClusterNamespace']
          @IngressName = params['IngressName']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeIngress返回参数结构体
      class DescribeIngressResponse < TencentCloud::Common::AbstractModel
        # @param Result: Ingress 规则配置
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.IngressInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = IngressInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIngresses请求参数结构体
      class DescribeIngressesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 id
        # @type EnvironmentId: String
        # @param ClusterNamespace: 环境 namespace
        # @type ClusterNamespace: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param IngressNames: ingress 规则名列表
        # @type IngressNames: Array

        attr_accessor :EnvironmentId, :ClusterNamespace, :SourceChannel, :IngressNames
        
        def initialize(environmentid=nil, clusternamespace=nil, sourcechannel=nil, ingressnames=nil)
          @EnvironmentId = environmentid
          @ClusterNamespace = clusternamespace
          @SourceChannel = sourcechannel
          @IngressNames = ingressnames
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterNamespace = params['ClusterNamespace']
          @SourceChannel = params['SourceChannel']
          @IngressNames = params['IngressNames']
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
              ingressinfo_tmp = IngressInfo.new
              ingressinfo_tmp.deserialize(i)
              @Result << ingressinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelatedIngresses请求参数结构体
      class DescribeRelatedIngressesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 id
        # @type EnvironmentId: String
        # @param ClusterNamespace: 环境 namespace
        # @type ClusterNamespace: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param ApplicationId: 应用 ID
        # @type ApplicationId: String

        attr_accessor :EnvironmentId, :ClusterNamespace, :SourceChannel, :ApplicationId
        
        def initialize(environmentid=nil, clusternamespace=nil, sourcechannel=nil, applicationid=nil)
          @EnvironmentId = environmentid
          @ClusterNamespace = clusternamespace
          @SourceChannel = sourcechannel
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterNamespace = params['ClusterNamespace']
          @SourceChannel = params['SourceChannel']
          @ApplicationId = params['ApplicationId']
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
              ingressinfo_tmp = IngressInfo.new
              ingressinfo_tmp.deserialize(i)
              @Result << ingressinfo_tmp
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
              runversionpod_tmp = RunVersionPod.new
              runversionpod_tmp.deserialize(i)
              @PodList << runversionpod_tmp
            end
          end
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
        # @param ApplicationName: 服务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
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

        attr_accessor :Name, :Ports, :Yaml, :ApplicationName, :VersionName, :ClusterIp, :ExternalIp, :Type, :SubnetId, :LoadBalanceId, :PortMappings
        
        def initialize(name=nil, ports=nil, yaml=nil, applicationname=nil, versionname=nil, clusterip=nil, externalip=nil, type=nil, subnetid=nil, loadbalanceid=nil, portmappings=nil)
          @Name = name
          @Ports = ports
          @Yaml = yaml
          @ApplicationName = applicationname
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
          @ApplicationName = params['ApplicationName']
          @VersionName = params['VersionName']
          @ClusterIp = params['ClusterIp']
          @ExternalIp = params['ExternalIp']
          @Type = params['Type']
          @SubnetId = params['SubnetId']
          @LoadBalanceId = params['LoadBalanceId']
          unless params['PortMappings'].nil?
            @PortMappings = []
            params['PortMappings'].each do |i|
              portmapping_tmp = PortMapping.new
              portmapping_tmp.deserialize(i)
              @PortMappings << portmapping_tmp
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

      # GenerateApplicationPackageDownloadUrl请求参数结构体
      class GenerateApplicationPackageDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param PkgName: 包名
        # @type PkgName: String
        # @param DeployVersion: 需要下载的包版本
        # @type DeployVersion: String
        # @param SourceChannel: 来源 channel
        # @type SourceChannel: Integer

        attr_accessor :ApplicationId, :PkgName, :DeployVersion, :SourceChannel
        
        def initialize(applicationid=nil, pkgname=nil, deployversion=nil, sourcechannel=nil)
          @ApplicationId = applicationid
          @PkgName = pkgname
          @DeployVersion = deployversion
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @PkgName = params['PkgName']
          @DeployVersion = params['DeployVersion']
          @SourceChannel = params['SourceChannel']
        end
      end

      # GenerateApplicationPackageDownloadUrl返回参数结构体
      class GenerateApplicationPackageDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 包下载临时链接
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

      # 健康检查配置
      class HealthCheckConfig < TencentCloud::Common::AbstractModel
        # @param Type: 支持的健康检查类型，如 HttpGet，TcpSocket，Exec
        # @type Type: String
        # @param Protocol: 仅当健康检查类型为 HttpGet 时有效，表示协议类型，如 HTTP，HTTPS
        # @type Protocol: String
        # @param Path: 仅当健康检查类型为 HttpGet 时有效，表示请求路径
        # @type Path: String
        # @param Exec: 仅当健康检查类型为 Exec 时有效，表示执行的脚本内容
        # @type Exec: String
        # @param Port: 仅当健康检查类型为 HttpGet\TcpSocket 时有效，表示请求路径
        # @type Port: Integer
        # @param InitialDelaySeconds: 检查延迟开始时间，单位为秒，默认为 0
        # @type InitialDelaySeconds: Integer
        # @param TimeoutSeconds: 超时时间，单位为秒，默认为 1
        # @type TimeoutSeconds: Integer
        # @param PeriodSeconds: 间隔时间，单位为秒，默认为 10
        # @type PeriodSeconds: Integer

        attr_accessor :Type, :Protocol, :Path, :Exec, :Port, :InitialDelaySeconds, :TimeoutSeconds, :PeriodSeconds
        
        def initialize(type=nil, protocol=nil, path=nil, exec=nil, port=nil, initialdelayseconds=nil, timeoutseconds=nil, periodseconds=nil)
          @Type = type
          @Protocol = protocol
          @Path = path
          @Exec = exec
          @Port = port
          @InitialDelaySeconds = initialdelayseconds
          @TimeoutSeconds = timeoutseconds
          @PeriodSeconds = periodseconds
        end

        def deserialize(params)
          @Type = params['Type']
          @Protocol = params['Protocol']
          @Path = params['Path']
          @Exec = params['Exec']
          @Port = params['Port']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @TimeoutSeconds = params['TimeoutSeconds']
          @PeriodSeconds = params['PeriodSeconds']
        end
      end

      # 弹性伸缩策略
      class HorizontalAutoscaler < TencentCloud::Common::AbstractModel
        # @param MinReplicas: 最小实例数
        # @type MinReplicas: Integer
        # @param MaxReplicas: 最大实例数
        # @type MaxReplicas: Integer
        # @param Metrics: 指标度量（CPU or MEMORY）
        # @type Metrics: String
        # @param Threshold: 阈值（百分比）
        # @type Threshold: Integer

        attr_accessor :MinReplicas, :MaxReplicas, :Metrics, :Threshold
        
        def initialize(minreplicas=nil, maxreplicas=nil, metrics=nil, threshold=nil)
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @Metrics = metrics
          @Threshold = threshold
        end

        def deserialize(params)
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
          @Metrics = params['Metrics']
          @Threshold = params['Threshold']
        end
      end

      # Ingress 配置
      class IngressInfo < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentId: String
        # @param ClusterNamespace: 环境namespace
        # @type ClusterNamespace: String
        # @param AddressIPVersion: ip version
        # @type AddressIPVersion: String
        # @param IngressName: ingress name
        # @type IngressName: String
        # @param Rules: rules 配置
        # @type Rules: Array
        # @param ClbId: clb ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClbId: String
        # @param Tls: tls 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tls: Array
        # @param ClusterId: 环境集群ID
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

        attr_accessor :EnvironmentId, :ClusterNamespace, :AddressIPVersion, :IngressName, :Rules, :ClbId, :Tls, :ClusterId, :Vip, :CreateTime, :Mixed
        
        def initialize(environmentid=nil, clusternamespace=nil, addressipversion=nil, ingressname=nil, rules=nil, clbid=nil, tls=nil, clusterid=nil, vip=nil, createtime=nil, mixed=nil)
          @EnvironmentId = environmentid
          @ClusterNamespace = clusternamespace
          @AddressIPVersion = addressipversion
          @IngressName = ingressname
          @Rules = rules
          @ClbId = clbid
          @Tls = tls
          @ClusterId = clusterid
          @Vip = vip
          @CreateTime = createtime
          @Mixed = mixed
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterNamespace = params['ClusterNamespace']
          @AddressIPVersion = params['AddressIPVersion']
          @IngressName = params['IngressName']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ingressrule_tmp = IngressRule.new
              ingressrule_tmp.deserialize(i)
              @Rules << ingressrule_tmp
            end
          end
          @ClbId = params['ClbId']
          unless params['Tls'].nil?
            @Tls = []
            params['Tls'].each do |i|
              ingresstls_tmp = IngressTls.new
              ingresstls_tmp.deserialize(i)
              @Tls << ingresstls_tmp
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
        # @type Http: :class:`Tencentcloud::Tem.v20210701.models.IngressRuleValue`
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
            @Http = IngressRuleValue.new
            @Http.deserialize(params['Http'])
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
        # @type Backend: :class:`Tencentcloud::Tem.v20210701.models.IngressRuleBackend`

        attr_accessor :Path, :Backend
        
        def initialize(path=nil, backend=nil)
          @Path = path
          @Backend = backend
        end

        def deserialize(params)
          @Path = params['Path']
          unless params['Backend'].nil?
            @Backend = IngressRuleBackend.new
            @Backend.deserialize(params['Backend'])
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
              ingressrulepath_tmp = IngressRulePath.new
              ingressrulepath_tmp.deserialize(i)
              @Paths << ingressrulepath_tmp
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

      # ModifyApplicationInfo请求参数结构体
      class ModifyApplicationInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param Description: 描述
        # @type Description: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnableTracing: 是否开启调用链, 0 为关闭，1位开启
        # @type EnableTracing: Integer

        attr_accessor :ApplicationId, :Description, :SourceChannel, :EnableTracing
        
        def initialize(applicationid=nil, description=nil, sourcechannel=nil, enabletracing=nil)
          @ApplicationId = applicationid
          @Description = description
          @SourceChannel = sourcechannel
          @EnableTracing = enabletracing
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @Description = params['Description']
          @SourceChannel = params['SourceChannel']
          @EnableTracing = params['EnableTracing']
        end
      end

      # ModifyApplicationInfo返回参数结构体
      class ModifyApplicationInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEnvironment请求参数结构体
      class ModifyEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String
        # @param EnvironmentName: 环境名称
        # @type EnvironmentName: String
        # @param Description: 环境描述
        # @type Description: String
        # @param Vpc: 私有网络名称
        # @type Vpc: String
        # @param SubnetIds: 子网网络
        # @type SubnetIds: Array
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :EnvironmentName, :Description, :Vpc, :SubnetIds, :SourceChannel
        
        def initialize(environmentid=nil, environmentname=nil, description=nil, vpc=nil, subnetids=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @EnvironmentName = environmentname
          @Description = description
          @Vpc = vpc
          @SubnetIds = subnetids
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @EnvironmentName = params['EnvironmentName']
          @Description = params['Description']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @SourceChannel = params['SourceChannel']
        end
      end

      # ModifyEnvironment返回参数结构体
      class ModifyEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为环境ID，失败为null
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

      # ModifyIngress请求参数结构体
      class ModifyIngressRequest < TencentCloud::Common::AbstractModel
        # @param Ingress: Ingress 规则配置
        # @type Ingress: :class:`Tencentcloud::Tem.v20210701.models.IngressInfo`
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :Ingress, :SourceChannel
        
        def initialize(ingress=nil, sourcechannel=nil)
          @Ingress = ingress
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          unless params['Ingress'].nil?
            @Ingress = IngressInfo.new
            @Ingress.deserialize(params['Ingress'])
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
              pair_tmp = Pair.new
              pair_tmp.deserialize(i)
              @Data << pair_tmp
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
              temnamespaceinfo_tmp = TemNamespaceInfo.new
              temnamespaceinfo_tmp.deserialize(i)
              @Records << temnamespaceinfo_tmp
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

      # RestartApplicationPod请求参数结构体
      class RestartApplicationPodRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String
        # @param ApplicationId: 应用id
        # @type ApplicationId: String
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

        attr_accessor :EnvironmentId, :ApplicationId, :PodName, :Limit, :Offset, :Status, :SourceChannel
        
        def initialize(environmentid=nil, applicationid=nil, podname=nil, limit=nil, offset=nil, status=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @ApplicationId = applicationid
          @PodName = podname
          @Limit = limit
          @Offset = offset
          @Status = status
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ApplicationId = params['ApplicationId']
          @PodName = params['PodName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @SourceChannel = params['SourceChannel']
        end
      end

      # RestartApplicationPod返回参数结构体
      class RestartApplicationPodResponse < TencentCloud::Common::AbstractModel
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

      # ResumeDeployApplication请求参数结构体
      class ResumeDeployApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 需要开始下一批次的服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :EnvironmentId
        
        def initialize(applicationid=nil, environmentid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # ResumeDeployApplication返回参数结构体
      class ResumeDeployApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # RevertDeployApplication请求参数结构体
      class RevertDeployApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 需要回滚的服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 需要回滚的服务所在环境id
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :EnvironmentId
        
        def initialize(applicationid=nil, environmentid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # RevertDeployApplication返回参数结构体
      class RevertDeployApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # 应用实例
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
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer
        # @param Ready: pod是否就绪
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ready: Boolean
        # @param ContainerState: 容器状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerState: String

        attr_accessor :Webshell, :PodId, :Status, :CreateTime, :PodIp, :Zone, :DeployVersion, :RestartCount, :Ready, :ContainerState
        
        def initialize(webshell=nil, podid=nil, status=nil, createtime=nil, podip=nil, zone=nil, deployversion=nil, restartcount=nil, ready=nil, containerstate=nil)
          @Webshell = webshell
          @PodId = podid
          @Status = status
          @CreateTime = createtime
          @PodIp = podip
          @Zone = zone
          @DeployVersion = deployversion
          @RestartCount = restartcount
          @Ready = ready
          @ContainerState = containerstate
        end

        def deserialize(params)
          @Webshell = params['Webshell']
          @PodId = params['PodId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @PodIp = params['PodIp']
          @Zone = params['Zone']
          @DeployVersion = params['DeployVersion']
          @RestartCount = params['RestartCount']
          @Ready = params['Ready']
          @ContainerState = params['ContainerState']
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

      # 分批发布详情
      class TemDeployApplicationDetailInfo < TencentCloud::Common::AbstractModel
        # @param DeployStrategyConf: 分批发布策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployStrategyConf: :class:`Tencentcloud::Tem.v20210701.models.DeployStrategyConf`
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 当前状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param BetaBatchDetail: beta分批详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BetaBatchDetail: :class:`Tencentcloud::Tem.v20210701.models.DeployServiceBatchDetail`
        # @param OtherBatchDetail: 其他分批详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherBatchDetail: Array
        # @param OldVersionPodList: 老版本pod列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldVersionPodList: :class:`Tencentcloud::Tem.v20210701.models.DescribeRunPodPage`
        # @param CurrentBatchIndex: 当前批次id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentBatchIndex: Integer
        # @param ErrorMessage: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param CurrentBatchStatus: 当前批次状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentBatchStatus: String
        # @param NewDeployVersion: 新版本version
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewDeployVersion: String
        # @param OldDeployVersion: 旧版本version
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldDeployVersion: String
        # @param NewVersionPackageInfo: 包名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewVersionPackageInfo: String
        # @param NextBatchStartTime: 下一批次开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextBatchStartTime: Integer

        attr_accessor :DeployStrategyConf, :StartTime, :EndTime, :Status, :BetaBatchDetail, :OtherBatchDetail, :OldVersionPodList, :CurrentBatchIndex, :ErrorMessage, :CurrentBatchStatus, :NewDeployVersion, :OldDeployVersion, :NewVersionPackageInfo, :NextBatchStartTime
        
        def initialize(deploystrategyconf=nil, starttime=nil, endtime=nil, status=nil, betabatchdetail=nil, otherbatchdetail=nil, oldversionpodlist=nil, currentbatchindex=nil, errormessage=nil, currentbatchstatus=nil, newdeployversion=nil, olddeployversion=nil, newversionpackageinfo=nil, nextbatchstarttime=nil)
          @DeployStrategyConf = deploystrategyconf
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @BetaBatchDetail = betabatchdetail
          @OtherBatchDetail = otherbatchdetail
          @OldVersionPodList = oldversionpodlist
          @CurrentBatchIndex = currentbatchindex
          @ErrorMessage = errormessage
          @CurrentBatchStatus = currentbatchstatus
          @NewDeployVersion = newdeployversion
          @OldDeployVersion = olddeployversion
          @NewVersionPackageInfo = newversionpackageinfo
          @NextBatchStartTime = nextbatchstarttime
        end

        def deserialize(params)
          unless params['DeployStrategyConf'].nil?
            @DeployStrategyConf = DeployStrategyConf.new
            @DeployStrategyConf.deserialize(params['DeployStrategyConf'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['BetaBatchDetail'].nil?
            @BetaBatchDetail = DeployServiceBatchDetail.new
            @BetaBatchDetail.deserialize(params['BetaBatchDetail'])
          end
          unless params['OtherBatchDetail'].nil?
            @OtherBatchDetail = []
            params['OtherBatchDetail'].each do |i|
              deployservicebatchdetail_tmp = DeployServiceBatchDetail.new
              deployservicebatchdetail_tmp.deserialize(i)
              @OtherBatchDetail << deployservicebatchdetail_tmp
            end
          end
          unless params['OldVersionPodList'].nil?
            @OldVersionPodList = DescribeRunPodPage.new
            @OldVersionPodList.deserialize(params['OldVersionPodList'])
          end
          @CurrentBatchIndex = params['CurrentBatchIndex']
          @ErrorMessage = params['ErrorMessage']
          @CurrentBatchStatus = params['CurrentBatchStatus']
          @NewDeployVersion = params['NewDeployVersion']
          @OldDeployVersion = params['OldDeployVersion']
          @NewVersionPackageInfo = params['NewVersionPackageInfo']
          @NextBatchStartTime = params['NextBatchStartTime']
        end
      end

      # 命名空间对象
      class TemNamespaceInfo < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String
        # @param Channel: 渠道
        # @type Channel: String
        # @param EnvironmentName: 环境名称
        # @type EnvironmentName: String
        # @param Region: 区域名称
        # @type Region: String
        # @param Description: 环境描述
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
        # @param ApplicationNum: 应用数
        # @type ApplicationNum: Integer
        # @param RunInstancesNum: 运行实例数
        # @type RunInstancesNum: Integer
        # @param SubnetId: 子网络
        # @type SubnetId: String
        # @param ClusterStatus: 环境集群 status
        # @type ClusterStatus: String
        # @param EnableTswTraceService: 是否开启tsw
        # @type EnableTswTraceService: Boolean

        attr_accessor :EnvironmentId, :Channel, :EnvironmentName, :Region, :Description, :Status, :Vpc, :CreateDate, :ModifyDate, :Modifier, :Creator, :ApplicationNum, :RunInstancesNum, :SubnetId, :ClusterStatus, :EnableTswTraceService
        
        def initialize(environmentid=nil, channel=nil, environmentname=nil, region=nil, description=nil, status=nil, vpc=nil, createdate=nil, modifydate=nil, modifier=nil, creator=nil, applicationnum=nil, runinstancesnum=nil, subnetid=nil, clusterstatus=nil, enabletswtraceservice=nil)
          @EnvironmentId = environmentid
          @Channel = channel
          @EnvironmentName = environmentname
          @Region = region
          @Description = description
          @Status = status
          @Vpc = vpc
          @CreateDate = createdate
          @ModifyDate = modifydate
          @Modifier = modifier
          @Creator = creator
          @ApplicationNum = applicationnum
          @RunInstancesNum = runinstancesnum
          @SubnetId = subnetid
          @ClusterStatus = clusterstatus
          @EnableTswTraceService = enabletswtraceservice
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Channel = params['Channel']
          @EnvironmentName = params['EnvironmentName']
          @Region = params['Region']
          @Description = params['Description']
          @Status = params['Status']
          @Vpc = params['Vpc']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          @Modifier = params['Modifier']
          @Creator = params['Creator']
          @ApplicationNum = params['ApplicationNum']
          @RunInstancesNum = params['RunInstancesNum']
          @SubnetId = params['SubnetId']
          @ClusterStatus = params['ClusterStatus']
          @EnableTswTraceService = params['EnableTswTraceService']
        end
      end

    end
  end
end

