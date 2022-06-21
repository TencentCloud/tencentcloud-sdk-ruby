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

        attr_accessor :BaseImage, :EntryPoint, :RepoLanguage, :UploadFilename
        
        def initialize(baseimage=nil, entrypoint=nil, repolanguage=nil, uploadfilename=nil)
          @BaseImage = baseimage
          @EntryPoint = entrypoint
          @RepoLanguage = repolanguage
          @UploadFilename = uploadfilename
        end

        def deserialize(params)
          @BaseImage = params['BaseImage']
          @EntryPoint = params['EntryPoint']
          @RepoLanguage = params['RepoLanguage']
          @UploadFilename = params['UploadFilename']
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
        # @param PackageType: Trial,Standard,Professional,Enterprise
        # @type PackageType: String
        # @param Alias: 环境别名，要以a-z开头，不能包含 a-z,0-9,- 以外的字符
        # @type Alias: String
        # @param FreeQuota: 用户享有的免费额度级别，目前只能为“basic”，不传该字段或该字段为空，标识不享受免费额度。
        # @type FreeQuota: String
        # @param Flag: 订单标记。建议使用方统一转大小写之后再判断。
        # QuickStart：快速启动来源
        # Activity：活动来源
        # @type Flag: String
        # @param VpcId: 私有网络Id
        # @type VpcId: String
        # @param SubNetIds: 子网列表
        # @type SubNetIds: Array
        # @param ReqKey: 请求key 用于防重
        # @type ReqKey: String
        # @param Source: 来源：wechat | cloud
        # @type Source: String
        # @param Channel: 渠道：wechat | cloud
        # @type Channel: String

        attr_accessor :PackageType, :Alias, :FreeQuota, :Flag, :VpcId, :SubNetIds, :ReqKey, :Source, :Channel
        
        def initialize(packagetype=nil, _alias=nil, freequota=nil, flag=nil, vpcid=nil, subnetids=nil, reqkey=nil, source=nil, channel=nil)
          @PackageType = packagetype
          @Alias = _alias
          @FreeQuota = freequota
          @Flag = flag
          @VpcId = vpcid
          @SubNetIds = subnetids
          @ReqKey = reqkey
          @Source = source
          @Channel = channel
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
        end
      end

      # CreateCloudRunEnv返回参数结构体
      class CreateCloudRunEnvResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param TranId: 后付费订单号
        # @type TranId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param DeployInfo: 部署信息
        # @type DeployInfo: :class:`Tencentcloud::Tcbr.v20220217.models.DeployParam`
        # @param ServerConfig: 服务配置信息
        # @type ServerConfig: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseConfig`

        attr_accessor :EnvId, :ServerName, :DeployInfo, :ServerConfig
        
        def initialize(envid=nil, servername=nil, deployinfo=nil, serverconfig=nil)
          @EnvId = envid
          @ServerName = servername
          @DeployInfo = deployinfo
          @ServerConfig = serverconfig
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
        end
      end

      # CreateCloudRunServer返回参数结构体
      class CreateCloudRunServerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 一键部署任务Id，微信云托管，暂时用不到
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseInfo: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseInfo`
        # @param ServerConfig: 服务配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerConfig: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaseInfo, :ServerConfig, :RequestId
        
        def initialize(baseinfo=nil, serverconfig=nil, requestid=nil)
          @BaseInfo = baseinfo
          @ServerConfig = serverconfig
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRunServers请求参数结构体
      class DescribeCloudRunServersRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeCloudRunServers返回参数结构体
      class DescribeCloudRunServersResponse < TencentCloud::Common::AbstractModel
        # @param ServerList: 服务列表
        # @type ServerList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServerList, :RequestId
        
        def initialize(serverlist=nil, requestid=nil)
          @ServerList = serverlist
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvBaseInfo请求参数结构体
      class DescribeEnvBaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境 Id
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
        # @param EnvBaseInfo: 环境基础信息
        # @type EnvBaseInfo: :class:`Tencentcloud::Tcbr.v20220217.models.EnvBaseInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvBaseInfo, :RequestId
        
        def initialize(envbaseinfo=nil, requestid=nil)
          @EnvBaseInfo = envbaseinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvBaseInfo'].nil?
            @EnvBaseInfo = EnvBaseInfo.new
            @EnvBaseInfo.deserialize(params['EnvBaseInfo'])
          end
          @RequestId = params['RequestId']
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

        attr_accessor :EnvId, :PackageType, :VpcId, :CreateTime, :Alias, :Status, :Region, :EnvType
        
        def initialize(envid=nil, packagetype=nil, vpcid=nil, createtime=nil, _alias=nil, status=nil, region=nil, envtype=nil)
          @EnvId = envid
          @PackageType = packagetype
          @VpcId = vpcid
          @CreateTime = createtime
          @Alias = _alias
          @Status = status
          @Region = region
          @EnvType = envtype
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAutoDegrade: Boolean
        # @param EnvChannel: 环境渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvChannel: String
        # @param PayMode: 支付方式。包含以下取值：
        # <li> prepayment：预付费</li>
        # <li> postpaid：后付费</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param IsDefault: 是否为默认环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Boolean
        # @param Region: 环境所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param EnvType: 环境类型：baas, run, hosting, weda,tcbr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvType: String
        # @param Databases: 数据库列表
        # @type Databases: Array
        # @param Storages: 存储列表
        # @type Storages: Array
        # @param Functions: 函数列表
        # @type Functions: Array
        # @param LogServices: 云日志服务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogServices: Array
        # @param StaticStorages: 静态资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaticStorages: Array
        # @param Tags: 环境标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CustomLogServices: 自定义日志服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomLogServices: Array
        # @param PackageId: tcb产品套餐ID，参考DescribePackages接口的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageName: 套餐中文名称，参考DescribePackages接口的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 代码仓库信息
      class RepositoryInfo < TencentCloud::Common::AbstractModel
        # @param Source: git source
        # @type Source: String
        # @param Repo: 仓库名
        # @type Repo: String
        # @param Branch: 分之名
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

        attr_accessor :EnvId, :ServerName, :OpenAccessTypes, :Cpu, :Mem, :MinNum, :MaxNum, :PolicyDetails, :CustomLogs, :EnvParams, :InitialDelaySeconds, :CreateTime, :Port, :HasDockerfile, :Dockerfile, :BuildDir, :LogType, :LogSetId, :LogTopicId, :LogParseType
        
        def initialize(envid=nil, servername=nil, openaccesstypes=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, policydetails=nil, customlogs=nil, envparams=nil, initialdelayseconds=nil, createtime=nil, port=nil, hasdockerfile=nil, dockerfile=nil, builddir=nil, logtype=nil, logsetid=nil, logtopicid=nil, logparsetype=nil)
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

        attr_accessor :ServerName, :DefaultDomainName, :CustomDomainName, :Status, :UpdateTime
        
        def initialize(servername=nil, defaultdomainname=nil, customdomainname=nil, status=nil, updatetime=nil)
          @ServerName = servername
          @DefaultDomainName = defaultdomainname
          @CustomDomainName = customdomainname
          @Status = status
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ServerName = params['ServerName']
          @DefaultDomainName = params['DefaultDomainName']
          @CustomDomainName = params['CustomDomainName']
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
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

      # UpdateCloudRunServer请求参数结构体
      class UpdateCloudRunServerRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param ServerName: 服务名
        # @type ServerName: String
        # @param DeployInfo: 部署信息
        # @type DeployInfo: :class:`Tencentcloud::Tcbr.v20220217.models.DeployParam`
        # @param ServerConfig: 服务配置信息
        # @type ServerConfig: :class:`Tencentcloud::Tcbr.v20220217.models.ServerBaseConfig`

        attr_accessor :EnvId, :ServerName, :DeployInfo, :ServerConfig
        
        def initialize(envid=nil, servername=nil, deployinfo=nil, serverconfig=nil)
          @EnvId = envid
          @ServerName = servername
          @DeployInfo = deployinfo
          @ServerConfig = serverconfig
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
        end
      end

      # UpdateCloudRunServer返回参数结构体
      class UpdateCloudRunServerResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param TaskId: 一键部署任务Id，暂时用不到
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

