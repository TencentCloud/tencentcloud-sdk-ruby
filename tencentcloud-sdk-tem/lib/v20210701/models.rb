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
      # 弹性伸缩策略组合
      class Autoscaler < TencentCloud::Common::AbstractModel
        # @param MinReplicas: 弹性伸缩最小实例数
        # @type MinReplicas: Integer
        # @param MaxReplicas: 弹性伸缩最大实例数
        # @type MaxReplicas: Integer
        # @param HorizontalAutoscaler: 指标弹性伸缩策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HorizontalAutoscaler: Array
        # @param CronHorizontalAutoscaler: 定时弹性伸缩策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronHorizontalAutoscaler: Array
        # @param AutoscalerId: 弹性伸缩ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalerId: String
        # @param AutoscalerName: 弹性伸缩名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalerName: String
        # @param Description: 弹性伸缩描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateDate: 创建日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param ModifyDate: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyDate: String
        # @param EnableDate: 启用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableDate: String
        # @param Enabled: 是否启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean

        attr_accessor :MinReplicas, :MaxReplicas, :HorizontalAutoscaler, :CronHorizontalAutoscaler, :AutoscalerId, :AutoscalerName, :Description, :CreateDate, :ModifyDate, :EnableDate, :Enabled
        
        def initialize(minreplicas=nil, maxreplicas=nil, horizontalautoscaler=nil, cronhorizontalautoscaler=nil, autoscalerid=nil, autoscalername=nil, description=nil, createdate=nil, modifydate=nil, enabledate=nil, enabled=nil)
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @HorizontalAutoscaler = horizontalautoscaler
          @CronHorizontalAutoscaler = cronhorizontalautoscaler
          @AutoscalerId = autoscalerid
          @AutoscalerName = autoscalername
          @Description = description
          @CreateDate = createdate
          @ModifyDate = modifydate
          @EnableDate = enabledate
          @Enabled = enabled
        end

        def deserialize(params)
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
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
          @AutoscalerId = params['AutoscalerId']
          @AutoscalerName = params['AutoscalerName']
          @Description = params['Description']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          @EnableDate = params['EnableDate']
          @Enabled = params['Enabled']
        end
      end

      # 配置
      class ConfigData < TencentCloud::Common::AbstractModel
        # @param Name: 配置名称
        # @type Name: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RelatedApplications: 关联的服务列表
        # @type RelatedApplications: Array
        # @param Data: 配置条目
        # @type Data: Array

        attr_accessor :Name, :CreateTime, :RelatedApplications, :Data
        
        def initialize(name=nil, createtime=nil, relatedapplications=nil, data=nil)
          @Name = name
          @CreateTime = createtime
          @RelatedApplications = relatedapplications
          @Data = data
        end

        def deserialize(params)
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          unless params['RelatedApplications'].nil?
            @RelatedApplications = []
            params['RelatedApplications'].each do |i|
              temservice_tmp = TemService.new
              temservice_tmp.deserialize(i)
              @RelatedApplications << temservice_tmp
            end
          end
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

      # CreateApplicationAutoscaler请求参数结构体
      class CreateApplicationAutoscalerRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Autoscaler: 弹性伸缩策略
        # @type Autoscaler: :class:`Tencentcloud::Tem.v20210701.models.Autoscaler`

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :Autoscaler
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, autoscaler=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @Autoscaler = autoscaler
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          unless params['Autoscaler'].nil?
            @Autoscaler = Autoscaler.new
            @Autoscaler.deserialize(params['Autoscaler'])
          end
        end
      end

      # CreateApplicationAutoscaler返回参数结构体
      class CreateApplicationAutoscalerResponse < TencentCloud::Common::AbstractModel
        # @param Result: 弹性伸缩策略组合ID
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
        # @param EnableTracing: 是否开启 Java 应用的 APM 自动上报功能，1 表示启用；0 表示关闭
        # @type EnableTracing: Integer
        # @param UseDefaultImageServiceParameters: 使用默认镜像服务额外参数
        # @type UseDefaultImageServiceParameters: :class:`Tencentcloud::Tem.v20210701.models.UseDefaultRepoParameters`
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :ApplicationName, :Description, :UseDefaultImageService, :RepoType, :InstanceId, :RepoServer, :RepoName, :SourceChannel, :SubnetList, :CodingLanguage, :DeployMode, :EnableTracing, :UseDefaultImageServiceParameters, :Tags
        
        def initialize(applicationname=nil, description=nil, usedefaultimageservice=nil, repotype=nil, instanceid=nil, reposerver=nil, reponame=nil, sourcechannel=nil, subnetlist=nil, codinglanguage=nil, deploymode=nil, enabletracing=nil, usedefaultimageserviceparameters=nil, tags=nil)
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
          @UseDefaultImageServiceParameters = usedefaultimageserviceparameters
          @Tags = tags
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
          unless params['UseDefaultImageServiceParameters'].nil?
            @UseDefaultImageServiceParameters = UseDefaultRepoParameters.new
            @UseDefaultImageServiceParameters.deserialize(params['UseDefaultImageServiceParameters'])
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

      # CreateApplicationService请求参数结构体
      class CreateApplicationServiceRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Service: 访问方式详情
        # @type Service: :class:`Tencentcloud::Tem.v20210701.models.ServicePortMapping`

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :Service
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, service=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @Service = service
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          unless params['Service'].nil?
            @Service = ServicePortMapping.new
            @Service.deserialize(params['Service'])
          end
        end
      end

      # CreateApplicationService返回参数结构体
      class CreateApplicationServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # CreateConfigData请求参数结构体
      class CreateConfigDataRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Data: 配置信息
        # @type Data: Array

        attr_accessor :EnvironmentId, :Name, :SourceChannel, :Data
        
        def initialize(environmentid=nil, name=nil, sourcechannel=nil, data=nil)
          @EnvironmentId = environmentid
          @Name = name
          @SourceChannel = sourcechannel
          @Data = data
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @SourceChannel = params['SourceChannel']
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

      # CreateConfigData返回参数结构体
      class CreateConfigDataResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功
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
        # @param Tags: 标签
        # @type Tags: Array
        # @param EnvType: 环境类型：test、pre、prod
        # @type EnvType: String
        # @param CreateRegion: 创建环境的region
        # @type CreateRegion: String

        attr_accessor :EnvironmentName, :Vpc, :SubnetIds, :Description, :K8sVersion, :SourceChannel, :EnableTswTraceService, :Tags, :EnvType, :CreateRegion
        
        def initialize(environmentname=nil, vpc=nil, subnetids=nil, description=nil, k8sversion=nil, sourcechannel=nil, enabletswtraceservice=nil, tags=nil, envtype=nil, createregion=nil)
          @EnvironmentName = environmentname
          @Vpc = vpc
          @SubnetIds = subnetids
          @Description = description
          @K8sVersion = k8sversion
          @SourceChannel = sourcechannel
          @EnableTswTraceService = enabletswtraceservice
          @Tags = tags
          @EnvType = envtype
          @CreateRegion = createregion
        end

        def deserialize(params)
          @EnvironmentName = params['EnvironmentName']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @Description = params['Description']
          @K8sVersion = params['K8sVersion']
          @SourceChannel = params['SourceChannel']
          @EnableTswTraceService = params['EnableTswTraceService']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @EnvType = params['EnvType']
          @CreateRegion = params['CreateRegion']
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

      # CreateLogConfig请求参数结构体
      class CreateLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param InputType: 收集类型，container_stdout 为标准输出；container_file 为文件；
        # @type InputType: String
        # @param ApplicationId: 应用 ID
        # @type ApplicationId: String
        # @param LogsetId: 日志集 ID
        # @type LogsetId: String
        # @param TopicId: 日志主题 ID
        # @type TopicId: String
        # @param LogType: 日志提取模式，minimalist_log 为单行全文；multiline_log 为多行全文；json_log 为 json格式；fullregex_log 为单行正则；multiline_fullregex_log 为多行正则
        # @type LogType: String
        # @param BeginningRegex: 首行正则表达式，当LogType=multiline_log 时生效
        # @type BeginningRegex: String
        # @param LogPath: 收集文件目录，当 InputType=container_file 时生效
        # @type LogPath: String
        # @param FilePattern: 收集文件名模式，当 InputType=container_file 时生效
        # @type FilePattern: String
        # @param ExtractRule: 导出规则
        # @type ExtractRule: :class:`Tencentcloud::Tem.v20210701.models.LogConfigExtractRule`

        attr_accessor :EnvironmentId, :Name, :InputType, :ApplicationId, :LogsetId, :TopicId, :LogType, :BeginningRegex, :LogPath, :FilePattern, :ExtractRule
        
        def initialize(environmentid=nil, name=nil, inputtype=nil, applicationid=nil, logsetid=nil, topicid=nil, logtype=nil, beginningregex=nil, logpath=nil, filepattern=nil, extractrule=nil)
          @EnvironmentId = environmentid
          @Name = name
          @InputType = inputtype
          @ApplicationId = applicationid
          @LogsetId = logsetid
          @TopicId = topicid
          @LogType = logtype
          @BeginningRegex = beginningregex
          @LogPath = logpath
          @FilePattern = filepattern
          @ExtractRule = extractrule
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @InputType = params['InputType']
          @ApplicationId = params['ApplicationId']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @LogType = params['LogType']
          @BeginningRegex = params['BeginningRegex']
          @LogPath = params['LogPath']
          @FilePattern = params['FilePattern']
          unless params['ExtractRule'].nil?
            @ExtractRule = LogConfigExtractRule.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
        end
      end

      # CreateLogConfig返回参数结构体
      class CreateLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功
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
        # @param ResourceFrom: 资源来源，目前支持：existing，已有资源；creating，自动创建
        # @type ResourceFrom: String
        # @param ResourceConfig: 设置 resource 的额外配置
        # @type ResourceConfig: String

        attr_accessor :EnvironmentId, :ResourceType, :ResourceId, :SourceChannel, :ResourceFrom, :ResourceConfig
        
        def initialize(environmentid=nil, resourcetype=nil, resourceid=nil, sourcechannel=nil, resourcefrom=nil, resourceconfig=nil)
          @EnvironmentId = environmentid
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @SourceChannel = sourcechannel
          @ResourceFrom = resourcefrom
          @ResourceConfig = resourceconfig
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @SourceChannel = params['SourceChannel']
          @ResourceFrom = params['ResourceFrom']
          @ResourceConfig = params['ResourceConfig']
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

      # DeleteApplicationAutoscaler请求参数结构体
      class DeleteApplicationAutoscalerRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param AutoscalerId: 弹性伸缩策略ID
        # @type AutoscalerId: String

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :AutoscalerId
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, autoscalerid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @AutoscalerId = autoscalerid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          @AutoscalerId = params['AutoscalerId']
        end
      end

      # DeleteApplicationAutoscaler返回参数结构体
      class DeleteApplicationAutoscalerResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # DeleteApplication请求参数结构体
      class DeleteApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务Id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param DeleteApplicationIfNoRunningVersion: 当服务没有任何运行版本时，是否删除此服务
        # @type DeleteApplicationIfNoRunningVersion: Boolean

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :DeleteApplicationIfNoRunningVersion
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, deleteapplicationifnorunningversion=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @DeleteApplicationIfNoRunningVersion = deleteapplicationifnorunningversion
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          @DeleteApplicationIfNoRunningVersion = params['DeleteApplicationIfNoRunningVersion']
        end
      end

      # DeleteApplication返回参数结构体
      class DeleteApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
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

      # DeleteApplicationService请求参数结构体
      class DeleteApplicationServiceRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param ServiceName: 访问方式服务名
        # @type ServiceName: String

        attr_accessor :ApplicationId, :SourceChannel, :EnvironmentId, :ServiceName
        
        def initialize(applicationid=nil, sourcechannel=nil, environmentid=nil, servicename=nil)
          @ApplicationId = applicationid
          @SourceChannel = sourcechannel
          @EnvironmentId = environmentid
          @ServiceName = servicename
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SourceChannel = params['SourceChannel']
          @EnvironmentId = params['EnvironmentId']
          @ServiceName = params['ServiceName']
        end
      end

      # DeleteApplicationService返回参数结构体
      class DeleteApplicationServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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
        # - KONA:8：使用 kona jdk 8。
        # - OPEN:8：使用 open jdk 8。
        # - KONA:11：使用 kona jdk 11。
        # - OPEN:11：使用 open jdk 11。
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
        # @param HorizontalAutoscaler: 弹性策略（已弃用，请使用弹性伸缩策略组合相关接口）
        # @type HorizontalAutoscaler: Array
        # @param CronHorizontalAutoscaler: 定时弹性策略（已弃用，请使用弹性伸缩策略组合相关接口）
        # @type CronHorizontalAutoscaler: Array
        # @param LogEnable: 是否启用log，1为启用，0为不启用
        # @type LogEnable: Integer
        # @param ConfEdited: （除开镜像配置）配置是否修改
        # @type ConfEdited: Boolean
        # @param SpeedUp: 是否开启应用加速
        # @type SpeedUp: Boolean
        # @param StartupProbe: 启动探针配置
        # @type StartupProbe: :class:`Tencentcloud::Tem.v20210701.models.HealthCheckConfig`
        # @param OsFlavour: 操作系统版本；
        # 当选择openjdk时，可选参数：
        # - ALPINE
        # - CENTOS
        # 当选择konajdk时，可选参数：
        # - ALPINE
        # - TENCENTOS
        # @type OsFlavour: String
        # @param EnablePrometheusConf: metrics业务指标监控配置
        # @type EnablePrometheusConf: :class:`Tencentcloud::Tem.v20210701.models.EnablePrometheusConf`
        # @param EnableTracing: 1：开始自动apm采集（skywalking）；
        # 0：关闭apm采集；
        # @type EnableTracing: Integer
        # @param EnableMetrics: 1：开始自动metrics采集（open-telemetry）；
        # 0：关闭metrics采集；
        # @type EnableMetrics: Integer
        # @param TcrInstanceId: 镜像部署时，选择的tcr实例id
        # @type TcrInstanceId: String
        # @param RepoServer: 镜像部署时，选择的镜像服务器地址
        # @type RepoServer: String
        # @param RepoType: 镜像部署时，仓库类型：0：个人仓库；1：企业版；2：公共仓库；3：tem托管仓库；4：demo仓库
        # @type RepoType: Integer

        attr_accessor :ApplicationId, :InitPodNum, :CpuSpec, :MemorySpec, :EnvironmentId, :ImgRepo, :VersionDesc, :JvmOpts, :EsInfo, :EnvConf, :LogConfs, :StorageConfs, :StorageMountConfs, :DeployMode, :DeployVersion, :PkgName, :JdkVersion, :SecurityGroupIds, :LogOutputConf, :SourceChannel, :Description, :ImageCommand, :ImageArgs, :UseRegistryDefaultConfig, :SettingConfs, :Service, :VersionId, :PostStart, :PreStop, :Liveness, :Readiness, :DeployStrategyConf, :HorizontalAutoscaler, :CronHorizontalAutoscaler, :LogEnable, :ConfEdited, :SpeedUp, :StartupProbe, :OsFlavour, :EnablePrometheusConf, :EnableTracing, :EnableMetrics, :TcrInstanceId, :RepoServer, :RepoType
        
        def initialize(applicationid=nil, initpodnum=nil, cpuspec=nil, memoryspec=nil, environmentid=nil, imgrepo=nil, versiondesc=nil, jvmopts=nil, esinfo=nil, envconf=nil, logconfs=nil, storageconfs=nil, storagemountconfs=nil, deploymode=nil, deployversion=nil, pkgname=nil, jdkversion=nil, securitygroupids=nil, logoutputconf=nil, sourcechannel=nil, description=nil, imagecommand=nil, imageargs=nil, useregistrydefaultconfig=nil, settingconfs=nil, service=nil, versionid=nil, poststart=nil, prestop=nil, liveness=nil, readiness=nil, deploystrategyconf=nil, horizontalautoscaler=nil, cronhorizontalautoscaler=nil, logenable=nil, confedited=nil, speedup=nil, startupprobe=nil, osflavour=nil, enableprometheusconf=nil, enabletracing=nil, enablemetrics=nil, tcrinstanceid=nil, reposerver=nil, repotype=nil)
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
          @LogEnable = logenable
          @ConfEdited = confedited
          @SpeedUp = speedup
          @StartupProbe = startupprobe
          @OsFlavour = osflavour
          @EnablePrometheusConf = enableprometheusconf
          @EnableTracing = enabletracing
          @EnableMetrics = enablemetrics
          @TcrInstanceId = tcrinstanceid
          @RepoServer = reposerver
          @RepoType = repotype
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
          @LogEnable = params['LogEnable']
          @ConfEdited = params['ConfEdited']
          @SpeedUp = params['SpeedUp']
          unless params['StartupProbe'].nil?
            @StartupProbe = HealthCheckConfig.new
            @StartupProbe.deserialize(params['StartupProbe'])
          end
          @OsFlavour = params['OsFlavour']
          unless params['EnablePrometheusConf'].nil?
            @EnablePrometheusConf = EnablePrometheusConf.new
            @EnablePrometheusConf.deserialize(params['EnablePrometheusConf'])
          end
          @EnableTracing = params['EnableTracing']
          @EnableMetrics = params['EnableMetrics']
          @TcrInstanceId = params['TcrInstanceId']
          @RepoServer = params['RepoServer']
          @RepoType = params['RepoType']
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
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :PodId, :PodStatus, :PodVersion, :CreateTime, :Zone, :Webshell, :Status
        
        def initialize(podid=nil, podstatus=nil, podversion=nil, createtime=nil, zone=nil, webshell=nil, status=nil)
          @PodId = podid
          @PodStatus = podstatus
          @PodVersion = podversion
          @CreateTime = createtime
          @Zone = zone
          @Webshell = webshell
          @Status = status
        end

        def deserialize(params)
          @PodId = params['PodId']
          @PodStatus = params['PodStatus']
          @PodVersion = params['PodVersion']
          @CreateTime = params['CreateTime']
          @Zone = params['Zone']
          @Webshell = params['Webshell']
          @Status = params['Status']
        end
      end

      # 分批发布策略配置
      class DeployStrategyConf < TencentCloud::Common::AbstractModel
        # @param TotalBatchCount: 总分批数
        # @type TotalBatchCount: Integer
        # @param BetaBatchNum: beta分批实例数
        # @type BetaBatchNum: Integer
        # @param DeployStrategyType: 分批策略：0-全自动，1-全手动，2-beta分批，beta批一定是手动的，3-首次发布
        # @type DeployStrategyType: Integer
        # @param BatchInterval: 每批暂停间隔
        # @type BatchInterval: Integer
        # @param MinAvailable: 最小可用实例数
        # @type MinAvailable: Integer
        # @param Force: 是否强制发布
        # @type Force: Boolean

        attr_accessor :TotalBatchCount, :BetaBatchNum, :DeployStrategyType, :BatchInterval, :MinAvailable, :Force
        
        def initialize(totalbatchcount=nil, betabatchnum=nil, deploystrategytype=nil, batchinterval=nil, minavailable=nil, force=nil)
          @TotalBatchCount = totalbatchcount
          @BetaBatchNum = betabatchnum
          @DeployStrategyType = deploystrategytype
          @BatchInterval = batchinterval
          @MinAvailable = minavailable
          @Force = force
        end

        def deserialize(params)
          @TotalBatchCount = params['TotalBatchCount']
          @BetaBatchNum = params['BetaBatchNum']
          @DeployStrategyType = params['DeployStrategyType']
          @BatchInterval = params['BatchInterval']
          @MinAvailable = params['MinAvailable']
          @Force = params['Force']
        end
      end

      # DescribeApplicationAutoscalerList请求参数结构体
      class DescribeApplicationAutoscalerListRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeApplicationAutoscalerList返回参数结构体
      class DescribeApplicationAutoscalerListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 弹性伸缩策略组合
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
              autoscaler_tmp = Autoscaler.new
              autoscaler_tmp.deserialize(i)
              @Result << autoscaler_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationInfo请求参数结构体
      class DescribeApplicationInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务版本ID
        # @type ApplicationId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :SourceChannel, :EnvironmentId
        
        def initialize(applicationid=nil, sourcechannel=nil, environmentid=nil)
          @ApplicationId = applicationid
          @SourceChannel = sourcechannel
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SourceChannel = params['SourceChannel']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # DescribeApplicationInfo返回参数结构体
      class DescribeApplicationInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.TemServiceVersionInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TemServiceVersionInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
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

      # DescribeApplicationServiceList请求参数结构体
      class DescribeApplicationServiceListRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: namespace id
        # @type EnvironmentId: String
        # @param ApplicationId: 服务ID
        # @type ApplicationId: String
        # @param SourceChannel: xx
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :ApplicationId, :SourceChannel
        
        def initialize(environmentid=nil, applicationid=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @ApplicationId = applicationid
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ApplicationId = params['ApplicationId']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeApplicationServiceList返回参数结构体
      class DescribeApplicationServiceListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用 EKS Service 列表
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.EksService`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EksService.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplications请求参数结构体
      class DescribeApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间ID
        # @type EnvironmentId: String
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Offset: 分页offset
        # @type Offset: Integer
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param Keyword: 搜索关键字
        # @type Keyword: String
        # @param Filters: 查询过滤器
        # @type Filters: Array
        # @param SortInfo: 排序字段
        # @type SortInfo: :class:`Tencentcloud::Tem.v20210701.models.SortType`

        attr_accessor :EnvironmentId, :Limit, :Offset, :SourceChannel, :ApplicationId, :Keyword, :Filters, :SortInfo
        
        def initialize(environmentid=nil, limit=nil, offset=nil, sourcechannel=nil, applicationid=nil, keyword=nil, filters=nil, sortinfo=nil)
          @EnvironmentId = environmentid
          @Limit = limit
          @Offset = offset
          @SourceChannel = sourcechannel
          @ApplicationId = applicationid
          @Keyword = keyword
          @Filters = filters
          @SortInfo = sortinfo
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SourceChannel = params['SourceChannel']
          @ApplicationId = params['ApplicationId']
          @Keyword = params['Keyword']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filters << queryfilter_tmp
            end
          end
          unless params['SortInfo'].nil?
            @SortInfo = SortType.new
            @SortInfo.deserialize(params['SortInfo'])
          end
        end
      end

      # DescribeApplications返回参数结构体
      class DescribeApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.ServicePage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServicePage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationsStatus请求参数结构体
      class DescribeApplicationsStatusRequest < TencentCloud::Common::AbstractModel
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String

        attr_accessor :SourceChannel, :EnvironmentId
        
        def initialize(sourcechannel=nil, environmentid=nil)
          @SourceChannel = sourcechannel
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @SourceChannel = params['SourceChannel']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # DescribeApplicationsStatus返回参数结构体
      class DescribeApplicationsStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
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
              serviceversionbrief_tmp = ServiceVersionBrief.new
              serviceversionbrief_tmp.deserialize(i)
              @Result << serviceversionbrief_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 配置信息的分页列表
      class DescribeConfigDataListPage < TencentCloud::Common::AbstractModel
        # @param Records: 记录
        # @type Records: Array
        # @param ContinueToken: 分页游标，用以查询下一页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContinueToken: String
        # @param RemainingCount: 剩余数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainingCount: Integer

        attr_accessor :Records, :ContinueToken, :RemainingCount
        
        def initialize(records=nil, continuetoken=nil, remainingcount=nil)
          @Records = records
          @ContinueToken = continuetoken
          @RemainingCount = remainingcount
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              configdata_tmp = ConfigData.new
              configdata_tmp.deserialize(i)
              @Records << configdata_tmp
            end
          end
          @ContinueToken = params['ContinueToken']
          @RemainingCount = params['RemainingCount']
        end
      end

      # DescribeConfigDataList请求参数结构体
      class DescribeConfigDataListRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param ContinueToken: 查询游标
        # @type ContinueToken: String
        # @param Limit: 分页 limit
        # @type Limit: Integer

        attr_accessor :EnvironmentId, :SourceChannel, :ContinueToken, :Limit
        
        def initialize(environmentid=nil, sourcechannel=nil, continuetoken=nil, limit=nil)
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @ContinueToken = continuetoken
          @Limit = limit
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          @ContinueToken = params['ContinueToken']
          @Limit = params['Limit']
        end
      end

      # DescribeConfigDataList返回参数结构体
      class DescribeConfigDataListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置列表
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.DescribeConfigDataListPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeConfigDataListPage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigData请求参数结构体
      class DescribeConfigDataRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :Name, :SourceChannel
        
        def initialize(environmentid=nil, name=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @Name = name
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeConfigData返回参数结构体
      class DescribeConfigDataResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.ConfigData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConfigData.new
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
        # @param VersionId: 版本部署id
        # @type VersionId: String

        attr_accessor :ApplicationId, :EnvironmentId, :VersionId
        
        def initialize(applicationid=nil, environmentid=nil, versionid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @VersionId = versionid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @VersionId = params['VersionId']
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

      # DescribeEnvironment请求参数结构体
      class DescribeEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间id
        # @type EnvironmentId: String
        # @param SourceChannel: 来源Channel
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :SourceChannel
        
        def initialize(environmentid=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeEnvironment返回参数结构体
      class DescribeEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param Result: 环境信息
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.NamespaceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = NamespaceInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironmentStatus请求参数结构体
      class DescribeEnvironmentStatusRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentIds: 命名空间id
        # @type EnvironmentIds: Array
        # @param SourceChannel: 来源Channel
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentIds, :SourceChannel
        
        def initialize(environmentids=nil, sourcechannel=nil)
          @EnvironmentIds = environmentids
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentIds = params['EnvironmentIds']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeEnvironmentStatus返回参数结构体
      class DescribeEnvironmentStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回状态列表
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
              namespacestatusinfo_tmp = NamespaceStatusInfo.new
              namespacestatusinfo_tmp.deserialize(i)
              @Result << namespacestatusinfo_tmp
            end
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
        # @param Filters: 查询过滤器
        # @type Filters: Array
        # @param SortInfo: 排序字段
        # @type SortInfo: :class:`Tencentcloud::Tem.v20210701.models.SortType`
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String

        attr_accessor :Limit, :Offset, :SourceChannel, :Filters, :SortInfo, :EnvironmentId
        
        def initialize(limit=nil, offset=nil, sourcechannel=nil, filters=nil, sortinfo=nil, environmentid=nil)
          @Limit = limit
          @Offset = offset
          @SourceChannel = sourcechannel
          @Filters = filters
          @SortInfo = sortinfo
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SourceChannel = params['SourceChannel']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filters << queryfilter_tmp
            end
          end
          unless params['SortInfo'].nil?
            @SortInfo = SortType.new
            @SortInfo.deserialize(params['SortInfo'])
          end
          @EnvironmentId = params['EnvironmentId']
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

      # DescribeLogConfig请求参数结构体
      class DescribeLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param ApplicationId: 应用 ID
        # @type ApplicationId: String

        attr_accessor :EnvironmentId, :Name, :ApplicationId
        
        def initialize(environmentid=nil, name=nil, applicationid=nil)
          @EnvironmentId = environmentid
          @Name = name
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeLogConfig返回参数结构体
      class DescribeLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.LogConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = LogConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePagedLogConfigList请求参数结构体
      class DescribePagedLogConfigListRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param ApplicationId: 应用 ID
        # @type ApplicationId: String
        # @param ApplicationName: 应用名
        # @type ApplicationName: String
        # @param Name: 规则名
        # @type Name: String
        # @param Limit: 分页大小，默认 20
        # @type Limit: Integer
        # @param ContinueToken: 翻页游标
        # @type ContinueToken: String

        attr_accessor :EnvironmentId, :ApplicationId, :ApplicationName, :Name, :Limit, :ContinueToken
        
        def initialize(environmentid=nil, applicationid=nil, applicationname=nil, name=nil, limit=nil, continuetoken=nil)
          @EnvironmentId = environmentid
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @Name = name
          @Limit = limit
          @ContinueToken = continuetoken
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @Name = params['Name']
          @Limit = params['Limit']
          @ContinueToken = params['ContinueToken']
        end
      end

      # DescribePagedLogConfigList返回参数结构体
      class DescribePagedLogConfigListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 日志收集配置列表
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.LogConfigListPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = LogConfigListPage.new
            @Result.deserialize(params['Result'])
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

      # DestroyConfigData请求参数结构体
      class DestroyConfigDataRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :Name, :SourceChannel
        
        def initialize(environmentid=nil, name=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @Name = name
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DestroyConfigData返回参数结构体
      class DestroyConfigDataResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
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

      # DestroyEnvironment请求参数结构体
      class DestroyEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间ID
        # @type EnvironmentId: String
        # @param SourceChannel: Namespace
        # @type SourceChannel: Integer

        attr_accessor :EnvironmentId, :SourceChannel
        
        def initialize(environmentid=nil, sourcechannel=nil)
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DestroyEnvironment返回参数结构体
      class DestroyEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
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

      # DestroyLogConfig请求参数结构体
      class DestroyLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param ApplicationId: 应用 ID
        # @type ApplicationId: String

        attr_accessor :EnvironmentId, :Name, :ApplicationId
        
        def initialize(environmentid=nil, name=nil, applicationid=nil)
          @EnvironmentId = environmentid
          @Name = name
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DestroyLogConfig返回参数结构体
      class DestroyLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
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

      # DisableApplicationAutoscaler请求参数结构体
      class DisableApplicationAutoscalerRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param AutoscalerId: 弹性伸缩策略ID
        # @type AutoscalerId: String

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :AutoscalerId
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, autoscalerid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @AutoscalerId = autoscalerid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          @AutoscalerId = params['AutoscalerId']
        end
      end

      # DisableApplicationAutoscaler返回参数结构体
      class DisableApplicationAutoscalerResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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
        # @param ServicePortMappingList: 每种类型访问配置详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServicePortMappingList: Array
        # @param FlushAll: 刷新复写所有类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlushAll: Boolean
        # @param EnableRegistryNextDeploy: 1: 下次部署自动注入注册中心信息；0：不注入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableRegistryNextDeploy: Integer
        # @param ApplicationId: 返回应用id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param AllIpDone: 所有服务IP是否已经ready
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllIpDone: Boolean

        attr_accessor :Name, :Ports, :Yaml, :ApplicationName, :VersionName, :ClusterIp, :ExternalIp, :Type, :SubnetId, :LoadBalanceId, :PortMappings, :ServicePortMappingList, :FlushAll, :EnableRegistryNextDeploy, :ApplicationId, :AllIpDone
        
        def initialize(name=nil, ports=nil, yaml=nil, applicationname=nil, versionname=nil, clusterip=nil, externalip=nil, type=nil, subnetid=nil, loadbalanceid=nil, portmappings=nil, serviceportmappinglist=nil, flushall=nil, enableregistrynextdeploy=nil, applicationid=nil, allipdone=nil)
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
          @ServicePortMappingList = serviceportmappinglist
          @FlushAll = flushall
          @EnableRegistryNextDeploy = enableregistrynextdeploy
          @ApplicationId = applicationid
          @AllIpDone = allipdone
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
          unless params['ServicePortMappingList'].nil?
            @ServicePortMappingList = []
            params['ServicePortMappingList'].each do |i|
              serviceportmapping_tmp = ServicePortMapping.new
              serviceportmapping_tmp.deserialize(i)
              @ServicePortMappingList << serviceportmapping_tmp
            end
          end
          @FlushAll = params['FlushAll']
          @EnableRegistryNextDeploy = params['EnableRegistryNextDeploy']
          @ApplicationId = params['ApplicationId']
          @AllIpDone = params['AllIpDone']
        end
      end

      # EnableApplicationAutoscaler请求参数结构体
      class EnableApplicationAutoscalerRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param AutoscalerId: 弹性伸缩策略ID
        # @type AutoscalerId: String

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :AutoscalerId
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, autoscalerid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @AutoscalerId = autoscalerid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          @AutoscalerId = params['AutoscalerId']
        end
      end

      # EnableApplicationAutoscaler返回参数结构体
      class EnableApplicationAutoscalerResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # 开启prometheus监控配置
      class EnablePrometheusConf < TencentCloud::Common::AbstractModel
        # @param Port: 应用开放的监听端口
        # @type Port: Integer
        # @param Path: 业务指标暴露的url path
        # @type Path: String

        attr_accessor :Port, :Path
        
        def initialize(port=nil, path=nil)
          @Port = port
          @Path = path
        end

        def deserialize(params)
          @Port = params['Port']
          @Path = params['Path']
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
        # @param MinReplicas: 最小实例数（可以不传）
        # @type MinReplicas: Integer
        # @param MaxReplicas: 最大实例数（可以不传）
        # @type MaxReplicas: Integer
        # @param Metrics: 指标度量
        # CPU（CPU使用率，%）
        # MEMORY（内存使用率，%）
        # CPU_CORE_USED（CPU使用量，core）
        # MEMORY_SIZE_USED(内存使用量，MiB)
        # NETWORK_BANDWIDTH_RECEIVE(网络入带宽，MBps)
        # NETWORK_BANDWIDTH_TRANSMIT(网络出带宽，MBps)
        # NETWORK_TRAFFIC_RECEIVE(网络入流量，MiB/s)
        # NETWORK_TRAFFIC_TRANSMIT(网络出流量，MiB/s)
        # NETWORK_PACKETS_RECEIVE(网络入包量，Count/s)
        # NETWORK_PACKETS_TRANSMIT(网络出包量，Count/s)
        # FS_IOPS_WRITE(磁盘写次数，Count/s)
        # FS_IOPS_READ(磁盘读次数，Count/s)
        # FS_SIZE_WRITE(磁盘写大小，MiB/s)
        # FS_SIZE_READ(磁盘读大小，MiB/s)
        # @type Metrics: String
        # @param Threshold: 阈值（整数）
        # @type Threshold: Integer
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param DoubleThreshold: 阈值（小数，优先使用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoubleThreshold: Float

        attr_accessor :MinReplicas, :MaxReplicas, :Metrics, :Threshold, :Enabled, :DoubleThreshold
        
        def initialize(minreplicas=nil, maxreplicas=nil, metrics=nil, threshold=nil, enabled=nil, doublethreshold=nil)
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @Metrics = metrics
          @Threshold = threshold
          @Enabled = enabled
          @DoubleThreshold = doublethreshold
        end

        def deserialize(params)
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
          @Metrics = params['Metrics']
          @Threshold = params['Threshold']
          @Enabled = params['Enabled']
          @DoubleThreshold = params['DoubleThreshold']
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
        # @param RewriteType: 重定向模式，可选值：
        # - AUTO（自动重定向http到https）
        # - NONE（不使用重定向）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewriteType: String

        attr_accessor :EnvironmentId, :ClusterNamespace, :AddressIPVersion, :IngressName, :Rules, :ClbId, :Tls, :ClusterId, :Vip, :CreateTime, :Mixed, :RewriteType
        
        def initialize(environmentid=nil, clusternamespace=nil, addressipversion=nil, ingressname=nil, rules=nil, clbid=nil, tls=nil, clusterid=nil, vip=nil, createtime=nil, mixed=nil, rewritetype=nil)
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
          @RewriteType = rewritetype
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
          @RewriteType = params['RewriteType']
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

      # 日志收集配置
      class LogConfig < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param InputType: 收集类型，container_stdout 为标准输出；container_file 为文件；
        # @type InputType: String
        # @param LogsetId: 日志集 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param TopicId: 日志主题 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param LogType: 日志提取模式，minimalist_log 为单行全文；multiline_log 为多行全文；  fullregex_log 为单行正则； multiline_fullregex_log 为多行正则； json_log 为 json；
        # @type LogType: String
        # @param BeginningRegex: 首行正则表达式，当 LogType 为多行全文、多行正则时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginningRegex: String
        # @param LogPath: 收集文件目录，当 InputType=container_file 时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogPath: String
        # @param FilePattern: 收集文件名模式，当 InputType=container_file 时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePattern: String
        # @param CreateDate: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param ModifyDate: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyDate: String
        # @param ApplicationId: 应用 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ExtractRule: 导出规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtractRule: :class:`Tencentcloud::Tem.v20210701.models.LogConfigExtractRule`

        attr_accessor :Name, :InputType, :LogsetId, :TopicId, :LogType, :BeginningRegex, :LogPath, :FilePattern, :CreateDate, :ModifyDate, :ApplicationId, :ApplicationName, :ExtractRule
        
        def initialize(name=nil, inputtype=nil, logsetid=nil, topicid=nil, logtype=nil, beginningregex=nil, logpath=nil, filepattern=nil, createdate=nil, modifydate=nil, applicationid=nil, applicationname=nil, extractrule=nil)
          @Name = name
          @InputType = inputtype
          @LogsetId = logsetid
          @TopicId = topicid
          @LogType = logtype
          @BeginningRegex = beginningregex
          @LogPath = logpath
          @FilePattern = filepattern
          @CreateDate = createdate
          @ModifyDate = modifydate
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ExtractRule = extractrule
        end

        def deserialize(params)
          @Name = params['Name']
          @InputType = params['InputType']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @LogType = params['LogType']
          @BeginningRegex = params['BeginningRegex']
          @LogPath = params['LogPath']
          @FilePattern = params['FilePattern']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          unless params['ExtractRule'].nil?
            @ExtractRule = LogConfigExtractRule.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
        end
      end

      # 日志采集的导出规则配置
      class LogConfigExtractRule < TencentCloud::Common::AbstractModel
        # @param BeginningRegex: 首行正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginningRegex: String
        # @param Keys: 提取结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param FilterKeys: 过滤键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterKeys: Array
        # @param FilterRegex: 过滤值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterRegex: Array
        # @param LogRegex: 日志正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogRegex: String
        # @param TimeKey: 时间字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeKey: String
        # @param TimeFormat: 时间格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeFormat: String
        # @param UnMatchUpload: 是否上传解析失败日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchUpload: String
        # @param UnMatchedKey: 解析失败日志的键名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchedKey: String

        attr_accessor :BeginningRegex, :Keys, :FilterKeys, :FilterRegex, :LogRegex, :TimeKey, :TimeFormat, :UnMatchUpload, :UnMatchedKey
        
        def initialize(beginningregex=nil, keys=nil, filterkeys=nil, filterregex=nil, logregex=nil, timekey=nil, timeformat=nil, unmatchupload=nil, unmatchedkey=nil)
          @BeginningRegex = beginningregex
          @Keys = keys
          @FilterKeys = filterkeys
          @FilterRegex = filterregex
          @LogRegex = logregex
          @TimeKey = timekey
          @TimeFormat = timeformat
          @UnMatchUpload = unmatchupload
          @UnMatchedKey = unmatchedkey
        end

        def deserialize(params)
          @BeginningRegex = params['BeginningRegex']
          @Keys = params['Keys']
          @FilterKeys = params['FilterKeys']
          @FilterRegex = params['FilterRegex']
          @LogRegex = params['LogRegex']
          @TimeKey = params['TimeKey']
          @TimeFormat = params['TimeFormat']
          @UnMatchUpload = params['UnMatchUpload']
          @UnMatchedKey = params['UnMatchedKey']
        end
      end

      # LogConfig 列表结果
      class LogConfigListPage < TencentCloud::Common::AbstractModel
        # @param Records: 记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Records: Array
        # @param ContinueToken: 翻页游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContinueToken: String

        attr_accessor :Records, :ContinueToken
        
        def initialize(records=nil, continuetoken=nil)
          @Records = records
          @ContinueToken = continuetoken
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              logconfig_tmp = LogConfig.new
              logconfig_tmp.deserialize(i)
              @Records << logconfig_tmp
            end
          end
          @ContinueToken = params['ContinueToken']
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

      # ModifyApplicationAutoscaler请求参数结构体
      class ModifyApplicationAutoscalerRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param AutoscalerId: 弹性伸缩策略ID
        # @type AutoscalerId: String
        # @param Autoscaler: 弹性伸缩策略
        # @type Autoscaler: :class:`Tencentcloud::Tem.v20210701.models.Autoscaler`

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :AutoscalerId, :Autoscaler
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, autoscalerid=nil, autoscaler=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @AutoscalerId = autoscalerid
          @Autoscaler = autoscaler
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          @AutoscalerId = params['AutoscalerId']
          unless params['Autoscaler'].nil?
            @Autoscaler = Autoscaler.new
            @Autoscaler.deserialize(params['Autoscaler'])
          end
        end
      end

      # ModifyApplicationAutoscaler返回参数结构体
      class ModifyApplicationAutoscalerResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # ModifyApplicationInfo请求参数结构体
      class ModifyApplicationInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param Description: 描述
        # @type Description: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnableTracing: 是否开启调用链,（此参数已弃用）
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

      # ModifyApplicationReplicas请求参数结构体
      class ModifyApplicationReplicasRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param Replicas: 实例数量
        # @type Replicas: Integer
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :ApplicationId, :EnvironmentId, :Replicas, :SourceChannel
        
        def initialize(applicationid=nil, environmentid=nil, replicas=nil, sourcechannel=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @Replicas = replicas
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @Replicas = params['Replicas']
          @SourceChannel = params['SourceChannel']
        end
      end

      # ModifyApplicationReplicas返回参数结构体
      class ModifyApplicationReplicasResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # ModifyApplicationService请求参数结构体
      class ModifyApplicationServiceRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Service: 全量访问方式设置
        # @type Service: :class:`Tencentcloud::Tem.v20210701.models.EksService`
        # @param Data: 单条访问方式设置
        # @type Data: :class:`Tencentcloud::Tem.v20210701.models.ServicePortMapping`

        attr_accessor :ApplicationId, :EnvironmentId, :SourceChannel, :Service, :Data
        
        def initialize(applicationid=nil, environmentid=nil, sourcechannel=nil, service=nil, data=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @SourceChannel = sourcechannel
          @Service = service
          @Data = data
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @SourceChannel = params['SourceChannel']
          unless params['Service'].nil?
            @Service = EksService.new
            @Service.deserialize(params['Service'])
          end
          unless params['Data'].nil?
            @Data = ServicePortMapping.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # ModifyApplicationService返回参数结构体
      class ModifyApplicationServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # ModifyConfigData请求参数结构体
      class ModifyConfigDataRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param Data: 配置信息
        # @type Data: Array

        attr_accessor :EnvironmentId, :Name, :SourceChannel, :Data
        
        def initialize(environmentid=nil, name=nil, sourcechannel=nil, data=nil)
          @EnvironmentId = environmentid
          @Name = name
          @SourceChannel = sourcechannel
          @Data = data
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @SourceChannel = params['SourceChannel']
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

      # ModifyConfigData返回参数结构体
      class ModifyConfigDataResponse < TencentCloud::Common::AbstractModel
        # @param Result: 编辑是否成功
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
        # @param EnvType: 环境类型：test、pre、prod
        # @type EnvType: String

        attr_accessor :EnvironmentId, :EnvironmentName, :Description, :Vpc, :SubnetIds, :SourceChannel, :EnvType
        
        def initialize(environmentid=nil, environmentname=nil, description=nil, vpc=nil, subnetids=nil, sourcechannel=nil, envtype=nil)
          @EnvironmentId = environmentid
          @EnvironmentName = environmentname
          @Description = description
          @Vpc = vpc
          @SubnetIds = subnetids
          @SourceChannel = sourcechannel
          @EnvType = envtype
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @EnvironmentName = params['EnvironmentName']
          @Description = params['Description']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @SourceChannel = params['SourceChannel']
          @EnvType = params['EnvType']
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

      # ModifyLogConfig请求参数结构体
      class ModifyLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境 ID
        # @type EnvironmentId: String
        # @param Name: 配置名
        # @type Name: String
        # @param Data: 日志收集配置信息
        # @type Data: :class:`Tencentcloud::Tem.v20210701.models.LogConfig`
        # @param ApplicationId: 应用 ID
        # @type ApplicationId: String

        attr_accessor :EnvironmentId, :Name, :Data, :ApplicationId
        
        def initialize(environmentid=nil, name=nil, data=nil, applicationid=nil)
          @EnvironmentId = environmentid
          @Name = name
          @Data = data
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          unless params['Data'].nil?
            @Data = LogConfig.new
            @Data.deserialize(params['Data'])
          end
          @ApplicationId = params['ApplicationId']
        end
      end

      # ModifyLogConfig返回参数结构体
      class ModifyLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 编辑是否成功
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
        # @param SecretDataName: 加密配置名称
        # @type SecretDataName: String

        attr_accessor :ConfigDataName, :MountedPath, :Data, :SecretDataName
        
        def initialize(configdataname=nil, mountedpath=nil, data=nil, secretdataname=nil)
          @ConfigDataName = configdataname
          @MountedPath = mountedpath
          @Data = data
          @SecretDataName = secretdataname
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
          @SecretDataName = params['SecretDataName']
        end
      end

      # Namespace 基础信息
      class NamespaceInfo < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: ID 信息
        # @type EnvironmentId: String
        # @param NamespaceName: 名字（已弃用）
        # @type NamespaceName: String
        # @param Region: 地域
        # @type Region: String
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param SubnetIds: subnet id 数组
        # @type SubnetIds: Array
        # @param Description: 描述
        # @type Description: String
        # @param CreatedDate: 创建时间
        # @type CreatedDate: String
        # @param EnvironmentName: 环境名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentName: String
        # @param ApmInstanceId: APM 资源 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmInstanceId: String
        # @param Locked: 环境是否上锁，1为上锁，0则未上锁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Locked: Integer
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param EnvType: 环境类型：test、pre、prod
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvType: String

        attr_accessor :EnvironmentId, :NamespaceName, :Region, :VpcId, :SubnetIds, :Description, :CreatedDate, :EnvironmentName, :ApmInstanceId, :Locked, :Tags, :EnvType
        
        def initialize(environmentid=nil, namespacename=nil, region=nil, vpcid=nil, subnetids=nil, description=nil, createddate=nil, environmentname=nil, apminstanceid=nil, locked=nil, tags=nil, envtype=nil)
          @EnvironmentId = environmentid
          @NamespaceName = namespacename
          @Region = region
          @VpcId = vpcid
          @SubnetIds = subnetids
          @Description = description
          @CreatedDate = createddate
          @EnvironmentName = environmentname
          @ApmInstanceId = apminstanceid
          @Locked = locked
          @Tags = tags
          @EnvType = envtype
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @NamespaceName = params['NamespaceName']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @Description = params['Description']
          @CreatedDate = params['CreatedDate']
          @EnvironmentName = params['EnvironmentName']
          @ApmInstanceId = params['ApmInstanceId']
          @Locked = params['Locked']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @EnvType = params['EnvType']
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
        # @param Current: 当前条目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Current: Integer

        attr_accessor :Records, :Total, :Size, :Pages, :Current
        
        def initialize(records=nil, total=nil, size=nil, pages=nil, current=nil)
          @Records = records
          @Total = total
          @Size = size
          @Pages = pages
          @Current = current
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
          @Current = params['Current']
        end
      end

      # 命名空间状态
      class NamespaceStatusInfo < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间id
        # @type EnvironmentId: String
        # @param EnvironmentName: 命名空间名称
        # @type EnvironmentName: String
        # @param ClusterId: TCB envId | EKS clusterId
        # @type ClusterId: String
        # @param ClusterStatus: 环境状态
        # @type ClusterStatus: String
        # @param EnvironmentStartingStatus: 环境启动状态（不在启动中为null）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentStartingStatus: :class:`Tencentcloud::Tem.v20210701.models.TemEnvironmentStartingStatus`
        # @param EnvironmentStoppingStatus: 环境停止状态（不在停止中为null）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentStoppingStatus: :class:`Tencentcloud::Tem.v20210701.models.TemEnvironmentStoppingStatus`

        attr_accessor :EnvironmentId, :EnvironmentName, :ClusterId, :ClusterStatus, :EnvironmentStartingStatus, :EnvironmentStoppingStatus
        
        def initialize(environmentid=nil, environmentname=nil, clusterid=nil, clusterstatus=nil, environmentstartingstatus=nil, environmentstoppingstatus=nil)
          @EnvironmentId = environmentid
          @EnvironmentName = environmentname
          @ClusterId = clusterid
          @ClusterStatus = clusterstatus
          @EnvironmentStartingStatus = environmentstartingstatus
          @EnvironmentStoppingStatus = environmentstoppingstatus
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @EnvironmentName = params['EnvironmentName']
          @ClusterId = params['ClusterId']
          @ClusterStatus = params['ClusterStatus']
          unless params['EnvironmentStartingStatus'].nil?
            @EnvironmentStartingStatus = TemEnvironmentStartingStatus.new
            @EnvironmentStartingStatus.deserialize(params['EnvironmentStartingStatus'])
          end
          unless params['EnvironmentStoppingStatus'].nil?
            @EnvironmentStoppingStatus = TemEnvironmentStoppingStatus.new
            @EnvironmentStoppingStatus.deserialize(params['EnvironmentStoppingStatus'])
          end
        end
      end

      # node信息
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param Name: node名字
        # @type Name: String
        # @param Zone: node可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param SubnetId: node子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param AvailableIpCount: 可用IP数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableIpCount: String
        # @param Cidr: cidr块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cidr: String

        attr_accessor :Name, :Zone, :SubnetId, :AvailableIpCount, :Cidr
        
        def initialize(name=nil, zone=nil, subnetid=nil, availableipcount=nil, cidr=nil)
          @Name = name
          @Zone = zone
          @SubnetId = subnetid
          @AvailableIpCount = availableipcount
          @Cidr = cidr
        end

        def deserialize(params)
          @Name = params['Name']
          @Zone = params['Zone']
          @SubnetId = params['SubnetId']
          @AvailableIpCount = params['AvailableIpCount']
          @Cidr = params['Cidr']
        end
      end

      # 键值对
      class Pair < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
        # @type Value: String
        # @param Type: 类型，default 为自定义，reserved 为系统变量，referenced 为引用配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Config: 配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: String
        # @param Secret: 加密配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Secret: String

        attr_accessor :Key, :Value, :Type, :Config, :Secret
        
        def initialize(key=nil, value=nil, type=nil, config=nil, secret=nil)
          @Key = key
          @Value = value
          @Type = type
          @Config = config
          @Secret = secret
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Type = params['Type']
          @Config = params['Config']
          @Secret = params['Secret']
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
        # @param ServiceName: k8s service名称
        # @type ServiceName: String

        attr_accessor :Port, :TargetPort, :Protocol, :ServiceName
        
        def initialize(port=nil, targetport=nil, protocol=nil, servicename=nil)
          @Port = port
          @TargetPort = targetport
          @Protocol = protocol
          @ServiceName = servicename
        end

        def deserialize(params)
          @Port = params['Port']
          @TargetPort = params['TargetPort']
          @Protocol = params['Protocol']
          @ServiceName = params['ServiceName']
        end
      end

      # 查询过滤器
      class QueryFilter < TencentCloud::Common::AbstractModel
        # @param Name: 查询字段名称
        # @type Name: String
        # @param Value: 查询字段值
        # @type Value: Array

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

      # RestartApplication请求参数结构体
      class RestartApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :SourceChannel, :EnvironmentId
        
        def initialize(applicationid=nil, sourcechannel=nil, environmentid=nil)
          @ApplicationId = applicationid
          @SourceChannel = sourcechannel
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SourceChannel = params['SourceChannel']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # RestartApplication返回参数结构体
      class RestartApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
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

      # RollingUpdateApplicationByVersion请求参数结构体
      class RollingUpdateApplicationByVersionRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String
        # @param DeployVersion: 更新版本，IMAGE 部署为 tag 值；JAR/WAR 部署 为 Version
        # @type DeployVersion: String
        # @param PackageName: JAR/WAR 包名，仅 JAR/WAR 部署时必填
        # @type PackageName: String
        # @param From: 请求来源平台，含 IntelliJ，Coding
        # @type From: String
        # @param DeployStrategyType: 部署策略，AUTO 为全自动；BETA 为小批量验证后自动；MANUAL 为全手动；
        # @type DeployStrategyType: String
        # @param TotalBatchCount: 发布批次数
        # @type TotalBatchCount: Integer
        # @param BatchInterval: 批次间隔时间
        # @type BatchInterval: Integer
        # @param BetaBatchNum: 小批量验证批次的实例数
        # @type BetaBatchNum: Integer
        # @param MinAvailable: 发布过程中保障的最小可用实例数
        # @type MinAvailable: Integer

        attr_accessor :ApplicationId, :EnvironmentId, :DeployVersion, :PackageName, :From, :DeployStrategyType, :TotalBatchCount, :BatchInterval, :BetaBatchNum, :MinAvailable
        
        def initialize(applicationid=nil, environmentid=nil, deployversion=nil, packagename=nil, from=nil, deploystrategytype=nil, totalbatchcount=nil, batchinterval=nil, betabatchnum=nil, minavailable=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
          @DeployVersion = deployversion
          @PackageName = packagename
          @From = from
          @DeployStrategyType = deploystrategytype
          @TotalBatchCount = totalbatchcount
          @BatchInterval = batchinterval
          @BetaBatchNum = betabatchnum
          @MinAvailable = minavailable
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
          @DeployVersion = params['DeployVersion']
          @PackageName = params['PackageName']
          @From = params['From']
          @DeployStrategyType = params['DeployStrategyType']
          @TotalBatchCount = params['TotalBatchCount']
          @BatchInterval = params['BatchInterval']
          @BetaBatchNum = params['BetaBatchNum']
          @MinAvailable = params['MinAvailable']
        end
      end

      # RollingUpdateApplicationByVersion返回参数结构体
      class RollingUpdateApplicationByVersionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 版本ID
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
        # @param NodeInfo: 实例所在节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfo: :class:`Tencentcloud::Tem.v20210701.models.NodeInfo`
        # @param StartTime: 启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param Unhealthy: 是否健康
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unhealthy: Boolean
        # @param UnhealthyWarningMsg: 不健康时的提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnhealthyWarningMsg: String
        # @param VersionId: 版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String

        attr_accessor :Webshell, :PodId, :Status, :CreateTime, :PodIp, :Zone, :DeployVersion, :RestartCount, :Ready, :ContainerState, :NodeInfo, :StartTime, :Unhealthy, :UnhealthyWarningMsg, :VersionId, :ApplicationName
        
        def initialize(webshell=nil, podid=nil, status=nil, createtime=nil, podip=nil, zone=nil, deployversion=nil, restartcount=nil, ready=nil, containerstate=nil, nodeinfo=nil, starttime=nil, unhealthy=nil, unhealthywarningmsg=nil, versionid=nil, applicationname=nil)
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
          @NodeInfo = nodeinfo
          @StartTime = starttime
          @Unhealthy = unhealthy
          @UnhealthyWarningMsg = unhealthywarningmsg
          @VersionId = versionid
          @ApplicationName = applicationname
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
          unless params['NodeInfo'].nil?
            @NodeInfo = NodeInfo.new
            @NodeInfo.deserialize(params['NodeInfo'])
          end
          @StartTime = params['StartTime']
          @Unhealthy = params['Unhealthy']
          @UnhealthyWarningMsg = params['UnhealthyWarningMsg']
          @VersionId = params['VersionId']
          @ApplicationName = params['ApplicationName']
        end
      end

      # 服务分页
      class ServicePage < TencentCloud::Common::AbstractModel
        # @param Records: 条目
        # @type Records: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param Size: 条目
        # @type Size: Integer
        # @param Pages: 页数
        # @type Pages: Integer
        # @param Current: 当前条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Current: Integer

        attr_accessor :Records, :Total, :Size, :Pages, :Current
        
        def initialize(records=nil, total=nil, size=nil, pages=nil, current=nil)
          @Records = records
          @Total = total
          @Size = size
          @Pages = pages
          @Current = current
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              temservice_tmp = TemService.new
              temservice_tmp.deserialize(i)
              @Records << temservice_tmp
            end
          end
          @Total = params['Total']
          @Size = params['Size']
          @Pages = params['Pages']
          @Current = params['Current']
        end
      end

      # 端口映射详细信息结构体
      class ServicePortMapping < TencentCloud::Common::AbstractModel
        # @param Type: 服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ServiceName: 服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param ClusterIp: 集群内访问vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIp: String
        # @param ExternalIp: 集群外方位vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalIp: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param LoadBalanceId: LoadBalance Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalanceId: String
        # @param Yaml: yaml 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String
        # @param Ports: 暴露端口列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ports: Array
        # @param PortMappingItemList: 端口映射数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortMappingItemList: Array

        attr_accessor :Type, :ServiceName, :ClusterIp, :ExternalIp, :SubnetId, :VpcId, :LoadBalanceId, :Yaml, :Ports, :PortMappingItemList
        
        def initialize(type=nil, servicename=nil, clusterip=nil, externalip=nil, subnetid=nil, vpcid=nil, loadbalanceid=nil, yaml=nil, ports=nil, portmappingitemlist=nil)
          @Type = type
          @ServiceName = servicename
          @ClusterIp = clusterip
          @ExternalIp = externalip
          @SubnetId = subnetid
          @VpcId = vpcid
          @LoadBalanceId = loadbalanceid
          @Yaml = yaml
          @Ports = ports
          @PortMappingItemList = portmappingitemlist
        end

        def deserialize(params)
          @Type = params['Type']
          @ServiceName = params['ServiceName']
          @ClusterIp = params['ClusterIp']
          @ExternalIp = params['ExternalIp']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @LoadBalanceId = params['LoadBalanceId']
          @Yaml = params['Yaml']
          @Ports = params['Ports']
          unless params['PortMappingItemList'].nil?
            @PortMappingItemList = []
            params['PortMappingItemList'].each do |i|
              serviceportmappingitem_tmp = ServicePortMappingItem.new
              serviceportmappingitem_tmp.deserialize(i)
              @PortMappingItemList << serviceportmappingitem_tmp
            end
          end
        end
      end

      # 服务端口映射条目
      class ServicePortMappingItem < TencentCloud::Common::AbstractModel
        # @param Port: 应用访问端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param TargetPort: 应用监听端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPort: Integer
        # @param Protocol: 协议类型
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 服务版本信息列表
      class ServiceVersionBrief < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名称
        # @type VersionName: String
        # @param Status: 状态
        # @type Status: String
        # @param EnableEs: 是否启动弹性 -- 已废弃
        # @type EnableEs: Integer
        # @param CurrentInstances: 当前实例
        # @type CurrentInstances: Integer
        # @param VersionId: version的id
        # @type VersionId: String
        # @param LogOutputConf: 日志输出配置 -- 已废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogOutputConf: :class:`Tencentcloud::Tem.v20210701.models.LogOutputConf`
        # @param ExpectedInstances: 期望实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpectedInstances: Integer
        # @param DeployMode: 部署方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployMode: String
        # @param BuildTaskId: 建构任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildTaskId: String
        # @param EnvironmentId: 环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentId: String
        # @param EnvironmentName: 环境name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentName: String
        # @param ApplicationId: 服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 服务name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param UnderDeploying: 是否正在发布中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnderDeploying: Boolean
        # @param BatchDeployStatus: 分批次部署状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchDeployStatus: String
        # @param Zones: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param NodeInfos: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfos: Array
        # @param PodList: 实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodList: :class:`Tencentcloud::Tem.v20210701.models.DescribeRunPodPage`
        # @param WorkloadInfo: 工作负载信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkloadInfo: :class:`Tencentcloud::Tem.v20210701.models.WorkloadInfo`
        # @param CreateDate: 创建日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String

        attr_accessor :VersionName, :Status, :EnableEs, :CurrentInstances, :VersionId, :LogOutputConf, :ExpectedInstances, :DeployMode, :BuildTaskId, :EnvironmentId, :EnvironmentName, :ApplicationId, :ApplicationName, :UnderDeploying, :BatchDeployStatus, :Zones, :NodeInfos, :PodList, :WorkloadInfo, :CreateDate
        
        def initialize(versionname=nil, status=nil, enablees=nil, currentinstances=nil, versionid=nil, logoutputconf=nil, expectedinstances=nil, deploymode=nil, buildtaskid=nil, environmentid=nil, environmentname=nil, applicationid=nil, applicationname=nil, underdeploying=nil, batchdeploystatus=nil, zones=nil, nodeinfos=nil, podlist=nil, workloadinfo=nil, createdate=nil)
          @VersionName = versionname
          @Status = status
          @EnableEs = enablees
          @CurrentInstances = currentinstances
          @VersionId = versionid
          @LogOutputConf = logoutputconf
          @ExpectedInstances = expectedinstances
          @DeployMode = deploymode
          @BuildTaskId = buildtaskid
          @EnvironmentId = environmentid
          @EnvironmentName = environmentname
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @UnderDeploying = underdeploying
          @BatchDeployStatus = batchdeploystatus
          @Zones = zones
          @NodeInfos = nodeinfos
          @PodList = podlist
          @WorkloadInfo = workloadinfo
          @CreateDate = createdate
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @Status = params['Status']
          @EnableEs = params['EnableEs']
          @CurrentInstances = params['CurrentInstances']
          @VersionId = params['VersionId']
          unless params['LogOutputConf'].nil?
            @LogOutputConf = LogOutputConf.new
            @LogOutputConf.deserialize(params['LogOutputConf'])
          end
          @ExpectedInstances = params['ExpectedInstances']
          @DeployMode = params['DeployMode']
          @BuildTaskId = params['BuildTaskId']
          @EnvironmentId = params['EnvironmentId']
          @EnvironmentName = params['EnvironmentName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @UnderDeploying = params['UnderDeploying']
          @BatchDeployStatus = params['BatchDeployStatus']
          @Zones = params['Zones']
          unless params['NodeInfos'].nil?
            @NodeInfos = []
            params['NodeInfos'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @NodeInfos << nodeinfo_tmp
            end
          end
          unless params['PodList'].nil?
            @PodList = DescribeRunPodPage.new
            @PodList.deserialize(params['PodList'])
          end
          unless params['WorkloadInfo'].nil?
            @WorkloadInfo = WorkloadInfo.new
            @WorkloadInfo.deserialize(params['WorkloadInfo'])
          end
          @CreateDate = params['CreateDate']
        end
      end

      # 查询过滤器
      class SortType < TencentCloud::Common::AbstractModel
        # @param Key: 排序字段名称
        # @type Key: String
        # @param Type: 0：升序，1：倒序
        # @type Type: Integer

        attr_accessor :Key, :Type
        
        def initialize(key=nil, type=nil)
          @Key = key
          @Type = type
        end

        def deserialize(params)
          @Key = params['Key']
          @Type = params['Type']
        end
      end

      # StopApplication请求参数结构体
      class StopApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer
        # @param EnvironmentId: 环境ID
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :SourceChannel, :EnvironmentId
        
        def initialize(applicationid=nil, sourcechannel=nil, environmentid=nil)
          @ApplicationId = applicationid
          @SourceChannel = sourcechannel
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SourceChannel = params['SourceChannel']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # StopApplication返回参数结构体
      class StopApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
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

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
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

      # 环境启动进程（只统计由环境启动操作触发的应用数量）
      class TemEnvironmentStartingStatus < TencentCloud::Common::AbstractModel
        # @param ApplicationNumNeedToStart: 需要启动的应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationNumNeedToStart: Integer
        # @param StartedApplicationNum: 已经启动的应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartedApplicationNum: Integer

        attr_accessor :ApplicationNumNeedToStart, :StartedApplicationNum
        
        def initialize(applicationnumneedtostart=nil, startedapplicationnum=nil)
          @ApplicationNumNeedToStart = applicationnumneedtostart
          @StartedApplicationNum = startedapplicationnum
        end

        def deserialize(params)
          @ApplicationNumNeedToStart = params['ApplicationNumNeedToStart']
          @StartedApplicationNum = params['StartedApplicationNum']
        end
      end

      # 环境停止进程（只统计由环境停止操作触发的应用数量）
      class TemEnvironmentStoppingStatus < TencentCloud::Common::AbstractModel
        # @param ApplicationNumNeedToStop: 需要停止的应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationNumNeedToStop: Integer
        # @param StoppedApplicationNum: 已经停止的应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppedApplicationNum: Integer

        attr_accessor :ApplicationNumNeedToStop, :StoppedApplicationNum
        
        def initialize(applicationnumneedtostop=nil, stoppedapplicationnum=nil)
          @ApplicationNumNeedToStop = applicationnumneedtostop
          @StoppedApplicationNum = stoppedapplicationnum
        end

        def deserialize(params)
          @ApplicationNumNeedToStop = params['ApplicationNumNeedToStop']
          @StoppedApplicationNum = params['StoppedApplicationNum']
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
        # @param Locked: 环境锁，1为上锁，0则为上锁
        # @type Locked: Integer
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param Uin: 用户Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubAccountUin: 用户SubAccountUin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param HasAuthority: 资源是否有权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasAuthority: Boolean
        # @param EnvType: 环境类型: test、pre、prod
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvType: String
        # @param RegionId: 地域码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String

        attr_accessor :EnvironmentId, :Channel, :EnvironmentName, :Region, :Description, :Status, :Vpc, :CreateDate, :ModifyDate, :Modifier, :Creator, :ApplicationNum, :RunInstancesNum, :SubnetId, :ClusterStatus, :EnableTswTraceService, :Locked, :AppId, :Uin, :SubAccountUin, :ClusterId, :Tags, :HasAuthority, :EnvType, :RegionId
        
        def initialize(environmentid=nil, channel=nil, environmentname=nil, region=nil, description=nil, status=nil, vpc=nil, createdate=nil, modifydate=nil, modifier=nil, creator=nil, applicationnum=nil, runinstancesnum=nil, subnetid=nil, clusterstatus=nil, enabletswtraceservice=nil, locked=nil, appid=nil, uin=nil, subaccountuin=nil, clusterid=nil, tags=nil, hasauthority=nil, envtype=nil, regionid=nil)
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
          @Locked = locked
          @AppId = appid
          @Uin = uin
          @SubAccountUin = subaccountuin
          @ClusterId = clusterid
          @Tags = tags
          @HasAuthority = hasauthority
          @EnvType = envtype
          @RegionId = regionid
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
          @Locked = params['Locked']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
          @ClusterId = params['ClusterId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HasAuthority = params['HasAuthority']
          @EnvType = params['EnvType']
          @RegionId = params['RegionId']
        end
      end

      # 服务
      class TemService < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 服务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param EnvironmentId: 命名空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentId: String
        # @param CreateDate: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param ModifyDate: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyDate: String
        # @param Modifier: 修改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Modifier: String
        # @param Creator: 创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param RepoType: tcr个人版or企业版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoType: Integer
        # @param InstanceId: 企业版实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param RepoName: 镜像仓库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoName: String
        # @param CodingLanguage: 编程语言
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodingLanguage: String
        # @param DeployMode: 部署方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployMode: String
        # @param EnvironmentName: 环境名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentName: String
        # @param ActiveVersions: 服务当前运行环境的实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveVersions: Array
        # @param EnableTracing: 是否启用链路追踪
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableTracing: Integer
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param HasAuthority: 是否有资源权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasAuthority: Boolean

        attr_accessor :ApplicationId, :ApplicationName, :Description, :EnvironmentId, :CreateDate, :ModifyDate, :Modifier, :Creator, :RepoType, :InstanceId, :RepoName, :CodingLanguage, :DeployMode, :EnvironmentName, :ActiveVersions, :EnableTracing, :Tags, :HasAuthority
        
        def initialize(applicationid=nil, applicationname=nil, description=nil, environmentid=nil, createdate=nil, modifydate=nil, modifier=nil, creator=nil, repotype=nil, instanceid=nil, reponame=nil, codinglanguage=nil, deploymode=nil, environmentname=nil, activeversions=nil, enabletracing=nil, tags=nil, hasauthority=nil)
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @Description = description
          @EnvironmentId = environmentid
          @CreateDate = createdate
          @ModifyDate = modifydate
          @Modifier = modifier
          @Creator = creator
          @RepoType = repotype
          @InstanceId = instanceid
          @RepoName = reponame
          @CodingLanguage = codinglanguage
          @DeployMode = deploymode
          @EnvironmentName = environmentname
          @ActiveVersions = activeversions
          @EnableTracing = enabletracing
          @Tags = tags
          @HasAuthority = hasauthority
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @Description = params['Description']
          @EnvironmentId = params['EnvironmentId']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          @Modifier = params['Modifier']
          @Creator = params['Creator']
          @RepoType = params['RepoType']
          @InstanceId = params['InstanceId']
          @RepoName = params['RepoName']
          @CodingLanguage = params['CodingLanguage']
          @DeployMode = params['DeployMode']
          @EnvironmentName = params['EnvironmentName']
          unless params['ActiveVersions'].nil?
            @ActiveVersions = []
            params['ActiveVersions'].each do |i|
              serviceversionbrief_tmp = ServiceVersionBrief.new
              serviceversionbrief_tmp.deserialize(i)
              @ActiveVersions << serviceversionbrief_tmp
            end
          end
          @EnableTracing = params['EnableTracing']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HasAuthority = params['HasAuthority']
        end
      end

      # 版本信息
      class TemServiceVersionInfo < TencentCloud::Common::AbstractModel
        # @param VersionId: 主键
        # @type VersionId: String
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param DeployMode: 部署方式
        # @type DeployMode: String
        # @param JdkVersion: jdk版本
        # @type JdkVersion: String
        # @param Description: 描述
        # @type Description: String
        # @param DeployVersion: 部署版本
        # @type DeployVersion: String
        # @param PublishMode: 发布方式
        # @type PublishMode: String
        # @param JvmOpts: 启动参数
        # @type JvmOpts: String
        # @param InitPodNum: 初始实例
        # @type InitPodNum: Integer
        # @param CpuSpec: cpu规格
        # @type CpuSpec: Float
        # @param MemorySpec: 内存规格
        # @type MemorySpec: Float
        # @param ImgRepo: 镜像路径
        # @type ImgRepo: String
        # @param ImgName: 镜像名称
        # @type ImgName: String
        # @param ImgVersion: 镜像版本
        # @type ImgVersion: String
        # @param EsInfo: 弹性配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsInfo: :class:`Tencentcloud::Tem.v20210701.models.EsInfo`
        # @param EnvConf: 环境配置
        # @type EnvConf: Array
        # @param StorageConfs: 存储配置
        # @type StorageConfs: Array
        # @param Status: 运行状态
        # @type Status: String
        # @param Vpc: 私有网络
        # @type Vpc: String
        # @param SubnetId: 子网网络
        # @type SubnetId: String
        # @param CreateDate: 创建时间
        # @type CreateDate: String
        # @param ModifyDate: 修改时间
        # @type ModifyDate: String
        # @param StorageMountConfs: 挂载配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageMountConfs: Array
        # @param VersionName: 版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param LogOutputConf: 日志输出配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogOutputConf: :class:`Tencentcloud::Tem.v20210701.models.LogOutputConf`
        # @param ApplicationName: 服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ApplicationDescription: 服务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationDescription: String
        # @param EnvironmentName: 环境名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentName: String
        # @param EnvironmentId: 环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentId: String
        # @param PublicDomain: 公网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicDomain: String
        # @param EnablePublicAccess: 是否开通公网访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnablePublicAccess: Boolean
        # @param CurrentInstances: 现有的实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentInstances: Integer
        # @param ExpectedInstances: 期望的实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpectedInstances: Integer
        # @param CodingLanguage: 编程语言
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodingLanguage: String
        # @param PkgName: 程序包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgName: String
        # @param EsEnable: 是否启用弹性伸缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsEnable: Integer
        # @param EsStrategy: 弹性策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsStrategy: Integer
        # @param ImageTag: 镜像tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTag: String
        # @param LogEnable: 是否启用log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogEnable: Integer
        # @param MinAliveInstances: 最小实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinAliveInstances: String
        # @param SecurityGroupIds: 安全组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIds: Array
        # @param ImageCommand: 镜像命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageCommand: String
        # @param ImageArgs: 镜像命令参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageArgs: Array
        # @param UseRegistryDefaultConfig: 是否使用默认注册中心配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseRegistryDefaultConfig: Boolean
        # @param Service: eks 访问设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: :class:`Tencentcloud::Tem.v20210701.models.EksService`
        # @param SettingConfs: 挂载配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SettingConfs: Array
        # @param LogConfs: log path数组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConfs: Array
        # @param PostStart: 启动后立即执行的脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostStart: String
        # @param PreStop: 停止前执行的脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreStop: String
        # @param Liveness: 存活探针配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Liveness: :class:`Tencentcloud::Tem.v20210701.models.HealthCheckConfig`
        # @param Readiness: 就绪探针配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Readiness: :class:`Tencentcloud::Tem.v20210701.models.HealthCheckConfig`
        # @param HorizontalAutoscaler: 弹性策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HorizontalAutoscaler: Array
        # @param CronHorizontalAutoscaler: 定时弹性策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronHorizontalAutoscaler: Array
        # @param Zones: 应用实际可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param LastDeployDate: 最新部署时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastDeployDate: String
        # @param LastDeploySuccessDate: 最新部署成功时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastDeploySuccessDate: String
        # @param NodeInfos: 应用所在node信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfos: Array
        # @param ImageType: image类型 -0 为demo -1为正常image
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageType: Integer
        # @param EnableTracing: 是否启用调用链组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableTracing: Integer
        # @param EnableTracingReport: 是否开启调用链上报，只有 EnableTracing=1 时生效（参数已弃用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableTracingReport: Integer
        # @param RepoType: 镜像类型：0-个人镜像、1-企业镜像、2-公有镜像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoType: Integer
        # @param BatchDeployStatus: 分批发布子状态：batch_updating、batch_updating_waiting_confirm
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchDeployStatus: String
        # @param ApmInstanceId: APM 资源 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmInstanceId: String
        # @param WorkloadInfo: 工作负载信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkloadInfo: :class:`Tencentcloud::Tem.v20210701.models.WorkloadInfo`
        # @param SpeedUp: 是否启用应用加速
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeedUp: Boolean
        # @param StartupProbe: 启动检测探针配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupProbe: :class:`Tencentcloud::Tem.v20210701.models.HealthCheckConfig`
        # @param OsFlavour: 操作系统版本，可选参数：
        # - ALPINE
        # - CENTOS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsFlavour: String
        # @param RepoServer: 镜像仓库server
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoServer: String
        # @param UnderDeploying: 是否正在发布中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnderDeploying: Boolean
        # @param EnablePrometheusConf: 监控业务指标监控
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnablePrometheusConf: :class:`Tencentcloud::Tem.v20210701.models.EnablePrometheusConf`
        # @param StoppedManually: 是否为手动停止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppedManually: Boolean
        # @param TcrInstanceId: tcr实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcrInstanceId: String
        # @param EnableMetrics: 1：开始自动metrics采集（open-telemetry）；
        # 0：关闭metrics采集；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableMetrics: Integer
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param SubAccountUin: 用户SubAccountUin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param Uin: 用户Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param GroupId: 应用分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param EnableRegistry: 是否启用注册中心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableRegistry: Integer
        # @param AutoscalerList: 弹性伸缩数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalerList: Array
        # @param Modifier: 修改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Modifier: String
        # @param Creator: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param DeployStrategyConf: 部署策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployStrategyConf: :class:`Tencentcloud::Tem.v20210701.models.DeployStrategyConf`
        # @param PodList: 实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodList: :class:`Tencentcloud::Tem.v20210701.models.DescribeRunPodPage`
        # @param ConfEdited: 发布时配置是否有修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfEdited: Boolean
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :VersionId, :ApplicationId, :DeployMode, :JdkVersion, :Description, :DeployVersion, :PublishMode, :JvmOpts, :InitPodNum, :CpuSpec, :MemorySpec, :ImgRepo, :ImgName, :ImgVersion, :EsInfo, :EnvConf, :StorageConfs, :Status, :Vpc, :SubnetId, :CreateDate, :ModifyDate, :StorageMountConfs, :VersionName, :LogOutputConf, :ApplicationName, :ApplicationDescription, :EnvironmentName, :EnvironmentId, :PublicDomain, :EnablePublicAccess, :CurrentInstances, :ExpectedInstances, :CodingLanguage, :PkgName, :EsEnable, :EsStrategy, :ImageTag, :LogEnable, :MinAliveInstances, :SecurityGroupIds, :ImageCommand, :ImageArgs, :UseRegistryDefaultConfig, :Service, :SettingConfs, :LogConfs, :PostStart, :PreStop, :Liveness, :Readiness, :HorizontalAutoscaler, :CronHorizontalAutoscaler, :Zones, :LastDeployDate, :LastDeploySuccessDate, :NodeInfos, :ImageType, :EnableTracing, :EnableTracingReport, :RepoType, :BatchDeployStatus, :ApmInstanceId, :WorkloadInfo, :SpeedUp, :StartupProbe, :OsFlavour, :RepoServer, :UnderDeploying, :EnablePrometheusConf, :StoppedManually, :TcrInstanceId, :EnableMetrics, :AppId, :SubAccountUin, :Uin, :Region, :GroupId, :EnableRegistry, :AutoscalerList, :Modifier, :Creator, :DeployStrategyConf, :PodList, :ConfEdited, :Tags
        
        def initialize(versionid=nil, applicationid=nil, deploymode=nil, jdkversion=nil, description=nil, deployversion=nil, publishmode=nil, jvmopts=nil, initpodnum=nil, cpuspec=nil, memoryspec=nil, imgrepo=nil, imgname=nil, imgversion=nil, esinfo=nil, envconf=nil, storageconfs=nil, status=nil, vpc=nil, subnetid=nil, createdate=nil, modifydate=nil, storagemountconfs=nil, versionname=nil, logoutputconf=nil, applicationname=nil, applicationdescription=nil, environmentname=nil, environmentid=nil, publicdomain=nil, enablepublicaccess=nil, currentinstances=nil, expectedinstances=nil, codinglanguage=nil, pkgname=nil, esenable=nil, esstrategy=nil, imagetag=nil, logenable=nil, minaliveinstances=nil, securitygroupids=nil, imagecommand=nil, imageargs=nil, useregistrydefaultconfig=nil, service=nil, settingconfs=nil, logconfs=nil, poststart=nil, prestop=nil, liveness=nil, readiness=nil, horizontalautoscaler=nil, cronhorizontalautoscaler=nil, zones=nil, lastdeploydate=nil, lastdeploysuccessdate=nil, nodeinfos=nil, imagetype=nil, enabletracing=nil, enabletracingreport=nil, repotype=nil, batchdeploystatus=nil, apminstanceid=nil, workloadinfo=nil, speedup=nil, startupprobe=nil, osflavour=nil, reposerver=nil, underdeploying=nil, enableprometheusconf=nil, stoppedmanually=nil, tcrinstanceid=nil, enablemetrics=nil, appid=nil, subaccountuin=nil, uin=nil, region=nil, groupid=nil, enableregistry=nil, autoscalerlist=nil, modifier=nil, creator=nil, deploystrategyconf=nil, podlist=nil, confedited=nil, tags=nil)
          @VersionId = versionid
          @ApplicationId = applicationid
          @DeployMode = deploymode
          @JdkVersion = jdkversion
          @Description = description
          @DeployVersion = deployversion
          @PublishMode = publishmode
          @JvmOpts = jvmopts
          @InitPodNum = initpodnum
          @CpuSpec = cpuspec
          @MemorySpec = memoryspec
          @ImgRepo = imgrepo
          @ImgName = imgname
          @ImgVersion = imgversion
          @EsInfo = esinfo
          @EnvConf = envconf
          @StorageConfs = storageconfs
          @Status = status
          @Vpc = vpc
          @SubnetId = subnetid
          @CreateDate = createdate
          @ModifyDate = modifydate
          @StorageMountConfs = storagemountconfs
          @VersionName = versionname
          @LogOutputConf = logoutputconf
          @ApplicationName = applicationname
          @ApplicationDescription = applicationdescription
          @EnvironmentName = environmentname
          @EnvironmentId = environmentid
          @PublicDomain = publicdomain
          @EnablePublicAccess = enablepublicaccess
          @CurrentInstances = currentinstances
          @ExpectedInstances = expectedinstances
          @CodingLanguage = codinglanguage
          @PkgName = pkgname
          @EsEnable = esenable
          @EsStrategy = esstrategy
          @ImageTag = imagetag
          @LogEnable = logenable
          @MinAliveInstances = minaliveinstances
          @SecurityGroupIds = securitygroupids
          @ImageCommand = imagecommand
          @ImageArgs = imageargs
          @UseRegistryDefaultConfig = useregistrydefaultconfig
          @Service = service
          @SettingConfs = settingconfs
          @LogConfs = logconfs
          @PostStart = poststart
          @PreStop = prestop
          @Liveness = liveness
          @Readiness = readiness
          @HorizontalAutoscaler = horizontalautoscaler
          @CronHorizontalAutoscaler = cronhorizontalautoscaler
          @Zones = zones
          @LastDeployDate = lastdeploydate
          @LastDeploySuccessDate = lastdeploysuccessdate
          @NodeInfos = nodeinfos
          @ImageType = imagetype
          @EnableTracing = enabletracing
          @EnableTracingReport = enabletracingreport
          @RepoType = repotype
          @BatchDeployStatus = batchdeploystatus
          @ApmInstanceId = apminstanceid
          @WorkloadInfo = workloadinfo
          @SpeedUp = speedup
          @StartupProbe = startupprobe
          @OsFlavour = osflavour
          @RepoServer = reposerver
          @UnderDeploying = underdeploying
          @EnablePrometheusConf = enableprometheusconf
          @StoppedManually = stoppedmanually
          @TcrInstanceId = tcrinstanceid
          @EnableMetrics = enablemetrics
          @AppId = appid
          @SubAccountUin = subaccountuin
          @Uin = uin
          @Region = region
          @GroupId = groupid
          @EnableRegistry = enableregistry
          @AutoscalerList = autoscalerlist
          @Modifier = modifier
          @Creator = creator
          @DeployStrategyConf = deploystrategyconf
          @PodList = podlist
          @ConfEdited = confedited
          @Tags = tags
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @ApplicationId = params['ApplicationId']
          @DeployMode = params['DeployMode']
          @JdkVersion = params['JdkVersion']
          @Description = params['Description']
          @DeployVersion = params['DeployVersion']
          @PublishMode = params['PublishMode']
          @JvmOpts = params['JvmOpts']
          @InitPodNum = params['InitPodNum']
          @CpuSpec = params['CpuSpec']
          @MemorySpec = params['MemorySpec']
          @ImgRepo = params['ImgRepo']
          @ImgName = params['ImgName']
          @ImgVersion = params['ImgVersion']
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
          unless params['StorageConfs'].nil?
            @StorageConfs = []
            params['StorageConfs'].each do |i|
              storageconf_tmp = StorageConf.new
              storageconf_tmp.deserialize(i)
              @StorageConfs << storageconf_tmp
            end
          end
          @Status = params['Status']
          @Vpc = params['Vpc']
          @SubnetId = params['SubnetId']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          unless params['StorageMountConfs'].nil?
            @StorageMountConfs = []
            params['StorageMountConfs'].each do |i|
              storagemountconf_tmp = StorageMountConf.new
              storagemountconf_tmp.deserialize(i)
              @StorageMountConfs << storagemountconf_tmp
            end
          end
          @VersionName = params['VersionName']
          unless params['LogOutputConf'].nil?
            @LogOutputConf = LogOutputConf.new
            @LogOutputConf.deserialize(params['LogOutputConf'])
          end
          @ApplicationName = params['ApplicationName']
          @ApplicationDescription = params['ApplicationDescription']
          @EnvironmentName = params['EnvironmentName']
          @EnvironmentId = params['EnvironmentId']
          @PublicDomain = params['PublicDomain']
          @EnablePublicAccess = params['EnablePublicAccess']
          @CurrentInstances = params['CurrentInstances']
          @ExpectedInstances = params['ExpectedInstances']
          @CodingLanguage = params['CodingLanguage']
          @PkgName = params['PkgName']
          @EsEnable = params['EsEnable']
          @EsStrategy = params['EsStrategy']
          @ImageTag = params['ImageTag']
          @LogEnable = params['LogEnable']
          @MinAliveInstances = params['MinAliveInstances']
          @SecurityGroupIds = params['SecurityGroupIds']
          @ImageCommand = params['ImageCommand']
          @ImageArgs = params['ImageArgs']
          @UseRegistryDefaultConfig = params['UseRegistryDefaultConfig']
          unless params['Service'].nil?
            @Service = EksService.new
            @Service.deserialize(params['Service'])
          end
          unless params['SettingConfs'].nil?
            @SettingConfs = []
            params['SettingConfs'].each do |i|
              mountedsettingconf_tmp = MountedSettingConf.new
              mountedsettingconf_tmp.deserialize(i)
              @SettingConfs << mountedsettingconf_tmp
            end
          end
          @LogConfs = params['LogConfs']
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
          @Zones = params['Zones']
          @LastDeployDate = params['LastDeployDate']
          @LastDeploySuccessDate = params['LastDeploySuccessDate']
          unless params['NodeInfos'].nil?
            @NodeInfos = []
            params['NodeInfos'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @NodeInfos << nodeinfo_tmp
            end
          end
          @ImageType = params['ImageType']
          @EnableTracing = params['EnableTracing']
          @EnableTracingReport = params['EnableTracingReport']
          @RepoType = params['RepoType']
          @BatchDeployStatus = params['BatchDeployStatus']
          @ApmInstanceId = params['ApmInstanceId']
          unless params['WorkloadInfo'].nil?
            @WorkloadInfo = WorkloadInfo.new
            @WorkloadInfo.deserialize(params['WorkloadInfo'])
          end
          @SpeedUp = params['SpeedUp']
          unless params['StartupProbe'].nil?
            @StartupProbe = HealthCheckConfig.new
            @StartupProbe.deserialize(params['StartupProbe'])
          end
          @OsFlavour = params['OsFlavour']
          @RepoServer = params['RepoServer']
          @UnderDeploying = params['UnderDeploying']
          unless params['EnablePrometheusConf'].nil?
            @EnablePrometheusConf = EnablePrometheusConf.new
            @EnablePrometheusConf.deserialize(params['EnablePrometheusConf'])
          end
          @StoppedManually = params['StoppedManually']
          @TcrInstanceId = params['TcrInstanceId']
          @EnableMetrics = params['EnableMetrics']
          @AppId = params['AppId']
          @SubAccountUin = params['SubAccountUin']
          @Uin = params['Uin']
          @Region = params['Region']
          @GroupId = params['GroupId']
          @EnableRegistry = params['EnableRegistry']
          unless params['AutoscalerList'].nil?
            @AutoscalerList = []
            params['AutoscalerList'].each do |i|
              autoscaler_tmp = Autoscaler.new
              autoscaler_tmp.deserialize(i)
              @AutoscalerList << autoscaler_tmp
            end
          end
          @Modifier = params['Modifier']
          @Creator = params['Creator']
          unless params['DeployStrategyConf'].nil?
            @DeployStrategyConf = DeployStrategyConf.new
            @DeployStrategyConf.deserialize(params['DeployStrategyConf'])
          end
          unless params['PodList'].nil?
            @PodList = DescribeRunPodPage.new
            @PodList.deserialize(params['PodList'])
          end
          @ConfEdited = params['ConfEdited']
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

      # 创建应用，创建仓库参数
      class UseDefaultRepoParameters < TencentCloud::Common::AbstractModel
        # @param EnterpriseInstanceName: 企业版实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnterpriseInstanceName: String
        # @param EnterpriseInstanceChargeType: 企业版收费类型  0 按量收费   1 包年包月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnterpriseInstanceChargeType: Integer
        # @param EnterpriseInstanceType: 企业版规格：basic-基础班 ，standard-标准版，premium-高级版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnterpriseInstanceType: String

        attr_accessor :EnterpriseInstanceName, :EnterpriseInstanceChargeType, :EnterpriseInstanceType
        
        def initialize(enterpriseinstancename=nil, enterpriseinstancechargetype=nil, enterpriseinstancetype=nil)
          @EnterpriseInstanceName = enterpriseinstancename
          @EnterpriseInstanceChargeType = enterpriseinstancechargetype
          @EnterpriseInstanceType = enterpriseinstancetype
        end

        def deserialize(params)
          @EnterpriseInstanceName = params['EnterpriseInstanceName']
          @EnterpriseInstanceChargeType = params['EnterpriseInstanceChargeType']
          @EnterpriseInstanceType = params['EnterpriseInstanceType']
        end
      end

      # 工作负载详情
      class WorkloadInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 资源 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ApplicationName: 应用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param VersionName: 版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param ReadyReplicas: Ready实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadyReplicas: Integer
        # @param Replicas: 实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer
        # @param UpdatedReplicas: Updated实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedReplicas: Integer
        # @param UpdatedReadyReplicas: UpdatedReady实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedReadyReplicas: Integer
        # @param UpdateRevision: 更新版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateRevision: String
        # @param CurrentRevision: 当前版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentRevision: String

        attr_accessor :ClusterId, :ApplicationName, :VersionName, :ReadyReplicas, :Replicas, :UpdatedReplicas, :UpdatedReadyReplicas, :UpdateRevision, :CurrentRevision
        
        def initialize(clusterid=nil, applicationname=nil, versionname=nil, readyreplicas=nil, replicas=nil, updatedreplicas=nil, updatedreadyreplicas=nil, updaterevision=nil, currentrevision=nil)
          @ClusterId = clusterid
          @ApplicationName = applicationname
          @VersionName = versionname
          @ReadyReplicas = readyreplicas
          @Replicas = replicas
          @UpdatedReplicas = updatedreplicas
          @UpdatedReadyReplicas = updatedreadyreplicas
          @UpdateRevision = updaterevision
          @CurrentRevision = currentrevision
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ApplicationName = params['ApplicationName']
          @VersionName = params['VersionName']
          @ReadyReplicas = params['ReadyReplicas']
          @Replicas = params['Replicas']
          @UpdatedReplicas = params['UpdatedReplicas']
          @UpdatedReadyReplicas = params['UpdatedReadyReplicas']
          @UpdateRevision = params['UpdateRevision']
          @CurrentRevision = params['CurrentRevision']
        end
      end

    end
  end
end

