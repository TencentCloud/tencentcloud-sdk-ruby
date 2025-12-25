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
  module Tcbr
    module V20220217
      # BuildPacks信息
      class BuildPacksInfo < TencentCloud::Common::AbstractModel
        # @param BaseImage: 基础镜像
        # @type BaseImage: String
        # @param EntryPoint: 启动命令
        # @type EntryPoint: String
        # @param RepoLanguage: 语言
        # @type RepoLanguage: String
        # @param UploadFilename: 上传文件名
        # @type UploadFilename: String
        # @param LanguageVersion: 语言版本
        # @type LanguageVersion: String

        attr_accessor :BaseImage, :EntryPoint, :RepoLanguage, :UploadFilename, :LanguageVersion

        def initialize(baseimage=nil, entrypoint=nil, repolanguage=nil, uploadfilename=nil, languageversion=nil)
          @BaseImage = baseimage
          @EntryPoint = entrypoint
          @RepoLanguage = repolanguage
          @UploadFilename = uploadfilename
          @LanguageVersion = languageversion
        end

        def deserialize(params)
          @BaseImage = params['BaseImage']
          @EntryPoint = params['EntryPoint']
          @RepoLanguage = params['RepoLanguage']
          @UploadFilename = params['UploadFilename']
          @LanguageVersion = params['LanguageVersion']
        end
      end

      # cls日志信息
      class ClsInfo < TencentCloud::Common::AbstractModel
        # @param ClsRegion: cls所属地域
        # @type ClsRegion: String
        # @param ClsLogsetId: cls日志集ID
        # @type ClsLogsetId: String
        # @param ClsTopicId: cls日志主题ID
        # @type ClsTopicId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ClsRegion, :ClsLogsetId, :ClsTopicId, :CreateTime

        def initialize(clsregion=nil, clslogsetid=nil, clstopicid=nil, createtime=nil)
          @ClsRegion = clsregion
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @CreateTime = createtime
        end

        def deserialize(params)
          @ClsRegion = params['ClsRegion']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @CreateTime = params['CreateTime']
        end
      end

      # CreateCloudRunEnv请求参数结构体
      class CreateCloudRunEnvRequest < TencentCloud::Common::AbstractModel
        # @param PackageType: <p>Trial,Standard,Professional,Enterprise</p>
        # @type PackageType: String
        # @param Alias: <p>环境别名，要以a-z开头，不能包含 a-z,0-9,- 以外的字符</p>
        # @type Alias: String
        # @param FreeQuota: <p>用户享有的免费额度级别，目前只能为“basic”，不传该字段或该字段为空，标识不享受免费额度。</p>
        # @type FreeQuota: String
        # @param Flag: <p>订单标记。建议使用方统一转大小写之后再判断。QuickStart：快速启动来源Activity：活动来源</p>
        # @type Flag: String
        # @param VpcId: <p>私有网络Id</p>
        # @type VpcId: String
        # @param SubNetIds: <p>子网列表</p>
        # @type SubNetIds: Array
        # @param ReqKey: <p>请求key 用于防重</p>
        # @type ReqKey: String
        # @param Source: <p>来源：wechat | cloud | weda</p>
        # @type Source: String
        # @param Channel: <p>渠道：wechat | cloud | weda</p>
        # @type Channel: String
        # @param EnvId: <p>环境ID 云开发平台必填</p>
        # @type EnvId: String

        attr_accessor :PackageType, :Alias, :FreeQuota, :Flag, :VpcId, :SubNetIds, :ReqKey, :Source, :Channel, :EnvId

        def initialize(packagetype=nil, _alias=nil, freequota=nil, flag=nil, vpcid=nil, subnetids=nil, reqkey=nil, source=nil, channel=nil, envid=nil)
          @PackageType = packagetype
          @Alias = _alias
          @FreeQuota = freequota
          @Flag = flag
          @VpcId = vpcid
          @SubNetIds = subnetids
          @ReqKey = reqkey
          @Source = source
          @Channel = channel
          @EnvId = envid
        end

        def deserialize(params)
          @PackageType = params['PackageType']
          @Alias = params['Alias']
          @FreeQuota = params['FreeQuota']
          @Flag = params['Flag']
          @VpcId = params['VpcId']
          @SubNetIds = params['SubNetIds']
          @ReqKey = params['ReqKey']
          @Source = params['Source']
          @Channel = params['Channel']
          @EnvId = params['EnvId']
        end
      end

      # CreateCloudRunEnv返回参数结构体
      class CreateCloudRunEnvResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: <p>环境Id</p>
        # @type EnvId: String
        # @param TranId: <p>后付费订单号</p>
        # @type TranId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :TranId, :RequestId

        def initialize(envid=nil, tranid=nil, requestid=nil)
          @EnvId = envid
          @TranId = tranid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @TranId = params['TranId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudRunServer请求参数结构体
      class CreateCloudRunServerRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: <p>环境Id</p>
        # @type EnvId: String
        # @param ServerName: <p>服务名</p>
        # @type ServerName: String
        # @param DeployInfo: <p>部署信息</p>
        # @type DeployInfo: :class:`Tencentcloud::Tcbr.v20220217.models.DeployParam`
        # @param ServerConfig: <p>服务配置信息(已废弃)</p>
        # @type ServerConfig: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseConfig`
        # @param Items: <p>服务配置信息</p>
        # @type Items: Array
        # @param VpcInfo: <p>vpc 信息</p>
        # @type VpcInfo: :class:`Tencentcloud::Tcbr.v20220217.models.CreateVpcInfo`

        attr_accessor :EnvId, :ServerName, :DeployInfo, :ServerConfig, :Items, :VpcInfo

        def initialize(envid=nil, servername=nil, deployinfo=nil, serverconfig=nil, items=nil, vpcinfo=nil)
          @EnvId = envid
          @ServerName = servername
          @DeployInfo = deployinfo
          @ServerConfig = serverconfig
          @Items = items
          @VpcInfo = vpcinfo
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          unless params['DeployInfo'].nil?
            @DeployInfo = DeployParam.new
            @DeployInfo.deserialize(params['DeployInfo'])
          end
          unless params['ServerConfig'].nil?
            @ServerConfig = ServerBaseConfig.new
            @ServerConfig.deserialize(params['ServerConfig'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              diffconfigitem_tmp = DiffConfigItem.new
              diffconfigitem_tmp.deserialize(i)
              @Items << diffconfigitem_tmp
            end
          end
          unless params['VpcInfo'].nil?
            @VpcInfo = CreateVpcInfo.new
            @VpcInfo.deserialize(params['VpcInfo'])
          end
        end
      end

      # CreateCloudRunServer返回参数结构体
      class CreateCloudRunServerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>一键部署任务Id，微信云托管，暂时用不到</p>
        # @type TaskId: Integer
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

      # 创建 vpc 信息
      class CreateVpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param CreateType: 1 新建 2 指定
        # @type CreateType: Integer
        # @param SubnetIds: 子网ID列表
        # @type SubnetIds: Array

        attr_accessor :VpcId, :CreateType, :SubnetIds

        def initialize(vpcid=nil, createtype=nil, subnetids=nil)
          @VpcId = vpcid
          @CreateType = createtype
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @CreateType = params['CreateType']
          @SubnetIds = params['SubnetIds']
        end
      end

      # 数据库资源信息
      class DatabasesInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库唯一标识
        # @type InstanceId: String
        # @param Status: 状态。包含以下取值：
        # <li>INITIALIZING：资源初始化中</li>
        # <li>RUNNING：运行中，可正常使用的状态</li>
        # <li>UNUSABLE：禁用，不可用</li>
        # <li>OVERDUE：资源过期</li>
        # @type Status: String
        # @param Region: 所属地域。
        # 当前支持ap-shanghai
        # @type Region: String

        attr_accessor :InstanceId, :Status, :Region

        def initialize(instanceid=nil, status=nil, region=nil)
          @InstanceId = instanceid
          @Status = status
          @Region = region
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @Region = params['Region']
        end
      end

      # DeleteCloudRunServer请求参数结构体
      class DeleteCloudRunServerRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param OperatorRemark: 操作人信息
        # @type OperatorRemark: String

        attr_accessor :EnvId, :ServerName, :OperatorRemark

        def initialize(envid=nil, servername=nil, operatorremark=nil)
          @EnvId = envid
          @ServerName = servername
          @OperatorRemark = operatorremark
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @OperatorRemark = params['OperatorRemark']
        end
      end

      # DeleteCloudRunServer返回参数结构体
      class DeleteCloudRunServerResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除结果：success / failed
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteCloudRunVersions请求参数结构体
      class DeleteCloudRunVersionsRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境 Id
        # @type EnvId: String
        # @param IsDeleteServer: 是否删除服务，只有最后一个版本的时候才生效
        # @type IsDeleteServer: Boolean
        # @param IsDeleteImage: 只有删除服务的时候，才生效
        # @type IsDeleteImage: Boolean
        # @param SimpleVersions: 删除版本的信息
        # @type SimpleVersions: Array
        # @param OperatorRemark: 操作备注
        # @type OperatorRemark: String

        attr_accessor :EnvId, :IsDeleteServer, :IsDeleteImage, :SimpleVersions, :OperatorRemark

        def initialize(envid=nil, isdeleteserver=nil, isdeleteimage=nil, simpleversions=nil, operatorremark=nil)
          @EnvId = envid
          @IsDeleteServer = isdeleteserver
          @IsDeleteImage = isdeleteimage
          @SimpleVersions = simpleversions
          @OperatorRemark = operatorremark
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsDeleteServer = params['IsDeleteServer']
          @IsDeleteImage = params['IsDeleteImage']
          unless params['SimpleVersions'].nil?
            @SimpleVersions = []
            params['SimpleVersions'].each do |i|
              simpleversion_tmp = SimpleVersion.new
              simpleversion_tmp.deserialize(i)
              @SimpleVersions << simpleversion_tmp
            end
          end
          @OperatorRemark = params['OperatorRemark']
        end
      end

      # DeleteCloudRunVersions返回参数结构体
      class DeleteCloudRunVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Result: succ | fail | partial
        # @type Result: String
        # @param FailVersions: 删除失败的版本列表
        # @type FailVersions: Array
        # @param SuccessVersions: 删除成功的版本列表
        # @type SuccessVersions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :FailVersions, :SuccessVersions, :RequestId

        def initialize(result=nil, failversions=nil, successversions=nil, requestid=nil)
          @Result = result
          @FailVersions = failversions
          @SuccessVersions = successversions
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          unless params['FailVersions'].nil?
            @FailVersions = []
            params['FailVersions'].each do |i|
              faildeleteversions_tmp = FailDeleteVersions.new
              faildeleteversions_tmp.deserialize(i)
              @FailVersions << faildeleteversions_tmp
            end
          end
          unless params['SuccessVersions'].nil?
            @SuccessVersions = []
            params['SuccessVersions'].each do |i|
              successdeleteversions_tmp = SuccessDeleteVersions.new
              successdeleteversions_tmp.deserialize(i)
              @SuccessVersions << successdeleteversions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 部署参数
      class DeployParam < TencentCloud::Common::AbstractModel
        # @param DeployType: 部署类型：package/image/repository/pipeline/jar/war
        # @type DeployType: String
        # @param ImageUrl: 部署类型为image时传入
        # @type ImageUrl: String
        # @param PackageName: 部署类型为package时传入
        # @type PackageName: String
        # @param PackageVersion: 部署类型为package时传入
        # @type PackageVersion: String
        # @param DeployRemark: 部署备注
        # @type DeployRemark: String
        # @param RepoInfo: 代码仓库信息
        # @type RepoInfo: :class:`Tencentcloud::Tcbr.v20220217.models.RepositoryInfo`
        # @param BuildPacks: 无Dockerfile时填写
        # @type BuildPacks: :class:`Tencentcloud::Tcbr.v20220217.models.BuildPacksInfo`
        # @param ReleaseType: 发布类型 GRAY | FULL
        # @type ReleaseType: String

        attr_accessor :DeployType, :ImageUrl, :PackageName, :PackageVersion, :DeployRemark, :RepoInfo, :BuildPacks, :ReleaseType

        def initialize(deploytype=nil, imageurl=nil, packagename=nil, packageversion=nil, deployremark=nil, repoinfo=nil, buildpacks=nil, releasetype=nil)
          @DeployType = deploytype
          @ImageUrl = imageurl
          @PackageName = packagename
          @PackageVersion = packageversion
          @DeployRemark = deployremark
          @RepoInfo = repoinfo
          @BuildPacks = buildpacks
          @ReleaseType = releasetype
        end

        def deserialize(params)
          @DeployType = params['DeployType']
          @ImageUrl = params['ImageUrl']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @DeployRemark = params['DeployRemark']
          unless params['RepoInfo'].nil?
            @RepoInfo = RepositoryInfo.new
            @RepoInfo.deserialize(params['RepoInfo'])
          end
          unless params['BuildPacks'].nil?
            @BuildPacks = BuildPacksInfo.new
            @BuildPacks.deserialize(params['BuildPacks'])
          end
          @ReleaseType = params['ReleaseType']
        end
      end

      # 云托管实例的部署记录, 包括扩缩容状态和流量分配情况
      class DeployRecord < TencentCloud::Common::AbstractModel
        # @param DeployId: 部署Id
        # @type DeployId: String
        # @param DeployTime: 部署开始时间
        # @type DeployTime: String
        # @param Status: 状态：running/deploying/deploy_failed
        # @type Status: String
        # @param RunId: 部署运行Id 用户查询部署日志
        # @type RunId: String
        # @param BuildId: 构建Id
        # @type BuildId: Integer
        # @param FlowRatio: 流量比例
        # @type FlowRatio: Integer
        # @param ImageUrl: 镜像url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String
        # @param ScaleStatus: 缩容状态 缩容为 zero 否则为空
        # @type ScaleStatus: String
        # @param HasTraffic: 是否分配流量
        # @type HasTraffic: Boolean
        # @param TrafficType: 流量分配方式, FLOW: 百分比分配; URL_PARAMS: 匹配 query 参数; HEADERS: 匹配请求 Header
        # @type TrafficType: String
        # @param IsReleasing: 当前版本是否在发布中
        # @type IsReleasing: Boolean

        attr_accessor :DeployId, :DeployTime, :Status, :RunId, :BuildId, :FlowRatio, :ImageUrl, :ScaleStatus, :HasTraffic, :TrafficType, :IsReleasing

        def initialize(deployid=nil, deploytime=nil, status=nil, runid=nil, buildid=nil, flowratio=nil, imageurl=nil, scalestatus=nil, hastraffic=nil, traffictype=nil, isreleasing=nil)
          @DeployId = deployid
          @DeployTime = deploytime
          @Status = status
          @RunId = runid
          @BuildId = buildid
          @FlowRatio = flowratio
          @ImageUrl = imageurl
          @ScaleStatus = scalestatus
          @HasTraffic = hastraffic
          @TrafficType = traffictype
          @IsReleasing = isreleasing
        end

        def deserialize(params)
          @DeployId = params['DeployId']
          @DeployTime = params['DeployTime']
          @Status = params['Status']
          @RunId = params['RunId']
          @BuildId = params['BuildId']
          @FlowRatio = params['FlowRatio']
          @ImageUrl = params['ImageUrl']
          @ScaleStatus = params['ScaleStatus']
          @HasTraffic = params['HasTraffic']
          @TrafficType = params['TrafficType']
          @IsReleasing = params['IsReleasing']
        end
      end

      # DescribeCloudRunDeployRecord请求参数结构体
      class DescribeCloudRunDeployRecordRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String

        attr_accessor :EnvId, :ServerName

        def initialize(envid=nil, servername=nil)
          @EnvId = envid
          @ServerName = servername
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
        end
      end

      # DescribeCloudRunDeployRecord返回参数结构体
      class DescribeCloudRunDeployRecordResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecords: 部署列表
        # @type DeployRecords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployRecords, :RequestId

        def initialize(deployrecords=nil, requestid=nil)
          @DeployRecords = deployrecords
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeployRecords'].nil?
            @DeployRecords = []
            params['DeployRecords'].each do |i|
              deployrecord_tmp = DeployRecord.new
              deployrecord_tmp.deserialize(i)
              @DeployRecords << deployrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRunEnvs请求参数结构体
      class DescribeCloudRunEnvsRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID，如果传了这个参数则只返回该环境的相关信息
        # @type EnvId: String
        # @param IsVisible: 指定Channels字段为可见渠道列表或不可见渠道列表
        # 如只想获取渠道A的环境 就填写IsVisible= true,Channels = ["A"], 过滤渠道A拉取其他渠道环境时填写IsVisible= false,Channels = ["A"]
        # @type IsVisible: Boolean
        # @param Channels: 渠道列表，代表可见或不可见渠道由IsVisible参数指定
        # @type Channels: Array

        attr_accessor :EnvId, :IsVisible, :Channels

        def initialize(envid=nil, isvisible=nil, channels=nil)
          @EnvId = envid
          @IsVisible = isvisible
          @Channels = channels
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsVisible = params['IsVisible']
          @Channels = params['Channels']
        end
      end

      # DescribeCloudRunEnvs返回参数结构体
      class DescribeCloudRunEnvsResponse < TencentCloud::Common::AbstractModel
        # @param EnvList: 环境信息列表
        # @type EnvList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvList, :RequestId

        def initialize(envlist=nil, requestid=nil)
          @EnvList = envlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvList'].nil?
            @EnvList = []
            params['EnvList'].each do |i|
              envinfo_tmp = EnvInfo.new
              envinfo_tmp.deserialize(i)
              @EnvList << envinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRunPodList请求参数结构体
      class DescribeCloudRunPodListRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param VersionName: 版本名
        # @type VersionName: String
        # @param PageSize: 默认为10， 最大为50
        # 不传或传0时 取默认10
        # 大于50时取50
        # @type PageSize: Integer
        # @param PageNum: 不传或传0时 会默认为1
        # @type PageNum: Integer

        attr_accessor :EnvId, :ServerName, :VersionName, :PageSize, :PageNum

        def initialize(envid=nil, servername=nil, versionname=nil, pagesize=nil, pagenum=nil)
          @EnvId = envid
          @ServerName = servername
          @VersionName = versionname
          @PageSize = pagesize
          @PageNum = pagenum
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @VersionName = params['VersionName']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
        end
      end

      # DescribeCloudRunPodList返回参数结构体
      class DescribeCloudRunPodListResponse < TencentCloud::Common::AbstractModel
        # @param PodList: pod实例列表
        # @type PodList: Array
        # @param TotalCount: pod总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PodList, :TotalCount, :RequestId

        def initialize(podlist=nil, totalcount=nil, requestid=nil)
          @PodList = podlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PodList'].nil?
            @PodList = []
            params['PodList'].each do |i|
              versionpodinstance_tmp = VersionPodInstance.new
              versionpodinstance_tmp.deserialize(i)
              @PodList << versionpodinstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRunProcessLog请求参数结构体
      class DescribeCloudRunProcessLogRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境 Id
        # @type EnvId: String
        # @param RunId: 操作 Id
        # @type RunId: String

        attr_accessor :EnvId, :RunId

        def initialize(envid=nil, runid=nil)
          @EnvId = envid
          @RunId = runid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @RunId = params['RunId']
        end
      end

      # DescribeCloudRunProcessLog返回参数结构体
      class DescribeCloudRunProcessLogResponse < TencentCloud::Common::AbstractModel
        # @param Logs: 运行日志列表
        # @type Logs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Logs, :RequestId

        def initialize(logs=nil, requestid=nil)
          @Logs = logs
          @RequestId = requestid
        end

        def deserialize(params)
          @Logs = params['Logs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRunServerDetail请求参数结构体
      class DescribeCloudRunServerDetailRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String

        attr_accessor :EnvId, :ServerName

        def initialize(envid=nil, servername=nil)
          @EnvId = envid
          @ServerName = servername
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
        end
      end

      # DescribeCloudRunServerDetail返回参数结构体
      class DescribeCloudRunServerDetailResponse < TencentCloud::Common::AbstractModel
        # @param BaseInfo: 服务基本信息
        # @type BaseInfo: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseInfo`
        # @param ServerConfig: 服务配置信息
        # @type ServerConfig: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseConfig`
        # @param OnlineVersionInfos: 在线版本信息
        # @type OnlineVersionInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaseInfo, :ServerConfig, :OnlineVersionInfos, :RequestId

        def initialize(baseinfo=nil, serverconfig=nil, onlineversioninfos=nil, requestid=nil)
          @BaseInfo = baseinfo
          @ServerConfig = serverconfig
          @OnlineVersionInfos = onlineversioninfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaseInfo'].nil?
            @BaseInfo = ServerBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['ServerConfig'].nil?
            @ServerConfig = ServerBaseConfig.new
            @ServerConfig.deserialize(params['ServerConfig'])
          end
          unless params['OnlineVersionInfos'].nil?
            @OnlineVersionInfos = []
            params['OnlineVersionInfos'].each do |i|
              onlineversioninfo_tmp = OnlineVersionInfo.new
              onlineversioninfo_tmp.deserialize(i)
              @OnlineVersionInfos << onlineversioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRunServers请求参数结构体
      class DescribeCloudRunServersRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param PageSize: 默认为9， 最大为30
        # 不传或传0时 取默认9
        # 大于30时取30
        # @type PageSize: Integer
        # @param PageNum: 不传或传0时 会默认为1
        # @type PageNum: Integer
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param ServerType: 服务类型：function | container
        # @type ServerType: String
        # @param VpcId: vpcId
        # @type VpcId: String

        attr_accessor :EnvId, :PageSize, :PageNum, :ServerName, :ServerType, :VpcId

        def initialize(envid=nil, pagesize=nil, pagenum=nil, servername=nil, servertype=nil, vpcid=nil)
          @EnvId = envid
          @PageSize = pagesize
          @PageNum = pagenum
          @ServerName = servername
          @ServerType = servertype
          @VpcId = vpcid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @ServerName = params['ServerName']
          @ServerType = params['ServerType']
          @VpcId = params['VpcId']
        end
      end

      # DescribeCloudRunServers返回参数结构体
      class DescribeCloudRunServersResponse < TencentCloud::Common::AbstractModel
        # @param ServerList: 服务列表
        # @type ServerList: Array
        # @param Total: 服务总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServerList, :Total, :RequestId

        def initialize(serverlist=nil, total=nil, requestid=nil)
          @ServerList = serverlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServerList'].nil?
            @ServerList = []
            params['ServerList'].each do |i|
              serverbaseinfo_tmp = ServerBaseInfo.new
              serverbaseinfo_tmp.deserialize(i)
              @ServerList << serverbaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvBaseInfo请求参数结构体
      class DescribeEnvBaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: <p>环境 Id</p>
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeEnvBaseInfo返回参数结构体
      class DescribeEnvBaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param EnvBaseInfo: <p>环境基础信息</p>
        # @type EnvBaseInfo: :class:`Tencentcloud::Tcbr.v20220217.models.EnvBaseInfo`
        # @param IsExist: <p>是否存在</p>
        # @type IsExist: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvBaseInfo, :IsExist, :RequestId

        def initialize(envbaseinfo=nil, isexist=nil, requestid=nil)
          @EnvBaseInfo = envbaseinfo
          @IsExist = isexist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvBaseInfo'].nil?
            @EnvBaseInfo = EnvBaseInfo.new
            @EnvBaseInfo.deserialize(params['EnvBaseInfo'])
          end
          @IsExist = params['IsExist']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseOrder请求参数结构体
      class DescribeReleaseOrderRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境 Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param Status: 发布单状态
        # @type Status: String

        attr_accessor :EnvId, :ServerName, :Status

        def initialize(envid=nil, servername=nil, status=nil)
          @EnvId = envid
          @ServerName = servername
          @Status = status
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @Status = params['Status']
        end
      end

      # DescribeReleaseOrder返回参数结构体
      class DescribeReleaseOrderResponse < TencentCloud::Common::AbstractModel
        # @param IsExist: 是否存在
        # @type IsExist: Boolean
        # @param ReleaseOrderInfo: 发布单信息
        # @type ReleaseOrderInfo: :class:`Tencentcloud::Tcbr.v20220217.models.ReleaseOrderInfo`
        # @param LastReleasedSuccessTime: 上一次成功发布时间
        # @type LastReleasedSuccessTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsExist, :ReleaseOrderInfo, :LastReleasedSuccessTime, :RequestId

        def initialize(isexist=nil, releaseorderinfo=nil, lastreleasedsuccesstime=nil, requestid=nil)
          @IsExist = isexist
          @ReleaseOrderInfo = releaseorderinfo
          @LastReleasedSuccessTime = lastreleasedsuccesstime
          @RequestId = requestid
        end

        def deserialize(params)
          @IsExist = params['IsExist']
          unless params['ReleaseOrderInfo'].nil?
            @ReleaseOrderInfo = ReleaseOrderInfo.new
            @ReleaseOrderInfo.deserialize(params['ReleaseOrderInfo'])
          end
          @LastReleasedSuccessTime = params['LastReleasedSuccessTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServerManageTask请求参数结构体
      class DescribeServerManageTaskRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param TaskId: 任务Id
        # @type TaskId: Integer
        # @param OperatorRemark: 操作标识
        # @type OperatorRemark: String

        attr_accessor :EnvId, :ServerName, :TaskId, :OperatorRemark

        def initialize(envid=nil, servername=nil, taskid=nil, operatorremark=nil)
          @EnvId = envid
          @ServerName = servername
          @TaskId = taskid
          @OperatorRemark = operatorremark
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @TaskId = params['TaskId']
          @OperatorRemark = params['OperatorRemark']
        end
      end

      # DescribeServerManageTask返回参数结构体
      class DescribeServerManageTaskResponse < TencentCloud::Common::AbstractModel
        # @param IsExist: 是否存在
        # @type IsExist: Boolean
        # @param Task: 任务信息
        # @type Task: :class:`Tencentcloud::Tcbr.v20220217.models.ServerManageTaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsExist, :Task, :RequestId

        def initialize(isexist=nil, task=nil, requestid=nil)
          @IsExist = isexist
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          @IsExist = params['IsExist']
          unless params['Task'].nil?
            @Task = ServerManageTaskInfo.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVersionDetail请求参数结构体
      class DescribeVersionDetailRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: <p>环境Id</p>
        # @type EnvId: String
        # @param ServerName: <p>服务名</p>
        # @type ServerName: String
        # @param VersionName: <p>版本名</p>
        # @type VersionName: String
        # @param Channel: <p>channel</p>
        # @type Channel: String

        attr_accessor :EnvId, :ServerName, :VersionName, :Channel

        def initialize(envid=nil, servername=nil, versionname=nil, channel=nil)
          @EnvId = envid
          @ServerName = servername
          @VersionName = versionname
          @Channel = channel
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @VersionName = params['VersionName']
          @Channel = params['Channel']
        end
      end

      # DescribeVersionDetail返回参数结构体
      class DescribeVersionDetailResponse < TencentCloud::Common::AbstractModel
        # @param Name: <p>版本名</p>
        # @type Name: String
        # @param Port: <p>端口号</p>
        # @type Port: Integer
        # @param Cpu: <p>cpu 规格</p>
        # @type Cpu: Float
        # @param Mem: <p>mem 规格</p>
        # @type Mem: Float
        # @param MinNum: <p>最小副本数</p>
        # @type MinNum: Integer
        # @param MaxNum: <p>最大副本数</p>
        # @type MaxNum: Integer
        # @param PolicyDetails: <p>扩缩容策略</p>
        # @type PolicyDetails: Array
        # @param Dockerfile: <p>Dockerfile path</p>
        # @type Dockerfile: String
        # @param BuildDir: <p>目标目录</p>
        # @type BuildDir: String
        # @param EnvParams: <p>环境变量</p>
        # @type EnvParams: String
        # @param Status: <p>状态</p>
        # @type Status: String
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param UpdatedTime: <p>更新时间</p>
        # @type UpdatedTime: String
        # @param LogPath: <p>日志采集路径</p>
        # @type LogPath: String
        # @param EntryPoint: <p>entryPoint</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntryPoint: String
        # @param Cmd: <p>Cmd</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cmd: String
        # @param VpcConf: <p>vpc conf</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcConf: :class:`Tencentcloud::Tcbr.v20220217.models.VpcConf`
        # @param VolumesConf: <p>volume conf</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumesConf: Array
        # @param BuildPacks: <p>buildpack 信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildPacks: :class:`Tencentcloud::Tcbr.v20220217.models.BuildPacksInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Port, :Cpu, :Mem, :MinNum, :MaxNum, :PolicyDetails, :Dockerfile, :BuildDir, :EnvParams, :Status, :CreatedTime, :UpdatedTime, :LogPath, :EntryPoint, :Cmd, :VpcConf, :VolumesConf, :BuildPacks, :RequestId

        def initialize(name=nil, port=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, policydetails=nil, dockerfile=nil, builddir=nil, envparams=nil, status=nil, createdtime=nil, updatedtime=nil, logpath=nil, entrypoint=nil, cmd=nil, vpcconf=nil, volumesconf=nil, buildpacks=nil, requestid=nil)
          @Name = name
          @Port = port
          @Cpu = cpu
          @Mem = mem
          @MinNum = minnum
          @MaxNum = maxnum
          @PolicyDetails = policydetails
          @Dockerfile = dockerfile
          @BuildDir = builddir
          @EnvParams = envparams
          @Status = status
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @LogPath = logpath
          @EntryPoint = entrypoint
          @Cmd = cmd
          @VpcConf = vpcconf
          @VolumesConf = volumesconf
          @BuildPacks = buildpacks
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Port = params['Port']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          unless params['PolicyDetails'].nil?
            @PolicyDetails = []
            params['PolicyDetails'].each do |i|
              hpapolicy_tmp = HpaPolicy.new
              hpapolicy_tmp.deserialize(i)
              @PolicyDetails << hpapolicy_tmp
            end
          end
          @Dockerfile = params['Dockerfile']
          @BuildDir = params['BuildDir']
          @EnvParams = params['EnvParams']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @LogPath = params['LogPath']
          @EntryPoint = params['EntryPoint']
          @Cmd = params['Cmd']
          unless params['VpcConf'].nil?
            @VpcConf = VpcConf.new
            @VpcConf.deserialize(params['VpcConf'])
          end
          unless params['VolumesConf'].nil?
            @VolumesConf = []
            params['VolumesConf'].each do |i|
              volumeconf_tmp = VolumeConf.new
              volumeconf_tmp.deserialize(i)
              @VolumesConf << volumeconf_tmp
            end
          end
          unless params['BuildPacks'].nil?
            @BuildPacks = BuildPacksInfo.new
            @BuildPacks.deserialize(params['BuildPacks'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 服务配置入参
      class DiffConfigItem < TencentCloud::Common::AbstractModel
        # @param Key: 配置项 Key
        # MinNum 最小副本数
        # MaxNum 最大副本数
        # PolicyDetails 扩缩容策略
        # AccessTypes 访问类型
        # TimerScale 定时扩缩容
        # InternalAccess 内网访问
        # OperationMode 运行模式 noScale | condScale | alwaysScale | custom ｜ manualScale
        # SessionAffinity 会话亲和性 open | close
        # CpuSpecs cpu 规格
        # MemSpecs mem规格
        # EnvParam 环境变量
        # LogPath 日志采集路径
        # Port 端口
        # Dockerfile dockerfile 文件名
        # BuildDir 目标目录
        # Tag 服务标签
        # LogType 日志类型 none | default | custom
        # LogSetId 日志集Id
        # LogTopicId 日志主题ID
        # LogParseType 日志解析类型 json ｜ line
        # EntryPoint entrypoint 命令
        # Cmd cmd命令
        # VpcConf 网络信息
        # @type Key: String
        # @param Value: 字符串类型配置项值
        # InternalAccess、OperationMode、SessionAffinity、EnvParam、LogPath、Dockerfile、BuildDir、Tag、LogType、LogSetId、LogTopicId、LogParseType
        # @type Value: String
        # @param IntValue: int 类型配置项值
        # MinNum、MaxNum、Port
        # @type IntValue: Integer
        # @param BoolValue: bool 类型配置项值
        # @type BoolValue: Boolean
        # @param FloatValue: 浮点型配置项值
        # CpuSpecs、MemSpecs
        # @type FloatValue: Float
        # @param ArrayValue: 字符串数组配置项值
        # AccessTypes，EntryPoint，Cmd
        # @type ArrayValue: Array
        # @param PolicyDetails: 扩缩容策略配置项值
        # @type PolicyDetails: Array
        # @param TimerScale: 定时扩缩容配置项值
        # @type TimerScale: Array
        # @param VpcConf: 配置内网访问时网络信息
        # @type VpcConf: :class:`Tencentcloud::Tcbr.v20220217.models.VpcConf`
        # @param VolumesConf: 存储配置信息
        # @type VolumesConf: Array

        attr_accessor :Key, :Value, :IntValue, :BoolValue, :FloatValue, :ArrayValue, :PolicyDetails, :TimerScale, :VpcConf, :VolumesConf

        def initialize(key=nil, value=nil, intvalue=nil, boolvalue=nil, floatvalue=nil, arrayvalue=nil, policydetails=nil, timerscale=nil, vpcconf=nil, volumesconf=nil)
          @Key = key
          @Value = value
          @IntValue = intvalue
          @BoolValue = boolvalue
          @FloatValue = floatvalue
          @ArrayValue = arrayvalue
          @PolicyDetails = policydetails
          @TimerScale = timerscale
          @VpcConf = vpcconf
          @VolumesConf = volumesconf
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @IntValue = params['IntValue']
          @BoolValue = params['BoolValue']
          @FloatValue = params['FloatValue']
          @ArrayValue = params['ArrayValue']
          unless params['PolicyDetails'].nil?
            @PolicyDetails = []
            params['PolicyDetails'].each do |i|
              hpapolicy_tmp = HpaPolicy.new
              hpapolicy_tmp.deserialize(i)
              @PolicyDetails << hpapolicy_tmp
            end
          end
          unless params['TimerScale'].nil?
            @TimerScale = []
            params['TimerScale'].each do |i|
              timerscale_tmp = TimerScale.new
              timerscale_tmp.deserialize(i)
              @TimerScale << timerscale_tmp
            end
          end
          unless params['VpcConf'].nil?
            @VpcConf = VpcConf.new
            @VpcConf.deserialize(params['VpcConf'])
          end
          unless params['VolumesConf'].nil?
            @VolumesConf = []
            params['VolumesConf'].each do |i|
              volumeconf_tmp = VolumeConf.new
              volumeconf_tmp.deserialize(i)
              @VolumesConf << volumeconf_tmp
            end
          end
        end
      end

      # 环境基础信息
      class EnvBaseInfo < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param PackageType: 套餐类型：Trial ｜ Standard ｜ Professional ｜ Enterprise
        # @type PackageType: String
        # @param VpcId: VPC Id
        # @type VpcId: String
        # @param CreateTime: 环境创建时间
        # @type CreateTime: String
        # @param Alias: 环境别名
        # @type Alias: String
        # @param Status: 环境状态
        # @type Status: String
        # @param Region: 环境地域
        # @type Region: String
        # @param EnvType: 环境类型 tcbr ｜ run
        # @type EnvType: String
        # @param SubnetIds: 子网id
        # @type SubnetIds: String
        # @param Recycle: 回收标志，为空则表示正常，recycle表示已回收
        # @type Recycle: String

        attr_accessor :EnvId, :PackageType, :VpcId, :CreateTime, :Alias, :Status, :Region, :EnvType, :SubnetIds, :Recycle

        def initialize(envid=nil, packagetype=nil, vpcid=nil, createtime=nil, _alias=nil, status=nil, region=nil, envtype=nil, subnetids=nil, recycle=nil)
          @EnvId = envid
          @PackageType = packagetype
          @VpcId = vpcid
          @CreateTime = createtime
          @Alias = _alias
          @Status = status
          @Region = region
          @EnvType = envtype
          @SubnetIds = subnetids
          @Recycle = recycle
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @PackageType = params['PackageType']
          @VpcId = params['VpcId']
          @CreateTime = params['CreateTime']
          @Alias = params['Alias']
          @Status = params['Status']
          @Region = params['Region']
          @EnvType = params['EnvType']
          @SubnetIds = params['SubnetIds']
          @Recycle = params['Recycle']
        end
      end

      # 环境信息
      class EnvInfo < TencentCloud::Common::AbstractModel
        # @param EnvId: 账户下该环境唯一标识
        # @type EnvId: String
        # @param Source: 环境来源。包含以下取值：
        # <li>miniapp：微信小程序</li>
        # <li>qcloud ：腾讯云</li>
        # @type Source: String
        # @param Alias: 环境别名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        # @type Alias: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间
        # @type UpdateTime: String
        # @param Status: 环境状态。包含以下取值：
        # <li>NORMAL：正常可用</li>
        # <li>UNAVAILABLE：服务不可用，可能是尚未初始化或者初始化过程中</li>
        # @type Status: String
        # @param IsAutoDegrade: 是否到期自动降为免费版
        # @type IsAutoDegrade: Boolean
        # @param EnvChannel: 环境渠道
        # @type EnvChannel: String
        # @param PayMode: 支付方式。包含以下取值：
        # <li> prepayment：预付费</li>
        # <li> postpaid：后付费</li>
        # @type PayMode: String
        # @param IsDefault: 是否为默认环境
        # @type IsDefault: Boolean
        # @param Region: 环境所属地域
        # @type Region: String
        # @param EnvType: 环境类型：baas, run, hosting, weda,tcbr
        # @type EnvType: String
        # @param Databases: 数据库列表
        # @type Databases: Array
        # @param Storages: 存储列表
        # @type Storages: Array
        # @param Functions: 函数列表
        # @type Functions: Array
        # @param LogServices: 云日志服务列表
        # @type LogServices: Array
        # @param StaticStorages: 静态资源信息
        # @type StaticStorages: Array
        # @param Tags: 环境标签列表
        # @type Tags: Array
        # @param CustomLogServices: 自定义日志服务
        # @type CustomLogServices: Array
        # @param PackageId: tcb产品套餐ID，参考DescribePackages接口的返回值。
        # @type PackageId: String
        # @param PackageName: 套餐中文名称，参考DescribePackages接口的返回值。
        # @type PackageName: String

        attr_accessor :EnvId, :Source, :Alias, :CreateTime, :UpdateTime, :Status, :IsAutoDegrade, :EnvChannel, :PayMode, :IsDefault, :Region, :EnvType, :Databases, :Storages, :Functions, :LogServices, :StaticStorages, :Tags, :CustomLogServices, :PackageId, :PackageName

        def initialize(envid=nil, source=nil, _alias=nil, createtime=nil, updatetime=nil, status=nil, isautodegrade=nil, envchannel=nil, paymode=nil, isdefault=nil, region=nil, envtype=nil, databases=nil, storages=nil, functions=nil, logservices=nil, staticstorages=nil, tags=nil, customlogservices=nil, packageid=nil, packagename=nil)
          @EnvId = envid
          @Source = source
          @Alias = _alias
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @IsAutoDegrade = isautodegrade
          @EnvChannel = envchannel
          @PayMode = paymode
          @IsDefault = isdefault
          @Region = region
          @EnvType = envtype
          @Databases = databases
          @Storages = storages
          @Functions = functions
          @LogServices = logservices
          @StaticStorages = staticstorages
          @Tags = tags
          @CustomLogServices = customlogservices
          @PackageId = packageid
          @PackageName = packagename
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Source = params['Source']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @IsAutoDegrade = params['IsAutoDegrade']
          @EnvChannel = params['EnvChannel']
          @PayMode = params['PayMode']
          @IsDefault = params['IsDefault']
          @Region = params['Region']
          @EnvType = params['EnvType']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              databasesinfo_tmp = DatabasesInfo.new
              databasesinfo_tmp.deserialize(i)
              @Databases << databasesinfo_tmp
            end
          end
          unless params['Storages'].nil?
            @Storages = []
            params['Storages'].each do |i|
              storageinfo_tmp = StorageInfo.new
              storageinfo_tmp.deserialize(i)
              @Storages << storageinfo_tmp
            end
          end
          unless params['Functions'].nil?
            @Functions = []
            params['Functions'].each do |i|
              functioninfo_tmp = FunctionInfo.new
              functioninfo_tmp.deserialize(i)
              @Functions << functioninfo_tmp
            end
          end
          unless params['LogServices'].nil?
            @LogServices = []
            params['LogServices'].each do |i|
              logserviceinfo_tmp = LogServiceInfo.new
              logserviceinfo_tmp.deserialize(i)
              @LogServices << logserviceinfo_tmp
            end
          end
          unless params['StaticStorages'].nil?
            @StaticStorages = []
            params['StaticStorages'].each do |i|
              staticstorageinfo_tmp = StaticStorageInfo.new
              staticstorageinfo_tmp.deserialize(i)
              @StaticStorages << staticstorageinfo_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['CustomLogServices'].nil?
            @CustomLogServices = []
            params['CustomLogServices'].each do |i|
              clsinfo_tmp = ClsInfo.new
              clsinfo_tmp.deserialize(i)
              @CustomLogServices << clsinfo_tmp
            end
          end
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
        end
      end

      # 删除失败版本信息
      class FailDeleteVersions < TencentCloud::Common::AbstractModel
        # @param Version: 删除失败版本信息
        # @type Version: :class:`Tencentcloud::Tcbr.v20220217.models.SimpleVersion`
        # @param ErrorCode: 删除失败错误码
        # @type ErrorCode: Integer
        # @param ErrorMsg: 删除失败错误信息
        # @type ErrorMsg: String
        # @param RequestId: 删除操作 RequestId
        # @type RequestId: String

        attr_accessor :Version, :ErrorCode, :ErrorMsg, :RequestId

        def initialize(version=nil, errorcode=nil, errormsg=nil, requestid=nil)
          @Version = version
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Version'].nil?
            @Version = SimpleVersion.new
            @Version.deserialize(params['Version'])
          end
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 函数的信息
      class FunctionInfo < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Region: 所属地域。
        # 当前支持ap-shanghai
        # @type Region: String

        attr_accessor :Namespace, :Region

        def initialize(namespace=nil, region=nil)
          @Namespace = namespace
          @Region = region
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Region = params['Region']
        end
      end

      # 扩缩容入参
      class HpaPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyType: 扩缩容类型
        # @type PolicyType: String
        # @param PolicyThreshold: 扩缩容阈值
        # @type PolicyThreshold: Integer

        attr_accessor :PolicyType, :PolicyThreshold

        def initialize(policytype=nil, policythreshold=nil)
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
        end

        def deserialize(params)
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
        end
      end

      # CLS日志单条信息
      class LogObject < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志属于的 topic ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicName: 日志主题的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param Timestamp: 日志时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Content: 日志内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param FileName: 采集路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param Source: 日志来源设备
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param PkgLogId: 日志唯一标识
        # @type PkgLogId: String

        attr_accessor :TopicId, :TopicName, :Timestamp, :Content, :FileName, :Source, :PkgLogId

        def initialize(topicid=nil, topicname=nil, timestamp=nil, content=nil, filename=nil, source=nil, pkglogid=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Timestamp = timestamp
          @Content = content
          @FileName = filename
          @Source = source
          @PkgLogId = pkglogid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Timestamp = params['Timestamp']
          @Content = params['Content']
          @FileName = params['FileName']
          @Source = params['Source']
          @PkgLogId = params['PkgLogId']
        end
      end

      # CLS日志结果
      class LogResObject < TencentCloud::Common::AbstractModel
        # @param Context: 获取更多检索结果的游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param ListOver: 搜索结果是否已经全部返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListOver: Boolean
        # @param Results: 日志内容信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array

        attr_accessor :Context, :ListOver, :Results

        def initialize(context=nil, listover=nil, results=nil)
          @Context = context
          @ListOver = listover
          @Results = results
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              logobject_tmp = LogObject.new
              logobject_tmp.deserialize(i)
              @Results << logobject_tmp
            end
          end
        end
      end

      # 云日志服务相关信息
      class LogServiceInfo < TencentCloud::Common::AbstractModel
        # @param LogsetName: log名
        # @type LogsetName: String
        # @param LogsetId: log-id
        # @type LogsetId: String
        # @param TopicName: topic名
        # @type TopicName: String
        # @param TopicId: topic-id
        # @type TopicId: String
        # @param Region: cls日志所属地域
        # @type Region: String

        attr_accessor :LogsetName, :LogsetId, :TopicName, :TopicId, :Region

        def initialize(logsetname=nil, logsetid=nil, topicname=nil, topicid=nil, region=nil)
          @LogsetName = logsetname
          @LogsetId = logsetid
          @TopicName = topicname
          @TopicId = topicid
          @Region = region
        end

        def deserialize(params)
          @LogsetName = params['LogsetName']
          @LogsetId = params['LogsetId']
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @Region = params['Region']
        end
      end

      # 通用Key Value
      class ObjectKV < TencentCloud::Common::AbstractModel
        # @param Key: 键值对Key
        # @type Key: String
        # @param Value: 键值对Value
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

      # 通用键值权重对
      class ObjectKVPriority < TencentCloud::Common::AbstractModel
        # @param Key: 键值对Key
        # @type Key: String
        # @param Value: 键值对Value
        # @type Value: String
        # @param Priority: 键值对权重
        # @type Priority: Integer

        attr_accessor :Key, :Value, :Priority

        def initialize(key=nil, value=nil, priority=nil)
          @Key = key
          @Value = value
          @Priority = priority
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Priority = params['Priority']
        end
      end

      # 在线版本信息
      class OnlineVersionInfo < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名
        # @type VersionName: String
        # @param ImageUrl: 镜像url
        # @type ImageUrl: String
        # @param FlowRatio: 流量
        # @type FlowRatio: String

        attr_accessor :VersionName, :ImageUrl, :FlowRatio

        def initialize(versionname=nil, imageurl=nil, flowratio=nil)
          @VersionName = versionname
          @ImageUrl = imageurl
          @FlowRatio = flowratio
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @ImageUrl = params['ImageUrl']
          @FlowRatio = params['FlowRatio']
        end
      end

      # OperateServerManage请求参数结构体
      class OperateServerManageRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param TaskId: 任报Id
        # @type TaskId: Integer
        # @param OperateType: 操作类型:cancel | go_back | done
        # @type OperateType: String
        # @param OperatorRemark: 操作标识
        # @type OperatorRemark: String

        attr_accessor :EnvId, :ServerName, :TaskId, :OperateType, :OperatorRemark

        def initialize(envid=nil, servername=nil, taskid=nil, operatetype=nil, operatorremark=nil)
          @EnvId = envid
          @ServerName = servername
          @TaskId = taskid
          @OperateType = operatetype
          @OperatorRemark = operatorremark
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @TaskId = params['TaskId']
          @OperateType = params['OperateType']
          @OperatorRemark = params['OperatorRemark']
        end
      end

      # OperateServerManage返回参数结构体
      class OperateServerManageResponse < TencentCloud::Common::AbstractModel
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

      # ReleaseGray请求参数结构体
      class ReleaseGrayRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param GrayType: 灰度类型
        # @type GrayType: String
        # @param TrafficType: 流量类型
        # @type TrafficType: String
        # @param VersionFlowItems: 流量策略
        # @type VersionFlowItems: Array
        # @param OperatorRemark: 操作标识
        # @type OperatorRemark: String
        # @param GrayFlowRatio: 流量比例
        # @type GrayFlowRatio: Integer

        attr_accessor :EnvId, :ServerName, :GrayType, :TrafficType, :VersionFlowItems, :OperatorRemark, :GrayFlowRatio

        def initialize(envid=nil, servername=nil, graytype=nil, traffictype=nil, versionflowitems=nil, operatorremark=nil, grayflowratio=nil)
          @EnvId = envid
          @ServerName = servername
          @GrayType = graytype
          @TrafficType = traffictype
          @VersionFlowItems = versionflowitems
          @OperatorRemark = operatorremark
          @GrayFlowRatio = grayflowratio
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @GrayType = params['GrayType']
          @TrafficType = params['TrafficType']
          unless params['VersionFlowItems'].nil?
            @VersionFlowItems = []
            params['VersionFlowItems'].each do |i|
              versionflowinfo_tmp = VersionFlowInfo.new
              versionflowinfo_tmp.deserialize(i)
              @VersionFlowItems << versionflowinfo_tmp
            end
          end
          @OperatorRemark = params['OperatorRemark']
          @GrayFlowRatio = params['GrayFlowRatio']
        end
      end

      # ReleaseGray返回参数结构体
      class ReleaseGrayResponse < TencentCloud::Common::AbstractModel
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

      # 发布单信息
      class ReleaseOrderInfo < TencentCloud::Common::AbstractModel
        # @param Id: 发布单Id
        # @type Id: Integer
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param CurrentVersion: 当前版本
        # @type CurrentVersion: :class:`Tencentcloud::Tcbr.v20220217.models.VersionInfo`
        # @param ReleaseVersion: 发布版本
        # @type ReleaseVersion: :class:`Tencentcloud::Tcbr.v20220217.models.VersionInfo`
        # @param GrayStatus: 灰度状态
        # @type GrayStatus: String
        # @param ReleaseStatus: 发布状态
        # @type ReleaseStatus: String
        # @param TrafficTypeValues: 流量值
        # @type TrafficTypeValues: Array
        # @param TrafficType: 流量类型
        # @type TrafficType: String
        # @param FlowRatio: 百分比
        # @type FlowRatio: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsReleasing: 是否发布中
        # @type IsReleasing: Boolean

        attr_accessor :Id, :ServerName, :CurrentVersion, :ReleaseVersion, :GrayStatus, :ReleaseStatus, :TrafficTypeValues, :TrafficType, :FlowRatio, :CreateTime, :IsReleasing

        def initialize(id=nil, servername=nil, currentversion=nil, releaseversion=nil, graystatus=nil, releasestatus=nil, traffictypevalues=nil, traffictype=nil, flowratio=nil, createtime=nil, isreleasing=nil)
          @Id = id
          @ServerName = servername
          @CurrentVersion = currentversion
          @ReleaseVersion = releaseversion
          @GrayStatus = graystatus
          @ReleaseStatus = releasestatus
          @TrafficTypeValues = traffictypevalues
          @TrafficType = traffictype
          @FlowRatio = flowratio
          @CreateTime = createtime
          @IsReleasing = isreleasing
        end

        def deserialize(params)
          @Id = params['Id']
          @ServerName = params['ServerName']
          unless params['CurrentVersion'].nil?
            @CurrentVersion = VersionInfo.new
            @CurrentVersion.deserialize(params['CurrentVersion'])
          end
          unless params['ReleaseVersion'].nil?
            @ReleaseVersion = VersionInfo.new
            @ReleaseVersion.deserialize(params['ReleaseVersion'])
          end
          @GrayStatus = params['GrayStatus']
          @ReleaseStatus = params['ReleaseStatus']
          unless params['TrafficTypeValues'].nil?
            @TrafficTypeValues = []
            params['TrafficTypeValues'].each do |i|
              objectkv_tmp = ObjectKV.new
              objectkv_tmp.deserialize(i)
              @TrafficTypeValues << objectkv_tmp
            end
          end
          @TrafficType = params['TrafficType']
          @FlowRatio = params['FlowRatio']
          @CreateTime = params['CreateTime']
          @IsReleasing = params['IsReleasing']
        end
      end

      # 代码仓库信息
      class RepositoryInfo < TencentCloud::Common::AbstractModel
        # @param Source: git source
        # @type Source: String
        # @param Repo: 仓库名
        # @type Repo: String
        # @param Branch: 分支名
        # @type Branch: String

        attr_accessor :Source, :Repo, :Branch

        def initialize(source=nil, repo=nil, branch=nil)
          @Source = source
          @Repo = repo
          @Branch = branch
        end

        def deserialize(params)
          @Source = params['Source']
          @Repo = params['Repo']
          @Branch = params['Branch']
        end
      end

      # SearchClsLog请求参数结构体
      class SearchClsLogRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryString: 查询语句，详情参考 https://cloud.tencent.com/document/product/614/47044
        # @type QueryString: String
        # @param Limit: 单次要返回的日志条数，单次返回的最大条数为100
        # @type Limit: Integer
        # @param Context: 加载更多使用，透传上次返回的 context 值，获取后续的日志内容，通过游标最多可获取10000条，请尽可能缩小时间范围
        # @type Context: String
        # @param Sort: 按时间排序 asc（升序）或者 desc（降序），默认为 desc
        # @type Sort: String
        # @param UseLucene: 是否使用Lucene语法，默认为false
        # @type UseLucene: Boolean
        # @param LogType: 日志类型
        # @type LogType: Integer

        attr_accessor :EnvId, :StartTime, :EndTime, :QueryString, :Limit, :Context, :Sort, :UseLucene, :LogType

        def initialize(envid=nil, starttime=nil, endtime=nil, querystring=nil, limit=nil, context=nil, sort=nil, uselucene=nil, logtype=nil)
          @EnvId = envid
          @StartTime = starttime
          @EndTime = endtime
          @QueryString = querystring
          @Limit = limit
          @Context = context
          @Sort = sort
          @UseLucene = uselucene
          @LogType = logtype
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryString = params['QueryString']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
          @UseLucene = params['UseLucene']
          @LogType = params['LogType']
        end
      end

      # SearchClsLog返回参数结构体
      class SearchClsLogResponse < TencentCloud::Common::AbstractModel
        # @param LogResults: 日志内容结果
        # @type LogResults: :class:`Tencentcloud::Tcbr.v20220217.models.LogResObject`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogResults, :RequestId

        def initialize(logresults=nil, requestid=nil)
          @LogResults = logresults
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LogResults'].nil?
            @LogResults = LogResObject.new
            @LogResults.deserialize(params['LogResults'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 服务基础配置信息
      class ServerBaseConfig < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境 Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param OpenAccessTypes: 是否开启公网访问
        # @type OpenAccessTypes: Array
        # @param Cpu: Cpu 规格
        # @type Cpu: Float
        # @param Mem: Mem 规格
        # @type Mem: Float
        # @param MinNum: 最小副本数
        # @type MinNum: Integer
        # @param MaxNum: 最大副本数
        # @type MaxNum: Integer
        # @param PolicyDetails: 扩缩容配置
        # @type PolicyDetails: Array
        # @param CustomLogs: 日志采集路径
        # @type CustomLogs: String
        # @param EnvParams: 环境变量
        # @type EnvParams: String
        # @param InitialDelaySeconds: 延迟检测时间
        # @type InitialDelaySeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Port: 服务端口
        # @type Port: Integer
        # @param HasDockerfile: 是否有Dockerfile
        # @type HasDockerfile: Boolean
        # @param Dockerfile: Dockerfile 文件名
        # @type Dockerfile: String
        # @param BuildDir: 构建目录
        # @type BuildDir: String
        # @param LogType: 日志类型: none | default | custom
        # @type LogType: String
        # @param LogSetId: cls setId
        # @type LogSetId: String
        # @param LogTopicId: cls 主题id
        # @type LogTopicId: String
        # @param LogParseType: 解析类型：json ｜ line
        # @type LogParseType: String
        # @param Tag: 服务标签, function: 函数托管
        # @type Tag: String
        # @param InternalAccess: 内网访问开关 close | open
        # @type InternalAccess: String
        # @param InternalDomain: 内网域名
        # @type InternalDomain: String
        # @param OperationMode: 运行模式
        # @type OperationMode: String
        # @param TimerScale: 定时扩缩容配置
        # @type TimerScale: Array
        # @param EntryPoint: Dockerfile EntryPoint 参数
        # @type EntryPoint: Array
        # @param Cmd: Dockerfile Cmd 参数
        # @type Cmd: Array
        # @param SessionAffinity: 会话亲和性开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionAffinity: String
        # @param VpcConf: Vpc 配置参数
        # @type VpcConf: :class:`Tencentcloud::Tcbr.v20220217.models.VpcConf`
        # @param VolumesConf: 存储配置信息
        # @type VolumesConf: Array
        # @param LinkImageRegistry: 关联镜像密钥
        # @type LinkImageRegistry: String

        attr_accessor :EnvId, :ServerName, :OpenAccessTypes, :Cpu, :Mem, :MinNum, :MaxNum, :PolicyDetails, :CustomLogs, :EnvParams, :InitialDelaySeconds, :CreateTime, :Port, :HasDockerfile, :Dockerfile, :BuildDir, :LogType, :LogSetId, :LogTopicId, :LogParseType, :Tag, :InternalAccess, :InternalDomain, :OperationMode, :TimerScale, :EntryPoint, :Cmd, :SessionAffinity, :VpcConf, :VolumesConf, :LinkImageRegistry

        def initialize(envid=nil, servername=nil, openaccesstypes=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, policydetails=nil, customlogs=nil, envparams=nil, initialdelayseconds=nil, createtime=nil, port=nil, hasdockerfile=nil, dockerfile=nil, builddir=nil, logtype=nil, logsetid=nil, logtopicid=nil, logparsetype=nil, tag=nil, internalaccess=nil, internaldomain=nil, operationmode=nil, timerscale=nil, entrypoint=nil, cmd=nil, sessionaffinity=nil, vpcconf=nil, volumesconf=nil, linkimageregistry=nil)
          @EnvId = envid
          @ServerName = servername
          @OpenAccessTypes = openaccesstypes
          @Cpu = cpu
          @Mem = mem
          @MinNum = minnum
          @MaxNum = maxnum
          @PolicyDetails = policydetails
          @CustomLogs = customlogs
          @EnvParams = envparams
          @InitialDelaySeconds = initialdelayseconds
          @CreateTime = createtime
          @Port = port
          @HasDockerfile = hasdockerfile
          @Dockerfile = dockerfile
          @BuildDir = builddir
          @LogType = logtype
          @LogSetId = logsetid
          @LogTopicId = logtopicid
          @LogParseType = logparsetype
          @Tag = tag
          @InternalAccess = internalaccess
          @InternalDomain = internaldomain
          @OperationMode = operationmode
          @TimerScale = timerscale
          @EntryPoint = entrypoint
          @Cmd = cmd
          @SessionAffinity = sessionaffinity
          @VpcConf = vpcconf
          @VolumesConf = volumesconf
          @LinkImageRegistry = linkimageregistry
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @OpenAccessTypes = params['OpenAccessTypes']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          unless params['PolicyDetails'].nil?
            @PolicyDetails = []
            params['PolicyDetails'].each do |i|
              hpapolicy_tmp = HpaPolicy.new
              hpapolicy_tmp.deserialize(i)
              @PolicyDetails << hpapolicy_tmp
            end
          end
          @CustomLogs = params['CustomLogs']
          @EnvParams = params['EnvParams']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @CreateTime = params['CreateTime']
          @Port = params['Port']
          @HasDockerfile = params['HasDockerfile']
          @Dockerfile = params['Dockerfile']
          @BuildDir = params['BuildDir']
          @LogType = params['LogType']
          @LogSetId = params['LogSetId']
          @LogTopicId = params['LogTopicId']
          @LogParseType = params['LogParseType']
          @Tag = params['Tag']
          @InternalAccess = params['InternalAccess']
          @InternalDomain = params['InternalDomain']
          @OperationMode = params['OperationMode']
          unless params['TimerScale'].nil?
            @TimerScale = []
            params['TimerScale'].each do |i|
              timerscale_tmp = TimerScale.new
              timerscale_tmp.deserialize(i)
              @TimerScale << timerscale_tmp
            end
          end
          @EntryPoint = params['EntryPoint']
          @Cmd = params['Cmd']
          @SessionAffinity = params['SessionAffinity']
          unless params['VpcConf'].nil?
            @VpcConf = VpcConf.new
            @VpcConf.deserialize(params['VpcConf'])
          end
          unless params['VolumesConf'].nil?
            @VolumesConf = []
            params['VolumesConf'].each do |i|
              volumeconf_tmp = VolumeConf.new
              volumeconf_tmp.deserialize(i)
              @VolumesConf << volumeconf_tmp
            end
          end
          @LinkImageRegistry = params['LinkImageRegistry']
        end
      end

      # 服务基本信息
      class ServerBaseInfo < TencentCloud::Common::AbstractModel
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param DefaultDomainName: 默认服务域名
        # @type DefaultDomainName: String
        # @param CustomDomainName: 自定义域名
        # @type CustomDomainName: String
        # @param Status: 服务状态：running/deploying/deploy_failed
        # @type Status: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param AccessTypes: 公网访问类型
        # @type AccessTypes: Array
        # @param CustomDomainNames: 展示自定义域名
        # @type CustomDomainNames: Array
        # @param ServerType: 服务类型: function 云函数2.0；container 容器服务
        # @type ServerType: String
        # @param TrafficType: 流量类型，目前只有 FLOW
        # @type TrafficType: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ServerName, :DefaultDomainName, :CustomDomainName, :Status, :UpdateTime, :AccessTypes, :CustomDomainNames, :ServerType, :TrafficType, :CreateTime

        def initialize(servername=nil, defaultdomainname=nil, customdomainname=nil, status=nil, updatetime=nil, accesstypes=nil, customdomainnames=nil, servertype=nil, traffictype=nil, createtime=nil)
          @ServerName = servername
          @DefaultDomainName = defaultdomainname
          @CustomDomainName = customdomainname
          @Status = status
          @UpdateTime = updatetime
          @AccessTypes = accesstypes
          @CustomDomainNames = customdomainnames
          @ServerType = servertype
          @TrafficType = traffictype
          @CreateTime = createtime
        end

        def deserialize(params)
          @ServerName = params['ServerName']
          @DefaultDomainName = params['DefaultDomainName']
          @CustomDomainName = params['CustomDomainName']
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
          @AccessTypes = params['AccessTypes']
          @CustomDomainNames = params['CustomDomainNames']
          @ServerType = params['ServerType']
          @TrafficType = params['TrafficType']
          @CreateTime = params['CreateTime']
        end
      end

      # 服务管理任务信息
      class ServerManageTaskInfo < TencentCloud::Common::AbstractModel
        # @param Id: 任务Id
        # @type Id: Integer
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ChangeType: 变更类型
        # @type ChangeType: String
        # @param ReleaseType: 发布类型
        # @type ReleaseType: String
        # @param DeployType: 部署类型
        # @type DeployType: String
        # @param PreVersionName: 上一个版本名
        # @type PreVersionName: String
        # @param VersionName: 版本名
        # @type VersionName: String
        # @param PipelineId: 流水线Id
        # @type PipelineId: Integer
        # @param PipelineTaskId: 流水线任务Id
        # @type PipelineTaskId: Integer
        # @param ReleaseId: 发布单Id
        # @type ReleaseId: Integer
        # @param Status: 状态
        # @type Status: String
        # @param Steps: 步骤信息
        # @type Steps: Array
        # @param FailReason: 失败原因
        # @type FailReason: String
        # @param OperatorRemark: 操作标识
        # @type OperatorRemark: String

        attr_accessor :Id, :EnvId, :ServerName, :CreateTime, :ChangeType, :ReleaseType, :DeployType, :PreVersionName, :VersionName, :PipelineId, :PipelineTaskId, :ReleaseId, :Status, :Steps, :FailReason, :OperatorRemark

        def initialize(id=nil, envid=nil, servername=nil, createtime=nil, changetype=nil, releasetype=nil, deploytype=nil, preversionname=nil, versionname=nil, pipelineid=nil, pipelinetaskid=nil, releaseid=nil, status=nil, steps=nil, failreason=nil, operatorremark=nil)
          @Id = id
          @EnvId = envid
          @ServerName = servername
          @CreateTime = createtime
          @ChangeType = changetype
          @ReleaseType = releasetype
          @DeployType = deploytype
          @PreVersionName = preversionname
          @VersionName = versionname
          @PipelineId = pipelineid
          @PipelineTaskId = pipelinetaskid
          @ReleaseId = releaseid
          @Status = status
          @Steps = steps
          @FailReason = failreason
          @OperatorRemark = operatorremark
        end

        def deserialize(params)
          @Id = params['Id']
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @CreateTime = params['CreateTime']
          @ChangeType = params['ChangeType']
          @ReleaseType = params['ReleaseType']
          @DeployType = params['DeployType']
          @PreVersionName = params['PreVersionName']
          @VersionName = params['VersionName']
          @PipelineId = params['PipelineId']
          @PipelineTaskId = params['PipelineTaskId']
          @ReleaseId = params['ReleaseId']
          @Status = params['Status']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              taskstepinfo_tmp = TaskStepInfo.new
              taskstepinfo_tmp.deserialize(i)
              @Steps << taskstepinfo_tmp
            end
          end
          @FailReason = params['FailReason']
          @OperatorRemark = params['OperatorRemark']
        end
      end

      # 删除版本时需要的简化信息
      class SimpleVersion < TencentCloud::Common::AbstractModel
        # @param EnvId: 要删除版本的环境 Id
        # @type EnvId: String
        # @param ServerName: 要删除版本的服务名
        # @type ServerName: String
        # @param VersionName: 要删除版本的版本名
        # @type VersionName: String

        attr_accessor :EnvId, :ServerName, :VersionName

        def initialize(envid=nil, servername=nil, versionname=nil)
          @EnvId = envid
          @ServerName = servername
          @VersionName = versionname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @VersionName = params['VersionName']
        end
      end

      # 静态CDN资源信息
      class StaticStorageInfo < TencentCloud::Common::AbstractModel
        # @param StaticDomain: 静态CDN域名
        # @type StaticDomain: String
        # @param DefaultDirName: 静态CDN默认文件夹，当前为根目录
        # @type DefaultDirName: String
        # @param Status: 资源状态(process/online/offline/init)
        # @type Status: String
        # @param Region: cos所属区域
        # @type Region: String
        # @param Bucket: bucket信息
        # @type Bucket: String

        attr_accessor :StaticDomain, :DefaultDirName, :Status, :Region, :Bucket

        def initialize(staticdomain=nil, defaultdirname=nil, status=nil, region=nil, bucket=nil)
          @StaticDomain = staticdomain
          @DefaultDirName = defaultdirname
          @Status = status
          @Region = region
          @Bucket = bucket
        end

        def deserialize(params)
          @StaticDomain = params['StaticDomain']
          @DefaultDirName = params['DefaultDirName']
          @Status = params['Status']
          @Region = params['Region']
          @Bucket = params['Bucket']
        end
      end

      # StorageInfo 资源信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param Region: 资源所属地域。
        # 当前支持ap-shanghai
        # @type Region: String
        # @param Bucket: 桶名，存储资源的唯一标识
        # @type Bucket: String
        # @param CdnDomain: cdn 域名
        # @type CdnDomain: String
        # @param AppId: 资源所属用户的腾讯云appId
        # @type AppId: String

        attr_accessor :Region, :Bucket, :CdnDomain, :AppId

        def initialize(region=nil, bucket=nil, cdndomain=nil, appid=nil)
          @Region = region
          @Bucket = bucket
          @CdnDomain = cdndomain
          @AppId = appid
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @CdnDomain = params['CdnDomain']
          @AppId = params['AppId']
        end
      end

      # SubmitServerRollback请求参数结构体
      class SubmitServerRollbackRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param CurrentVersionName: 当前版本
        # @type CurrentVersionName: String
        # @param RollbackVersionName: 回滚版本
        # @type RollbackVersionName: String
        # @param OperatorRemark: 操作标识
        # @type OperatorRemark: String

        attr_accessor :EnvId, :ServerName, :CurrentVersionName, :RollbackVersionName, :OperatorRemark

        def initialize(envid=nil, servername=nil, currentversionname=nil, rollbackversionname=nil, operatorremark=nil)
          @EnvId = envid
          @ServerName = servername
          @CurrentVersionName = currentversionname
          @RollbackVersionName = rollbackversionname
          @OperatorRemark = operatorremark
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @CurrentVersionName = params['CurrentVersionName']
          @RollbackVersionName = params['RollbackVersionName']
          @OperatorRemark = params['OperatorRemark']
        end
      end

      # SubmitServerRollback返回参数结构体
      class SubmitServerRollbackResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: Integer
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

      # 删除成功的版本信息
      class SuccessDeleteVersions < TencentCloud::Common::AbstractModel
        # @param Version: 版本简化信息
        # @type Version: :class:`Tencentcloud::Tcbr.v20220217.models.SimpleVersion`
        # @param RequestId: 删除版本的 RequestId
        # @type RequestId: String
        # @param Result: 删除版本结果
        # @type Result: String

        attr_accessor :Version, :RequestId, :Result

        def initialize(version=nil, requestid=nil, result=nil)
          @Version = version
          @RequestId = requestid
          @Result = result
        end

        def deserialize(params)
          unless params['Version'].nil?
            @Version = SimpleVersion.new
            @Version.deserialize(params['Version'])
          end
          @RequestId = params['RequestId']
          @Result = params['Result']
        end
      end

      # 标签键值对
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

      # 任务步骤信息
      class TaskStepInfo < TencentCloud::Common::AbstractModel
        # @param Name: 步骤名
        # @type Name: String
        # @param Status: 未启动："todo"
        # 运行中："running"
        # 失败："failed"
        # 成功结束："finished"
        # @type Status: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param CostTime: 消耗时间：秒
        # @type CostTime: Integer
        # @param FailReason: 失败原因
        # @type FailReason: String

        attr_accessor :Name, :Status, :StartTime, :EndTime, :CostTime, :FailReason

        def initialize(name=nil, status=nil, starttime=nil, endtime=nil, costtime=nil, failreason=nil)
          @Name = name
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @CostTime = costtime
          @FailReason = failreason
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CostTime = params['CostTime']
          @FailReason = params['FailReason']
        end
      end

      # 定时扩缩容配置
      class TimerScale < TencentCloud::Common::AbstractModel
        # @param CycleType: 循环类型
        # @type CycleType: String
        # @param StartDate: 循环起始
        # @type StartDate: String
        # @param EndDate: 循环结束
        # @type EndDate: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param ReplicaNum: 副本个数
        # @type ReplicaNum: Integer

        attr_accessor :CycleType, :StartDate, :EndDate, :StartTime, :EndTime, :ReplicaNum

        def initialize(cycletype=nil, startdate=nil, enddate=nil, starttime=nil, endtime=nil, replicanum=nil)
          @CycleType = cycletype
          @StartDate = startdate
          @EndDate = enddate
          @StartTime = starttime
          @EndTime = endtime
          @ReplicaNum = replicanum
        end

        def deserialize(params)
          @CycleType = params['CycleType']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReplicaNum = params['ReplicaNum']
        end
      end

      # UpdateCloudRunServer请求参数结构体
      class UpdateCloudRunServerRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: <p>环境Id</p>
        # @type EnvId: String
        # @param ServerName: <p>服务名</p>
        # @type ServerName: String
        # @param DeployInfo: <p>部署信息</p>
        # @type DeployInfo: :class:`Tencentcloud::Tcbr.v20220217.models.DeployParam`
        # @param ServerConfig: <p>服务配置信息(已废弃)</p>
        # @type ServerConfig: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseConfig`
        # @param Business: <p>业务类型，默认tcr</p>
        # @type Business: String
        # @param Items: <p>服务配置信息</p>
        # @type Items: Array

        attr_accessor :EnvId, :ServerName, :DeployInfo, :ServerConfig, :Business, :Items

        def initialize(envid=nil, servername=nil, deployinfo=nil, serverconfig=nil, business=nil, items=nil)
          @EnvId = envid
          @ServerName = servername
          @DeployInfo = deployinfo
          @ServerConfig = serverconfig
          @Business = business
          @Items = items
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          unless params['DeployInfo'].nil?
            @DeployInfo = DeployParam.new
            @DeployInfo.deserialize(params['DeployInfo'])
          end
          unless params['ServerConfig'].nil?
            @ServerConfig = ServerBaseConfig.new
            @ServerConfig.deserialize(params['ServerConfig'])
          end
          @Business = params['Business']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              diffconfigitem_tmp = DiffConfigItem.new
              diffconfigitem_tmp.deserialize(i)
              @Items << diffconfigitem_tmp
            end
          end
        end
      end

      # UpdateCloudRunServer返回参数结构体
      class UpdateCloudRunServerResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: <p>环境Id</p>
        # @type EnvId: String
        # @param TaskId: <p>一键部署任务Id，暂时用不到</p>
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :TaskId, :RequestId

        def initialize(envid=nil, taskid=nil, requestid=nil)
          @EnvId = envid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 版本流量信息
      class VersionFlowInfo < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名
        # @type VersionName: String
        # @param IsDefaultPriority: 是否默认版本
        # @type IsDefaultPriority: Boolean
        # @param FlowRatio: 流量比例
        # @type FlowRatio: Integer
        # @param UrlParam: 测试KV值
        # @type UrlParam: :class:`Tencentcloud::Tcbr.v20220217.models.ObjectKV`
        # @param Priority: 权重
        # @type Priority: Integer

        attr_accessor :VersionName, :IsDefaultPriority, :FlowRatio, :UrlParam, :Priority

        def initialize(versionname=nil, isdefaultpriority=nil, flowratio=nil, urlparam=nil, priority=nil)
          @VersionName = versionname
          @IsDefaultPriority = isdefaultpriority
          @FlowRatio = flowratio
          @UrlParam = urlparam
          @Priority = priority
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @IsDefaultPriority = params['IsDefaultPriority']
          @FlowRatio = params['FlowRatio']
          unless params['UrlParam'].nil?
            @UrlParam = ObjectKV.new
            @UrlParam.deserialize(params['UrlParam'])
          end
          @Priority = params['Priority']
        end
      end

      # 版本信息
      class VersionInfo < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名
        # @type VersionName: String
        # @param FlowRatio: 流量比例
        # @type FlowRatio: Integer
        # @param Status: 版本状态
        # @type Status: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String
        # @param BuildId: 构建Id
        # @type BuildId: Integer
        # @param UploadType: 上传方式
        # @type UploadType: String
        # @param Remark: 操作标识
        # @type Remark: String
        # @param UrlParam: 测试参数
        # @type UrlParam: :class:`Tencentcloud::Tcbr.v20220217.models.ObjectKV`
        # @param Priority: 权重
        # @type Priority: Integer
        # @param IsDefaultPriority: 是否默认
        # @type IsDefaultPriority: Boolean
        # @param FlowParams: 流量参数
        # @type FlowParams: Array
        # @param MinReplicas: 最小副本数
        # @type MinReplicas: Integer
        # @param MaxReplicas: 最大副本数
        # @type MaxReplicas: Integer
        # @param RunId: 操作Id
        # @type RunId: String
        # @param Percent: 百分比
        # @type Percent: Integer
        # @param CurrentReplicas: 当前副本数
        # @type CurrentReplicas: Integer
        # @param Architecture: 架构类型
        # @type Architecture: String

        attr_accessor :VersionName, :FlowRatio, :Status, :CreatedTime, :UpdatedTime, :BuildId, :UploadType, :Remark, :UrlParam, :Priority, :IsDefaultPriority, :FlowParams, :MinReplicas, :MaxReplicas, :RunId, :Percent, :CurrentReplicas, :Architecture

        def initialize(versionname=nil, flowratio=nil, status=nil, createdtime=nil, updatedtime=nil, buildid=nil, uploadtype=nil, remark=nil, urlparam=nil, priority=nil, isdefaultpriority=nil, flowparams=nil, minreplicas=nil, maxreplicas=nil, runid=nil, percent=nil, currentreplicas=nil, architecture=nil)
          @VersionName = versionname
          @FlowRatio = flowratio
          @Status = status
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @BuildId = buildid
          @UploadType = uploadtype
          @Remark = remark
          @UrlParam = urlparam
          @Priority = priority
          @IsDefaultPriority = isdefaultpriority
          @FlowParams = flowparams
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @RunId = runid
          @Percent = percent
          @CurrentReplicas = currentreplicas
          @Architecture = architecture
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @FlowRatio = params['FlowRatio']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @BuildId = params['BuildId']
          @UploadType = params['UploadType']
          @Remark = params['Remark']
          unless params['UrlParam'].nil?
            @UrlParam = ObjectKV.new
            @UrlParam.deserialize(params['UrlParam'])
          end
          @Priority = params['Priority']
          @IsDefaultPriority = params['IsDefaultPriority']
          unless params['FlowParams'].nil?
            @FlowParams = []
            params['FlowParams'].each do |i|
              objectkvpriority_tmp = ObjectKVPriority.new
              objectkvpriority_tmp.deserialize(i)
              @FlowParams << objectkvpriority_tmp
            end
          end
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
          @RunId = params['RunId']
          @Percent = params['Percent']
          @CurrentReplicas = params['CurrentReplicas']
          @Architecture = params['Architecture']
        end
      end

      # 版本Pod实例信息
      class VersionPodInstance < TencentCloud::Common::AbstractModel
        # @param Webshell: 实例webshell链接
        # @type Webshell: String
        # @param PodId: 实例Id
        # @type PodId: String
        # @param Status: 实例状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :Webshell, :PodId, :Status, :CreateTime

        def initialize(webshell=nil, podid=nil, status=nil, createtime=nil)
          @Webshell = webshell
          @PodId = podid
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @Webshell = params['Webshell']
          @PodId = params['PodId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # 存储配置
      class VolumeConf < TencentCloud::Common::AbstractModel
        # @param Type: 存储类型
        # @type Type: String
        # @param BucketName: 对象存储桶名称
        # @type BucketName: String
        # @param Endpoint: 存储连接地址
        # @type Endpoint: String
        # @param KeyID: 存储连接用户密码
        # @type KeyID: String
        # @param DstPath: 存储挂载目的目录
        # @type DstPath: String
        # @param SrcPath: 存储挂载源目录
        # @type SrcPath: String

        attr_accessor :Type, :BucketName, :Endpoint, :KeyID, :DstPath, :SrcPath

        def initialize(type=nil, bucketname=nil, endpoint=nil, keyid=nil, dstpath=nil, srcpath=nil)
          @Type = type
          @BucketName = bucketname
          @Endpoint = endpoint
          @KeyID = keyid
          @DstPath = dstpath
          @SrcPath = srcpath
        end

        def deserialize(params)
          @Type = params['Type']
          @BucketName = params['BucketName']
          @Endpoint = params['Endpoint']
          @KeyID = params['KeyID']
          @DstPath = params['DstPath']
          @SrcPath = params['SrcPath']
        end
      end

      # 云托管服务 Vpc 配置
      class VpcConf < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param VpcCIDR: vpc 网段
        # @type VpcCIDR: String
        # @param SubnetId: subnet id
        # @type SubnetId: String
        # @param SubnetCIDR: subnet 网段
        # @type SubnetCIDR: String

        attr_accessor :VpcId, :VpcCIDR, :SubnetId, :SubnetCIDR

        def initialize(vpcid=nil, vpccidr=nil, subnetid=nil, subnetcidr=nil)
          @VpcId = vpcid
          @VpcCIDR = vpccidr
          @SubnetId = subnetid
          @SubnetCIDR = subnetcidr
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcCIDR = params['VpcCIDR']
          @SubnetId = params['SubnetId']
          @SubnetCIDR = params['SubnetCIDR']
        end
      end

    end
  end
end

