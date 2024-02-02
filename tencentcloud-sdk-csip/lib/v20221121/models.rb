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
  module Csip
    module V20221121
      # AddNewBindRoleUser请求参数结构体
      class AddNewBindRoleUserRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # AddNewBindRoleUser返回参数结构体
      class AddNewBindRoleUserResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0成功，其他失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 主机资产详情
      class AssetBaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc-id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc-name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param Os: 操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Os: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AccountNum: 账号数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountNum: Integer
        # @param PortNum: 端口数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortNum: Integer
        # @param ProcessNum: 进程数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessNum: Integer
        # @param SoftApplicationNum: 软件应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftApplicationNum: Integer
        # @param DatabaseNum: 数据库数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseNum: Integer
        # @param WebApplicationNum: Web应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebApplicationNum: Integer
        # @param ServiceNum: 服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNum: Integer
        # @param WebFrameworkNum: web框架数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebFrameworkNum: Integer
        # @param WebSiteNum: Web站点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSiteNum: Integer
        # @param JarPackageNum: Jar包数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JarPackageNum: Integer
        # @param StartServiceNum: 启动服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartServiceNum: Integer
        # @param ScheduledTaskNum: 计划任务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledTaskNum: Integer
        # @param EnvironmentVariableNum: 环境变量数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentVariableNum: Integer
        # @param KernelModuleNum: 内核模块数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KernelModuleNum: Integer
        # @param SystemInstallationPackageNum: 系统安装包数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemInstallationPackageNum: Integer
        # @param SurplusProtectDay: 剩余防护时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurplusProtectDay: Integer
        # @param CWPStatus: 客户端是否安装  1 已安装 0 未安装
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPStatus: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param ProtectLevel: 防护等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectLevel: String
        # @param ProtectedDay: 防护时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectedDay: Integer

        attr_accessor :VpcId, :VpcName, :AssetName, :Os, :PublicIp, :PrivateIp, :Region, :AssetType, :AssetId, :AccountNum, :PortNum, :ProcessNum, :SoftApplicationNum, :DatabaseNum, :WebApplicationNum, :ServiceNum, :WebFrameworkNum, :WebSiteNum, :JarPackageNum, :StartServiceNum, :ScheduledTaskNum, :EnvironmentVariableNum, :KernelModuleNum, :SystemInstallationPackageNum, :SurplusProtectDay, :CWPStatus, :Tag, :ProtectLevel, :ProtectedDay

        def initialize(vpcid=nil, vpcname=nil, assetname=nil, os=nil, publicip=nil, privateip=nil, region=nil, assettype=nil, assetid=nil, accountnum=nil, portnum=nil, processnum=nil, softapplicationnum=nil, databasenum=nil, webapplicationnum=nil, servicenum=nil, webframeworknum=nil, websitenum=nil, jarpackagenum=nil, startservicenum=nil, scheduledtasknum=nil, environmentvariablenum=nil, kernelmodulenum=nil, systeminstallationpackagenum=nil, surplusprotectday=nil, cwpstatus=nil, tag=nil, protectlevel=nil, protectedday=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @AssetName = assetname
          @Os = os
          @PublicIp = publicip
          @PrivateIp = privateip
          @Region = region
          @AssetType = assettype
          @AssetId = assetid
          @AccountNum = accountnum
          @PortNum = portnum
          @ProcessNum = processnum
          @SoftApplicationNum = softapplicationnum
          @DatabaseNum = databasenum
          @WebApplicationNum = webapplicationnum
          @ServiceNum = servicenum
          @WebFrameworkNum = webframeworknum
          @WebSiteNum = websitenum
          @JarPackageNum = jarpackagenum
          @StartServiceNum = startservicenum
          @ScheduledTaskNum = scheduledtasknum
          @EnvironmentVariableNum = environmentvariablenum
          @KernelModuleNum = kernelmodulenum
          @SystemInstallationPackageNum = systeminstallationpackagenum
          @SurplusProtectDay = surplusprotectday
          @CWPStatus = cwpstatus
          @Tag = tag
          @ProtectLevel = protectlevel
          @ProtectedDay = protectedday
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @AssetName = params['AssetName']
          @Os = params['Os']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Region = params['Region']
          @AssetType = params['AssetType']
          @AssetId = params['AssetId']
          @AccountNum = params['AccountNum']
          @PortNum = params['PortNum']
          @ProcessNum = params['ProcessNum']
          @SoftApplicationNum = params['SoftApplicationNum']
          @DatabaseNum = params['DatabaseNum']
          @WebApplicationNum = params['WebApplicationNum']
          @ServiceNum = params['ServiceNum']
          @WebFrameworkNum = params['WebFrameworkNum']
          @WebSiteNum = params['WebSiteNum']
          @JarPackageNum = params['JarPackageNum']
          @StartServiceNum = params['StartServiceNum']
          @ScheduledTaskNum = params['ScheduledTaskNum']
          @EnvironmentVariableNum = params['EnvironmentVariableNum']
          @KernelModuleNum = params['KernelModuleNum']
          @SystemInstallationPackageNum = params['SystemInstallationPackageNum']
          @SurplusProtectDay = params['SurplusProtectDay']
          @CWPStatus = params['CWPStatus']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @ProtectLevel = params['ProtectLevel']
          @ProtectedDay = params['ProtectedDay']
        end
      end

      # 集群pod列表
      class AssetClusterPod < TencentCloud::Common::AbstractModel
        # @param AppId: 租户id
        # @type AppId: Integer
        # @param Uin: 租户uin
        # @type Uin: String
        # @param Nick: 租户昵称
        # @type Nick: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AssetId: pod id
        # @type AssetId: String
        # @param AssetName: pod名称
        # @type AssetName: String
        # @param InstanceCreateTime: pod创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCreateTime: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ClusterId: 集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param MachineId: 主机id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineId: String
        # @param MachineName: 主机名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineName: String
        # @param PodIp: pod ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodIp: String
        # @param ServiceCount: 关联service数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCount: Integer
        # @param ContainerCount: 关联容器数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerCount: Integer
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param IsCore: 是否核心：1:核心，2:非核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer

        attr_accessor :AppId, :Uin, :Nick, :Region, :AssetId, :AssetName, :InstanceCreateTime, :Namespace, :Status, :ClusterId, :ClusterName, :MachineId, :MachineName, :PodIp, :ServiceCount, :ContainerCount, :PublicIp, :PrivateIp, :IsCore, :IsNewAsset

        def initialize(appid=nil, uin=nil, nick=nil, region=nil, assetid=nil, assetname=nil, instancecreatetime=nil, namespace=nil, status=nil, clusterid=nil, clustername=nil, machineid=nil, machinename=nil, podip=nil, servicecount=nil, containercount=nil, publicip=nil, privateip=nil, iscore=nil, isnewasset=nil)
          @AppId = appid
          @Uin = uin
          @Nick = nick
          @Region = region
          @AssetId = assetid
          @AssetName = assetname
          @InstanceCreateTime = instancecreatetime
          @Namespace = namespace
          @Status = status
          @ClusterId = clusterid
          @ClusterName = clustername
          @MachineId = machineid
          @MachineName = machinename
          @PodIp = podip
          @ServiceCount = servicecount
          @ContainerCount = containercount
          @PublicIp = publicip
          @PrivateIp = privateip
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Nick = params['Nick']
          @Region = params['Region']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @InstanceCreateTime = params['InstanceCreateTime']
          @Namespace = params['Namespace']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @MachineId = params['MachineId']
          @MachineName = params['MachineName']
          @PodIp = params['PodIp']
          @ServiceCount = params['ServiceCount']
          @ContainerCount = params['ContainerCount']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 资产扫描结构细节
      class AssetInfoDetail < TencentCloud::Common::AbstractModel
        # @param AppID: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: String
        # @param CVEId: CVE编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVEId: String
        # @param IsScan: 是扫描，0默认未扫描，1正在扫描，2扫描完成，3扫描出错
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsScan: Integer
        # @param InfluenceAsset: 影响资产数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InfluenceAsset: Integer
        # @param NotRepairAsset: 未修复资产数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotRepairAsset: Integer
        # @param NotProtectAsset: 未防护资产数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotProtectAsset: Integer
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskPercent: 任务百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskPercent: Integer
        # @param TaskTime: 任务时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTime: Integer
        # @param ScanTime: 扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTime: String

        attr_accessor :AppID, :CVEId, :IsScan, :InfluenceAsset, :NotRepairAsset, :NotProtectAsset, :TaskId, :TaskPercent, :TaskTime, :ScanTime

        def initialize(appid=nil, cveid=nil, isscan=nil, influenceasset=nil, notrepairasset=nil, notprotectasset=nil, taskid=nil, taskpercent=nil, tasktime=nil, scantime=nil)
          @AppID = appid
          @CVEId = cveid
          @IsScan = isscan
          @InfluenceAsset = influenceasset
          @NotRepairAsset = notrepairasset
          @NotProtectAsset = notprotectasset
          @TaskId = taskid
          @TaskPercent = taskpercent
          @TaskTime = tasktime
          @ScanTime = scantime
        end

        def deserialize(params)
          @AppID = params['AppID']
          @CVEId = params['CVEId']
          @IsScan = params['IsScan']
          @InfluenceAsset = params['InfluenceAsset']
          @NotRepairAsset = params['NotRepairAsset']
          @NotProtectAsset = params['NotProtectAsset']
          @TaskId = params['TaskId']
          @TaskPercent = params['TaskPercent']
          @TaskTime = params['TaskTime']
          @ScanTime = params['ScanTime']
        end
      end

      # 资产类型和实例类型的映射
      class AssetInstanceTypeMap < TencentCloud::Common::AbstractModel
        # @param Text: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param InstanceTypeList: 资产类型和实例类型映射关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeList: Array

        attr_accessor :Text, :Value, :InstanceTypeList

        def initialize(text=nil, value=nil, instancetypelist=nil)
          @Text = text
          @Value = value
          @InstanceTypeList = instancetypelist
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
          unless params['InstanceTypeList'].nil?
            @InstanceTypeList = []
            params['InstanceTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeList << filterdataobject_tmp
            end
          end
        end
      end

      # 安全中心资产标签
      class AssetTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的key值,可以是字母、数字、下划线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签的vale值,可以是字母、数字、下划线
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

      # 资产视角配置风险
      class AssetViewCFGRisk < TencentCloud::Common::AbstractModel
        # @param Id: 唯一id
        # @type Id: String
        # @param CFGName: 配置名
        # @type CFGName: String
        # @param CheckType: 检查类型
        # @type CheckType: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级
        # @type Level: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param From: 来源
        # @type From: String
        # @param Status: 状态
        # @type Status: Integer
        # @param CFGSTD: -
        # @type CFGSTD: String
        # @param CFGDescribe: 配置详情
        # @type CFGDescribe: String
        # @param CFGFix: 修复建议
        # @type CFGFix: String
        # @param CFGHelpURL: 帮助文档链接
        # @type CFGHelpURL: String
        # @param Index: 前端使用索引
        # @type Index: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String

        attr_accessor :Id, :CFGName, :CheckType, :InstanceId, :InstanceName, :InstanceType, :AffectAsset, :Level, :FirstTime, :RecentTime, :From, :Status, :CFGSTD, :CFGDescribe, :CFGFix, :CFGHelpURL, :Index, :AppId, :Nick, :Uin

        def initialize(id=nil, cfgname=nil, checktype=nil, instanceid=nil, instancename=nil, instancetype=nil, affectasset=nil, level=nil, firsttime=nil, recenttime=nil, from=nil, status=nil, cfgstd=nil, cfgdescribe=nil, cfgfix=nil, cfghelpurl=nil, index=nil, appid=nil, nick=nil, uin=nil)
          @Id = id
          @CFGName = cfgname
          @CheckType = checktype
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @AffectAsset = affectasset
          @Level = level
          @FirstTime = firsttime
          @RecentTime = recenttime
          @From = from
          @Status = status
          @CFGSTD = cfgstd
          @CFGDescribe = cfgdescribe
          @CFGFix = cfgfix
          @CFGHelpURL = cfghelpurl
          @Index = index
          @AppId = appid
          @Nick = nick
          @Uin = uin
        end

        def deserialize(params)
          @Id = params['Id']
          @CFGName = params['CFGName']
          @CheckType = params['CheckType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @FirstTime = params['FirstTime']
          @RecentTime = params['RecentTime']
          @From = params['From']
          @Status = params['Status']
          @CFGSTD = params['CFGSTD']
          @CFGDescribe = params['CFGDescribe']
          @CFGFix = params['CFGFix']
          @CFGHelpURL = params['CFGHelpURL']
          @Index = params['Index']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
        end
      end

      # 资产视角的端口风险对象
      class AssetViewPortRisk < TencentCloud::Common::AbstractModel
        # @param Port: 端口
        # @type Port: Integer
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级
        # @type Level: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Suggestion: 处置建议,0保持现状、1限制访问、2封禁端口
        # @type Suggestion: Integer
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 风险ID
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param From: 识别来源，详细看枚举返回。
        # @type From: String

        attr_accessor :Port, :AffectAsset, :Level, :InstanceType, :Protocol, :Component, :Service, :RecentTime, :FirstTime, :Suggestion, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :From

        def initialize(port=nil, affectasset=nil, level=nil, instancetype=nil, protocol=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, suggestion=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, from=nil)
          @Port = port
          @AffectAsset = affectasset
          @Level = level
          @InstanceType = instancetype
          @Protocol = protocol
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Suggestion = suggestion
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @From = from
        end

        def deserialize(params)
          @Port = params['Port']
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @InstanceType = params['InstanceType']
          @Protocol = params['Protocol']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Suggestion = params['Suggestion']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @From = params['From']
        end
      end

      # 资产视角的漏洞风险对象
      class AssetViewVULRisk < TencentCloud::Common::AbstractModel
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级
        # @type Level: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 风险ID
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param Port: 端口
        # @type Port: String
        # @param Describe: 漏洞描述
        # @type Describe: String
        # @param AppName: 漏洞影响组件
        # @type AppName: String
        # @param References: 技术参考
        # @type References: String
        # @param AppVersion: 漏洞影响版本
        # @type AppVersion: String
        # @param VULURL: 风险点
        # @type VULURL: String
        # @param VULName: 漏洞名称
        # @type VULName: String
        # @param CVE: cve
        # @type CVE: String
        # @param Fix: 修复方案
        # @type Fix: String
        # @param POCId: pocid
        # @type POCId: String
        # @param From: 扫描来源
        # @type From: String
        # @param CWPVersion: 主机版本
        # @type CWPVersion: Integer
        # @param IsSupportRepair: 是否支持修复
        # @type IsSupportRepair: Boolean
        # @param IsSupportDetect: 是否支持扫描
        # @type IsSupportDetect: Boolean
        # @param InstanceUUID: 实例uuid
        # @type InstanceUUID: String
        # @param Payload: 攻击载荷
        # @type Payload: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EMGCVulType: Integer

        attr_accessor :AffectAsset, :Level, :InstanceType, :Component, :Service, :RecentTime, :FirstTime, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :VULType, :Port, :Describe, :AppName, :References, :AppVersion, :VULURL, :VULName, :CVE, :Fix, :POCId, :From, :CWPVersion, :IsSupportRepair, :IsSupportDetect, :InstanceUUID, :Payload, :EMGCVulType

        def initialize(affectasset=nil, level=nil, instancetype=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, vultype=nil, port=nil, describe=nil, appname=nil, references=nil, appversion=nil, vulurl=nil, vulname=nil, cve=nil, fix=nil, pocid=nil, from=nil, cwpversion=nil, issupportrepair=nil, issupportdetect=nil, instanceuuid=nil, payload=nil, emgcvultype=nil)
          @AffectAsset = affectasset
          @Level = level
          @InstanceType = instancetype
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @VULType = vultype
          @Port = port
          @Describe = describe
          @AppName = appname
          @References = references
          @AppVersion = appversion
          @VULURL = vulurl
          @VULName = vulname
          @CVE = cve
          @Fix = fix
          @POCId = pocid
          @From = from
          @CWPVersion = cwpversion
          @IsSupportRepair = issupportrepair
          @IsSupportDetect = issupportdetect
          @InstanceUUID = instanceuuid
          @Payload = payload
          @EMGCVulType = emgcvultype
        end

        def deserialize(params)
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @InstanceType = params['InstanceType']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @VULType = params['VULType']
          @Port = params['Port']
          @Describe = params['Describe']
          @AppName = params['AppName']
          @References = params['References']
          @AppVersion = params['AppVersion']
          @VULURL = params['VULURL']
          @VULName = params['VULName']
          @CVE = params['CVE']
          @Fix = params['Fix']
          @POCId = params['POCId']
          @From = params['From']
          @CWPVersion = params['CWPVersion']
          @IsSupportRepair = params['IsSupportRepair']
          @IsSupportDetect = params['IsSupportDetect']
          @InstanceUUID = params['InstanceUUID']
          @Payload = params['Payload']
          @EMGCVulType = params['EMGCVulType']
        end
      end

      # 资产视角的弱口令风险
      class AssetViewWeakPassRisk < TencentCloud::Common::AbstractModel
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级
        # @type Level: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 资产唯一id
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param PasswordType: 弱口令类型
        # @type PasswordType: String
        # @param From: 来源
        # @type From: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param VULURL: 漏洞url
        # @type VULURL: String
        # @param Fix: 修复建议
        # @type Fix: String
        # @param Payload: 负载
        # @type Payload: String

        attr_accessor :AffectAsset, :Level, :InstanceType, :Component, :Service, :RecentTime, :FirstTime, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :PasswordType, :From, :VULType, :VULURL, :Fix, :Payload

        def initialize(affectasset=nil, level=nil, instancetype=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, passwordtype=nil, from=nil, vultype=nil, vulurl=nil, fix=nil, payload=nil)
          @AffectAsset = affectasset
          @Level = level
          @InstanceType = instancetype
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @PasswordType = passwordtype
          @From = from
          @VULType = vultype
          @VULURL = vulurl
          @Fix = fix
          @Payload = payload
        end

        def deserialize(params)
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @InstanceType = params['InstanceType']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @PasswordType = params['PasswordType']
          @From = params['From']
          @VULType = params['VULType']
          @VULURL = params['VULURL']
          @Fix = params['Fix']
          @Payload = params['Payload']
        end
      end

      # 漏洞详细信息
      class BugInfoDetail < TencentCloud::Common::AbstractModel
        # @param Id: 漏洞编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param PatchId: 漏洞对应pocId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PatchId: String
        # @param VULName: 漏洞名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULName: String
        # @param Level: 漏洞严重性：high,middle，low，info
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param CVSSScore: cvss评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSSScore: String
        # @param CVEId: cve编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVEId: String
        # @param Tag: 漏洞标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param VULCategory: 漏洞种类，1:web应用，2:系统组件漏洞，3:配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULCategory: Integer
        # @param ImpactOs: 漏洞影响系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactOs: String
        # @param ImpactCOMPENT: 漏洞影响组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactCOMPENT: String
        # @param ImpactVersion: 漏洞影响版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactVersion: String
        # @param Reference: 链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: String
        # @param VULDescribe: 漏洞描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULDescribe: String
        # @param Fix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fix: String
        # @param ProSupport: 产品支持状态，实时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProSupport: Integer
        # @param IsPublish: 是否公开，0为未发布，1为发布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPublish: Integer
        # @param ReleaseTime: 释放时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param SubCategory: 漏洞子类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubCategory: String

        attr_accessor :Id, :PatchId, :VULName, :Level, :CVSSScore, :CVEId, :Tag, :VULCategory, :ImpactOs, :ImpactCOMPENT, :ImpactVersion, :Reference, :VULDescribe, :Fix, :ProSupport, :IsPublish, :ReleaseTime, :CreateTime, :UpdateTime, :SubCategory

        def initialize(id=nil, patchid=nil, vulname=nil, level=nil, cvssscore=nil, cveid=nil, tag=nil, vulcategory=nil, impactos=nil, impactcompent=nil, impactversion=nil, reference=nil, vuldescribe=nil, fix=nil, prosupport=nil, ispublish=nil, releasetime=nil, createtime=nil, updatetime=nil, subcategory=nil)
          @Id = id
          @PatchId = patchid
          @VULName = vulname
          @Level = level
          @CVSSScore = cvssscore
          @CVEId = cveid
          @Tag = tag
          @VULCategory = vulcategory
          @ImpactOs = impactos
          @ImpactCOMPENT = impactcompent
          @ImpactVersion = impactversion
          @Reference = reference
          @VULDescribe = vuldescribe
          @Fix = fix
          @ProSupport = prosupport
          @IsPublish = ispublish
          @ReleaseTime = releasetime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @SubCategory = subcategory
        end

        def deserialize(params)
          @Id = params['Id']
          @PatchId = params['PatchId']
          @VULName = params['VULName']
          @Level = params['Level']
          @CVSSScore = params['CVSSScore']
          @CVEId = params['CVEId']
          @Tag = params['Tag']
          @VULCategory = params['VULCategory']
          @ImpactOs = params['ImpactOs']
          @ImpactCOMPENT = params['ImpactCOMPENT']
          @ImpactVersion = params['ImpactVersion']
          @Reference = params['Reference']
          @VULDescribe = params['VULDescribe']
          @Fix = params['Fix']
          @ProSupport = params['ProSupport']
          @IsPublish = params['IsPublish']
          @ReleaseTime = params['ReleaseTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @SubCategory = params['SubCategory']
        end
      end

      # 主机资产信息
      class CVMAssetVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param CWPStatus: 防护状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 私网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc 名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AppId: appid信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param AvailableArea: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableArea: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param SubnetName: 子网名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetName: String
        # @param InstanceUuid: uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceUuid: String
        # @param InstanceQUuid: qquid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceQUuid: String
        # @param OsName: os名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsName: String
        # @param PartitionCount: 分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionCount: Integer
        # @param CPUInfo: cpu信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPUInfo: String
        # @param CPUSize: cpu大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPUSize: Integer
        # @param CPULoad: cpu负载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPULoad: String
        # @param MemorySize: 内存大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemorySize: String
        # @param MemoryLoad: 内存负载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryLoad: String
        # @param DiskSize: 硬盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: String
        # @param DiskLoad: 硬盘负载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskLoad: String
        # @param AccountCount: 账号数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountCount: String
        # @param ProcessCount: 进程数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessCount: String
        # @param AppCount: 软件应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppCount: String
        # @param PortCount: 监听端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortCount: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intercept: Integer
        # @param InBandwidth: 入向峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InBandwidth: String
        # @param OutBandwidth: 出向峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutBandwidth: String
        # @param InFlow: 入向累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InFlow: String
        # @param OutFlow: 出向累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param NetWorkOut: 恶意主动外联
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetWorkOut: Integer
        # @param PortRisk: 端口风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param MemberId: memberId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param Os: os全称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Os: String
        # @param RiskExposure: 风险服务暴露
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskExposure: Integer
        # @param BASAgentStatus: 模拟攻击工具状态。0代表未安装，1代表已安装，2代表已离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BASAgentStatus: Integer
        # @param IsNewAsset: 1新资产；0 非新资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param CVMAgentStatus: 0 未安装  1安装 2:安装中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVMAgentStatus: Integer
        # @param CVMStatus: 1:开启 0:未开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVMStatus: Integer
        # @param DefenseModel: 1:客户端已安装 0：未安装 2: Agentless
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseModel: Integer
        # @param TatStatus: 1:已安装 0:未安装
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TatStatus: Integer
        # @param CpuTrend: cpu趋势图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuTrend: Array
        # @param MemoryTrend: 内存趋势图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryTrend: Array
        # @param AgentStatus: 1:agent在线 0:agent离线 2:主机离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentStatus: Integer
        # @param CloseDefenseCount: 本月防护关闭次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloseDefenseCount: Integer
        # @param InstanceState: 运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param SecurityGroupIds: 安全组数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIds: Array
        # @param AgentMemRss: 物理内存占用KB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentMemRss: Integer
        # @param AgentCpuPer: CPU使用率百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentCpuPer: Float

        attr_accessor :AssetId, :AssetName, :AssetType, :Region, :CWPStatus, :AssetCreateTime, :PublicIp, :PrivateIp, :VpcId, :VpcName, :AppId, :Uin, :NickName, :AvailableArea, :IsCore, :SubnetId, :SubnetName, :InstanceUuid, :InstanceQUuid, :OsName, :PartitionCount, :CPUInfo, :CPUSize, :CPULoad, :MemorySize, :MemoryLoad, :DiskSize, :DiskLoad, :AccountCount, :ProcessCount, :AppCount, :PortCount, :Attack, :Access, :Intercept, :InBandwidth, :OutBandwidth, :InFlow, :OutFlow, :LastScanTime, :NetWorkOut, :PortRisk, :VulnerabilityRisk, :ConfigurationRisk, :ScanTask, :Tag, :MemberId, :Os, :RiskExposure, :BASAgentStatus, :IsNewAsset, :CVMAgentStatus, :CVMStatus, :DefenseModel, :TatStatus, :CpuTrend, :MemoryTrend, :AgentStatus, :CloseDefenseCount, :InstanceState, :SecurityGroupIds, :AgentMemRss, :AgentCpuPer

        def initialize(assetid=nil, assetname=nil, assettype=nil, region=nil, cwpstatus=nil, assetcreatetime=nil, publicip=nil, privateip=nil, vpcid=nil, vpcname=nil, appid=nil, uin=nil, nickname=nil, availablearea=nil, iscore=nil, subnetid=nil, subnetname=nil, instanceuuid=nil, instancequuid=nil, osname=nil, partitioncount=nil, cpuinfo=nil, cpusize=nil, cpuload=nil, memorysize=nil, memoryload=nil, disksize=nil, diskload=nil, accountcount=nil, processcount=nil, appcount=nil, portcount=nil, attack=nil, access=nil, intercept=nil, inbandwidth=nil, outbandwidth=nil, inflow=nil, outflow=nil, lastscantime=nil, networkout=nil, portrisk=nil, vulnerabilityrisk=nil, configurationrisk=nil, scantask=nil, tag=nil, memberid=nil, os=nil, riskexposure=nil, basagentstatus=nil, isnewasset=nil, cvmagentstatus=nil, cvmstatus=nil, defensemodel=nil, tatstatus=nil, cputrend=nil, memorytrend=nil, agentstatus=nil, closedefensecount=nil, instancestate=nil, securitygroupids=nil, agentmemrss=nil, agentcpuper=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @CWPStatus = cwpstatus
          @AssetCreateTime = assetcreatetime
          @PublicIp = publicip
          @PrivateIp = privateip
          @VpcId = vpcid
          @VpcName = vpcname
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @AvailableArea = availablearea
          @IsCore = iscore
          @SubnetId = subnetid
          @SubnetName = subnetname
          @InstanceUuid = instanceuuid
          @InstanceQUuid = instancequuid
          @OsName = osname
          @PartitionCount = partitioncount
          @CPUInfo = cpuinfo
          @CPUSize = cpusize
          @CPULoad = cpuload
          @MemorySize = memorysize
          @MemoryLoad = memoryload
          @DiskSize = disksize
          @DiskLoad = diskload
          @AccountCount = accountcount
          @ProcessCount = processcount
          @AppCount = appcount
          @PortCount = portcount
          @Attack = attack
          @Access = access
          @Intercept = intercept
          @InBandwidth = inbandwidth
          @OutBandwidth = outbandwidth
          @InFlow = inflow
          @OutFlow = outflow
          @LastScanTime = lastscantime
          @NetWorkOut = networkout
          @PortRisk = portrisk
          @VulnerabilityRisk = vulnerabilityrisk
          @ConfigurationRisk = configurationrisk
          @ScanTask = scantask
          @Tag = tag
          @MemberId = memberid
          @Os = os
          @RiskExposure = riskexposure
          @BASAgentStatus = basagentstatus
          @IsNewAsset = isnewasset
          @CVMAgentStatus = cvmagentstatus
          @CVMStatus = cvmstatus
          @DefenseModel = defensemodel
          @TatStatus = tatstatus
          @CpuTrend = cputrend
          @MemoryTrend = memorytrend
          @AgentStatus = agentstatus
          @CloseDefenseCount = closedefensecount
          @InstanceState = instancestate
          @SecurityGroupIds = securitygroupids
          @AgentMemRss = agentmemrss
          @AgentCpuPer = agentcpuper
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @CWPStatus = params['CWPStatus']
          @AssetCreateTime = params['AssetCreateTime']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @AvailableArea = params['AvailableArea']
          @IsCore = params['IsCore']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @InstanceUuid = params['InstanceUuid']
          @InstanceQUuid = params['InstanceQUuid']
          @OsName = params['OsName']
          @PartitionCount = params['PartitionCount']
          @CPUInfo = params['CPUInfo']
          @CPUSize = params['CPUSize']
          @CPULoad = params['CPULoad']
          @MemorySize = params['MemorySize']
          @MemoryLoad = params['MemoryLoad']
          @DiskSize = params['DiskSize']
          @DiskLoad = params['DiskLoad']
          @AccountCount = params['AccountCount']
          @ProcessCount = params['ProcessCount']
          @AppCount = params['AppCount']
          @PortCount = params['PortCount']
          @Attack = params['Attack']
          @Access = params['Access']
          @Intercept = params['Intercept']
          @InBandwidth = params['InBandwidth']
          @OutBandwidth = params['OutBandwidth']
          @InFlow = params['InFlow']
          @OutFlow = params['OutFlow']
          @LastScanTime = params['LastScanTime']
          @NetWorkOut = params['NetWorkOut']
          @PortRisk = params['PortRisk']
          @VulnerabilityRisk = params['VulnerabilityRisk']
          @ConfigurationRisk = params['ConfigurationRisk']
          @ScanTask = params['ScanTask']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @MemberId = params['MemberId']
          @Os = params['Os']
          @RiskExposure = params['RiskExposure']
          @BASAgentStatus = params['BASAgentStatus']
          @IsNewAsset = params['IsNewAsset']
          @CVMAgentStatus = params['CVMAgentStatus']
          @CVMStatus = params['CVMStatus']
          @DefenseModel = params['DefenseModel']
          @TatStatus = params['TatStatus']
          unless params['CpuTrend'].nil?
            @CpuTrend = []
            params['CpuTrend'].each do |i|
              element_tmp = Element.new
              element_tmp.deserialize(i)
              @CpuTrend << element_tmp
            end
          end
          unless params['MemoryTrend'].nil?
            @MemoryTrend = []
            params['MemoryTrend'].each do |i|
              element_tmp = Element.new
              element_tmp.deserialize(i)
              @MemoryTrend << element_tmp
            end
          end
          @AgentStatus = params['AgentStatus']
          @CloseDefenseCount = params['CloseDefenseCount']
          @InstanceState = params['InstanceState']
          @SecurityGroupIds = params['SecurityGroupIds']
          @AgentMemRss = params['AgentMemRss']
          @AgentCpuPer = params['AgentCpuPer']
        end
      end

      # clb实例和监听器信息
      class ClbListenerListInfo < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param LoadBalancerId: 负载均衡Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerName: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Vip: 负载均衡ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param VPort: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VPort: Integer
        # @param Zone: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param NumericalVpcId: 私有网络id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumericalVpcId: Integer
        # @param LoadBalancerType: 负载均衡类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param Domain: 监听器域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param LoadBalancerDomain: 负载均衡域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerDomain: String

        attr_accessor :ListenerId, :ListenerName, :LoadBalancerId, :LoadBalancerName, :Protocol, :Region, :Vip, :VPort, :Zone, :NumericalVpcId, :LoadBalancerType, :Domain, :LoadBalancerDomain

        def initialize(listenerid=nil, listenername=nil, loadbalancerid=nil, loadbalancername=nil, protocol=nil, region=nil, vip=nil, vport=nil, zone=nil, numericalvpcid=nil, loadbalancertype=nil, domain=nil, loadbalancerdomain=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Protocol = protocol
          @Region = region
          @Vip = vip
          @VPort = vport
          @Zone = zone
          @NumericalVpcId = numericalvpcid
          @LoadBalancerType = loadbalancertype
          @Domain = domain
          @LoadBalancerDomain = loadbalancerdomain
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @Protocol = params['Protocol']
          @Region = params['Region']
          @Vip = params['Vip']
          @VPort = params['VPort']
          @Zone = params['Zone']
          @NumericalVpcId = params['NumericalVpcId']
          @LoadBalancerType = params['LoadBalancerType']
          @Domain = params['Domain']
          @LoadBalancerDomain = params['LoadBalancerDomain']
        end
      end

      # CreateDomainAndIp请求参数结构体
      class CreateDomainAndIpRequest < TencentCloud::Common::AbstractModel
        # @param Content: 公网IP/域名
        # @type Content: Array
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Content, :Tags

        def initialize(content=nil, tags=nil)
          @Content = content
          @Tags = tags
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # CreateDomainAndIp返回参数结构体
      class CreateDomainAndIpResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回创建成功的数量
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateRiskCenterScanTask请求参数结构体
      class CreateRiskCenterScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ScanAssetType: 0-全扫，1-指定资产扫，2-排除资产扫，3-手动填写扫；1和2则Assets字段必填，3则SelfDefiningAssets必填
        # @type ScanAssetType: Integer
        # @param ScanItem: 扫描项目；port/poc/weakpass/webcontent/configrisk/exposedserver
        # @type ScanItem: Array
        # @param ScanPlanType: 0-周期任务,1-立即扫描,2-定时扫描,3-自定义；0,2,3则ScanPlanContent必填
        # @type ScanPlanType: Integer
        # @param Assets: 扫描资产信息列表
        # @type Assets: Array
        # @param ScanPlanContent: 扫描计划详情
        # @type ScanPlanContent: String
        # @param SelfDefiningAssets: ip/域名/url数组
        # @type SelfDefiningAssets: Array
        # @param ScanFrom: 请求发起源，默认为vss表示漏洞扫描服务，云安全中心的用户请填充csip
        # @type ScanFrom: String
        # @param TaskAdvanceCFG: 高级配置
        # @type TaskAdvanceCFG: :class:`Tencentcloud::Csip.v20221121.models.TaskAdvanceCFG`
        # @param TaskMode: 体检模式，0-标准模式，1-快速模式，2-高级模式，默认标准模式
        # @type TaskMode: Integer
        # @param Tags: 资产标签
        # @type Tags: :class:`Tencentcloud::Csip.v20221121.models.AssetTag`

        attr_accessor :TaskName, :ScanAssetType, :ScanItem, :ScanPlanType, :Assets, :ScanPlanContent, :SelfDefiningAssets, :ScanFrom, :TaskAdvanceCFG, :TaskMode, :Tags

        def initialize(taskname=nil, scanassettype=nil, scanitem=nil, scanplantype=nil, assets=nil, scanplancontent=nil, selfdefiningassets=nil, scanfrom=nil, taskadvancecfg=nil, taskmode=nil, tags=nil)
          @TaskName = taskname
          @ScanAssetType = scanassettype
          @ScanItem = scanitem
          @ScanPlanType = scanplantype
          @Assets = assets
          @ScanPlanContent = scanplancontent
          @SelfDefiningAssets = selfdefiningassets
          @ScanFrom = scanfrom
          @TaskAdvanceCFG = taskadvancecfg
          @TaskMode = taskmode
          @Tags = tags
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @ScanAssetType = params['ScanAssetType']
          @ScanItem = params['ScanItem']
          @ScanPlanType = params['ScanPlanType']
          unless params['Assets'].nil?
            @Assets = []
            params['Assets'].each do |i|
              taskassetobject_tmp = TaskAssetObject.new
              taskassetobject_tmp.deserialize(i)
              @Assets << taskassetobject_tmp
            end
          end
          @ScanPlanContent = params['ScanPlanContent']
          @SelfDefiningAssets = params['SelfDefiningAssets']
          @ScanFrom = params['ScanFrom']
          unless params['TaskAdvanceCFG'].nil?
            @TaskAdvanceCFG = TaskAdvanceCFG.new
            @TaskAdvanceCFG.deserialize(params['TaskAdvanceCFG'])
          end
          @TaskMode = params['TaskMode']
          unless params['Tags'].nil?
            @Tags = AssetTag.new
            @Tags.deserialize(params['Tags'])
          end
        end
      end

      # CreateRiskCenterScanTask返回参数结构体
      class CreateRiskCenterScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Status: 0,任务创建成功；小于0失败；-1为存在资产未认证
        # @type Status: Integer
        # @param UnAuthAsset: 未认证资产列表
        # @type UnAuthAsset: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :UnAuthAsset, :RequestId

        def initialize(taskid=nil, status=nil, unauthasset=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @UnAuthAsset = unauthasset
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @UnAuthAsset = params['UnAuthAsset']
          @RequestId = params['RequestId']
        end
      end

      # db资产输出字段
      class DBAssetVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param VpcId: vpcid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param ScanTask: 扫描任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param AppId: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 昵称别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param PrivateIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产: 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer

        attr_accessor :AssetId, :AssetName, :AssetType, :VpcId, :VpcName, :Region, :Domain, :AssetCreateTime, :LastScanTime, :ConfigurationRisk, :Attack, :Access, :ScanTask, :AppId, :Uin, :NickName, :Port, :Tag, :PrivateIp, :PublicIp, :Status, :IsCore, :IsNewAsset

        def initialize(assetid=nil, assetname=nil, assettype=nil, vpcid=nil, vpcname=nil, region=nil, domain=nil, assetcreatetime=nil, lastscantime=nil, configurationrisk=nil, attack=nil, access=nil, scantask=nil, appid=nil, uin=nil, nickname=nil, port=nil, tag=nil, privateip=nil, publicip=nil, status=nil, iscore=nil, isnewasset=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @VpcId = vpcid
          @VpcName = vpcname
          @Region = region
          @Domain = domain
          @AssetCreateTime = assetcreatetime
          @LastScanTime = lastscantime
          @ConfigurationRisk = configurationrisk
          @Attack = attack
          @Access = access
          @ScanTask = scantask
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @Port = port
          @Tag = tag
          @PrivateIp = privateip
          @PublicIp = publicip
          @Status = status
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @Region = params['Region']
          @Domain = params['Domain']
          @AssetCreateTime = params['AssetCreateTime']
          @LastScanTime = params['LastScanTime']
          @ConfigurationRisk = params['ConfigurationRisk']
          @Attack = params['Attack']
          @Access = params['Access']
          @ScanTask = params['ScanTask']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @Port = params['Port']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @Status = params['Status']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 漏洞和资产信息
      class DataSearchBug < TencentCloud::Common::AbstractModel
        # @param StateCode: 返回查询状态
        # @type StateCode: String
        # @param DataBug: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBug: Array
        # @param DataAsset: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataAsset: Array
        # @param VSSScan: true支持扫描。false不支持扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VSSScan: Boolean
        # @param CWPScan: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPScan: String
        # @param CFWPatch: 1支持虚拟补丁，0或空不支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWPatch: String
        # @param WafPatch: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WafPatch: Integer
        # @param CWPFix: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPFix: Integer

        attr_accessor :StateCode, :DataBug, :DataAsset, :VSSScan, :CWPScan, :CFWPatch, :WafPatch, :CWPFix

        def initialize(statecode=nil, databug=nil, dataasset=nil, vssscan=nil, cwpscan=nil, cfwpatch=nil, wafpatch=nil, cwpfix=nil)
          @StateCode = statecode
          @DataBug = databug
          @DataAsset = dataasset
          @VSSScan = vssscan
          @CWPScan = cwpscan
          @CFWPatch = cfwpatch
          @WafPatch = wafpatch
          @CWPFix = cwpfix
        end

        def deserialize(params)
          @StateCode = params['StateCode']
          unless params['DataBug'].nil?
            @DataBug = []
            params['DataBug'].each do |i|
              buginfodetail_tmp = BugInfoDetail.new
              buginfodetail_tmp.deserialize(i)
              @DataBug << buginfodetail_tmp
            end
          end
          unless params['DataAsset'].nil?
            @DataAsset = []
            params['DataAsset'].each do |i|
              assetinfodetail_tmp = AssetInfoDetail.new
              assetinfodetail_tmp.deserialize(i)
              @DataAsset << assetinfodetail_tmp
            end
          end
          @VSSScan = params['VSSScan']
          @CWPScan = params['CWPScan']
          @CFWPatch = params['CFWPatch']
          @WafPatch = params['WafPatch']
          @CWPFix = params['CWPFix']
        end
      end

      # db资产详情
      class DbAssetInfo < TencentCloud::Common::AbstractModel
        # @param CFWStatus: 云防状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWStatus: Integer
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param VpcName: vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 私网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param VpcId: vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param CFWProtectLevel: 云防保护版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWProtectLevel: Integer
        # @param Tag: tag信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array

        attr_accessor :CFWStatus, :AssetId, :VpcName, :AssetType, :PublicIp, :PrivateIp, :Region, :VpcId, :AssetName, :CFWProtectLevel, :Tag

        def initialize(cfwstatus=nil, assetid=nil, vpcname=nil, assettype=nil, publicip=nil, privateip=nil, region=nil, vpcid=nil, assetname=nil, cfwprotectlevel=nil, tag=nil)
          @CFWStatus = cfwstatus
          @AssetId = assetid
          @VpcName = vpcname
          @AssetType = assettype
          @PublicIp = publicip
          @PrivateIp = privateip
          @Region = region
          @VpcId = vpcid
          @AssetName = assetname
          @CFWProtectLevel = cfwprotectlevel
          @Tag = tag
        end

        def deserialize(params)
          @CFWStatus = params['CFWStatus']
          @AssetId = params['AssetId']
          @VpcName = params['VpcName']
          @AssetType = params['AssetType']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @AssetName = params['AssetName']
          @CFWProtectLevel = params['CFWProtectLevel']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
        end
      end

      # DeleteDomainAndIp请求参数结构体
      class DeleteDomainAndIpRequest < TencentCloud::Common::AbstractModel
        # @param Content: -
        # @type Content: Array
        # @param RetainPath: 是否保留路径配置，1：保留，其他：不保留，默认不传为不保留
        # @type RetainPath: Integer
        # @param IgnoreAsset: 以后是否忽略该资产，，1：忽略，其他：不忽略，默认不传为忽略
        # @type IgnoreAsset: Integer
        # @param Tags: 资产标签
        # @type Tags: Array
        # @param Type: 删除类型，取值： ALL， 删除全部，将直接忽略Content的内容；                                           其他值 ,非全部，则Centent必填，  默认为其他值。
        # @type Type: String

        attr_accessor :Content, :RetainPath, :IgnoreAsset, :Tags, :Type

        def initialize(content=nil, retainpath=nil, ignoreasset=nil, tags=nil, type=nil)
          @Content = content
          @RetainPath = retainpath
          @IgnoreAsset = ignoreasset
          @Tags = tags
          @Type = type
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              publicipdomainlistkey_tmp = PublicIpDomainListKey.new
              publicipdomainlistkey_tmp.deserialize(i)
              @Content << publicipdomainlistkey_tmp
            end
          end
          @RetainPath = params['RetainPath']
          @IgnoreAsset = params['IgnoreAsset']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # DeleteDomainAndIp返回参数结构体
      class DeleteDomainAndIpResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除的资产数量
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRiskScanTask请求参数结构体
      class DeleteRiskScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 任务id 列表
        # @type TaskIdList: Array

        attr_accessor :TaskIdList

        def initialize(taskidlist=nil)
          @TaskIdList = taskidlist
        end

        def deserialize(params)
          unless params['TaskIdList'].nil?
            @TaskIdList = []
            params['TaskIdList'].each do |i|
              taskidlistkey_tmp = TaskIdListKey.new
              taskidlistkey_tmp.deserialize(i)
              @TaskIdList << taskidlistkey_tmp
            end
          end
        end
      end

      # DeleteRiskScanTask返回参数结构体
      class DeleteRiskScanTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCVMAssetInfo请求参数结构体
      class DescribeCVMAssetInfoRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: -
        # @type AssetId: String

        attr_accessor :AssetId

        def initialize(assetid=nil)
          @AssetId = assetid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
        end
      end

      # DescribeCVMAssetInfo返回参数结构体
      class DescribeCVMAssetInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Csip.v20221121.models.AssetBaseInfoResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssetBaseInfoResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCVMAssets请求参数结构体
      class DescribeCVMAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: -
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeCVMAssets返回参数结构体
      class DescribeCVMAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RegionList: 地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param DefenseStatusList: 防护状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseStatusList: Array
        # @param VpcList: vpc枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcList: Array
        # @param AssetTypeList: 资产类型枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTypeList: Array
        # @param SystemTypeList: 操作系统枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemTypeList: Array
        # @param IpTypeList: ip列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpTypeList: Array
        # @param AppIdList: appid列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array
        # @param ZoneList: 可用区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneList: Array
        # @param OsList: os列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsList: Array
        # @param AssetMapInstanceTypeList: 资产类型和实例类型的对应关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetMapInstanceTypeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RegionList, :DefenseStatusList, :VpcList, :AssetTypeList, :SystemTypeList, :IpTypeList, :AppIdList, :ZoneList, :OsList, :AssetMapInstanceTypeList, :RequestId

        def initialize(total=nil, data=nil, regionlist=nil, defensestatuslist=nil, vpclist=nil, assettypelist=nil, systemtypelist=nil, iptypelist=nil, appidlist=nil, zonelist=nil, oslist=nil, assetmapinstancetypelist=nil, requestid=nil)
          @Total = total
          @Data = data
          @RegionList = regionlist
          @DefenseStatusList = defensestatuslist
          @VpcList = vpclist
          @AssetTypeList = assettypelist
          @SystemTypeList = systemtypelist
          @IpTypeList = iptypelist
          @AppIdList = appidlist
          @ZoneList = zonelist
          @OsList = oslist
          @AssetMapInstanceTypeList = assetmapinstancetypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              cvmassetvo_tmp = CVMAssetVO.new
              cvmassetvo_tmp.deserialize(i)
              @Data << cvmassetvo_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['DefenseStatusList'].nil?
            @DefenseStatusList = []
            params['DefenseStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DefenseStatusList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['SystemTypeList'].nil?
            @SystemTypeList = []
            params['SystemTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SystemTypeList << filterdataobject_tmp
            end
          end
          unless params['IpTypeList'].nil?
            @IpTypeList = []
            params['IpTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @IpTypeList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ZoneList << filterdataobject_tmp
            end
          end
          unless params['OsList'].nil?
            @OsList = []
            params['OsList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @OsList << filterdataobject_tmp
            end
          end
          unless params['AssetMapInstanceTypeList'].nil?
            @AssetMapInstanceTypeList = []
            params['AssetMapInstanceTypeList'].each do |i|
              assetinstancetypemap_tmp = AssetInstanceTypeMap.new
              assetinstancetypemap_tmp.deserialize(i)
              @AssetMapInstanceTypeList << assetinstancetypemap_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterPodAssets请求参数结构体
      class DescribeClusterPodAssetsRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeClusterPodAssets返回参数结构体
      class DescribeClusterPodAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param PodStatusList: 集群pod状态枚举
        # @type PodStatusList: Array
        # @param NamespaceList: 命名空间枚举
        # @type NamespaceList: Array
        # @param RegionList: 地域枚举
        # @type RegionList: Array
        # @param AppIdList: 租户枚举
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :PodStatusList, :NamespaceList, :RegionList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, podstatuslist=nil, namespacelist=nil, regionlist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @PodStatusList = podstatuslist
          @NamespaceList = namespacelist
          @RegionList = regionlist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetclusterpod_tmp = AssetClusterPod.new
              assetclusterpod_tmp.deserialize(i)
              @Data << assetclusterpod_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['PodStatusList'].nil?
            @PodStatusList = []
            params['PodStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @PodStatusList << filterdataobject_tmp
            end
          end
          unless params['NamespaceList'].nil?
            @NamespaceList = []
            params['NamespaceList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @NamespaceList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbAssetInfo请求参数结构体
      class DescribeDbAssetInfoRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String

        attr_accessor :AssetId

        def initialize(assetid=nil)
          @AssetId = assetid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
        end
      end

      # DescribeDbAssetInfo返回参数结构体
      class DescribeDbAssetInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: db资产详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Csip.v20221121.models.DbAssetInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DbAssetInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbAssets请求参数结构体
      class DescribeDbAssetsRequest < TencentCloud::Common::AbstractModel
        # @param Filter: -
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param AssetTypes: 资产类型:MYSQL/MARIADB/REDIS/MONGODB/POSTGRES/CTS/ES/KAFKA/COS/CBS/CFS
        # @type AssetTypes: Array

        attr_accessor :Filter, :AssetTypes

        def initialize(filter=nil, assettypes=nil)
          @Filter = filter
          @AssetTypes = assettypes
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @AssetTypes = params['AssetTypes']
        end
      end

      # DescribeDbAssets返回参数结构体
      class DescribeDbAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 资产总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RegionList: 地域枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTypeList: Array
        # @param VpcList: Vpc枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcList: Array
        # @param AppIdList: Appid枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RegionList, :AssetTypeList, :VpcList, :AppIdList, :RequestId

        def initialize(total=nil, data=nil, regionlist=nil, assettypelist=nil, vpclist=nil, appidlist=nil, requestid=nil)
          @Total = total
          @Data = data
          @RegionList = regionlist
          @AssetTypeList = assettypelist
          @VpcList = vpclist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              dbassetvo_tmp = DBAssetVO.new
              dbassetvo_tmp.deserialize(i)
              @Data << dbassetvo_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainAssets请求参数结构体
      class DescribeDomainAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: -
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 安全中心自定义标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeDomainAssets返回参数结构体
      class DescribeDomainAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param DefenseStatusList: 防护状态列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseStatusList: Array
        # @param AssetLocationList: 资产归属地列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetLocationList: Array
        # @param SourceTypeList: 资产类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceTypeList: Array
        # @param RegionList: 地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :DefenseStatusList, :AssetLocationList, :SourceTypeList, :RegionList, :RequestId

        def initialize(total=nil, data=nil, defensestatuslist=nil, assetlocationlist=nil, sourcetypelist=nil, regionlist=nil, requestid=nil)
          @Total = total
          @Data = data
          @DefenseStatusList = defensestatuslist
          @AssetLocationList = assetlocationlist
          @SourceTypeList = sourcetypelist
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              domainassetvo_tmp = DomainAssetVO.new
              domainassetvo_tmp.deserialize(i)
              @Data << domainassetvo_tmp
            end
          end
          unless params['DefenseStatusList'].nil?
            @DefenseStatusList = []
            params['DefenseStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DefenseStatusList << filterdataobject_tmp
            end
          end
          unless params['AssetLocationList'].nil?
            @AssetLocationList = []
            params['AssetLocationList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetLocationList << filterdataobject_tmp
            end
          end
          unless params['SourceTypeList'].nil?
            @SourceTypeList = []
            params['SourceTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SourceTypeList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayAssets请求参数结构体
      class DescribeGatewayAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeGatewayAssets返回参数结构体
      class DescribeGatewayAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型列表
        # @type AssetTypeList: Array
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RegionList, :AssetTypeList, :VpcList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, regionlist=nil, assettypelist=nil, vpclist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RegionList = regionlist
          @AssetTypeList = assettypelist
          @VpcList = vpclist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              gatewayasset_tmp = GateWayAsset.new
              gatewayasset_tmp.deserialize(i)
              @Data << gatewayasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListenerList请求参数结构体
      class DescribeListenerListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: -
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeListenerList返回参数结构体
      class DescribeListenerListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 监听器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RequestId

        def initialize(total=nil, data=nil, requestid=nil)
          @Total = total
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              clblistenerlistinfo_tmp = ClbListenerListInfo.new
              clblistenerlistinfo_tmp.deserialize(i)
              @Data << clblistenerlistinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNICAssets请求参数结构体
      class DescribeNICAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeNICAssets返回参数结构体
      class DescribeNICAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型列表
        # @type AssetTypeList: Array
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RegionList, :AssetTypeList, :VpcList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, regionlist=nil, assettypelist=nil, vpclist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RegionList = regionlist
          @AssetTypeList = assettypelist
          @VpcList = vpclist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              nicasset_tmp = NICAsset.new
              nicasset_tmp.deserialize(i)
              @Data << nicasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationUserInfo请求参数结构体
      class DescribeOrganizationUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param NotSupportCloud: 不支持多云
        # @type NotSupportCloud: Boolean

        attr_accessor :Filter, :NotSupportCloud

        def initialize(filter=nil, notsupportcloud=nil)
          @Filter = filter
          @NotSupportCloud = notsupportcloud
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @NotSupportCloud = params['NotSupportCloud']
        end
      end

      # DescribeOrganizationUserInfo返回参数结构体
      class DescribeOrganizationUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 集团用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              organizationuserinfo_tmp = OrganizationUserInfo.new
              organizationuserinfo_tmp.deserialize(i)
              @Data << organizationuserinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicIpAssets请求参数结构体
      class DescribePublicIpAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: filte过滤条件
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 安全中心自定义标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribePublicIpAssets返回参数结构体
      class DescribePublicIpAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param AssetLocationList: 资产归属地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetLocationList: Array
        # @param IpTypeList: ip列表枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpTypeList: Array
        # @param RegionList: 地域列表枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param DefenseStatusList: 防护枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseStatusList: Array
        # @param AssetTypeList: 资产类型枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTypeList: Array
        # @param AppIdList: AppId枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :AssetLocationList, :IpTypeList, :RegionList, :DefenseStatusList, :AssetTypeList, :AppIdList, :RequestId

        def initialize(data=nil, total=nil, assetlocationlist=nil, iptypelist=nil, regionlist=nil, defensestatuslist=nil, assettypelist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @Total = total
          @AssetLocationList = assetlocationlist
          @IpTypeList = iptypelist
          @RegionList = regionlist
          @DefenseStatusList = defensestatuslist
          @AssetTypeList = assettypelist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ipassetlistvo_tmp = IpAssetListVO.new
              ipassetlistvo_tmp.deserialize(i)
              @Data << ipassetlistvo_tmp
            end
          end
          @Total = params['Total']
          unless params['AssetLocationList'].nil?
            @AssetLocationList = []
            params['AssetLocationList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetLocationList << filterdataobject_tmp
            end
          end
          unless params['IpTypeList'].nil?
            @IpTypeList = []
            params['IpTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @IpTypeList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['DefenseStatusList'].nil?
            @DefenseStatusList = []
            params['DefenseStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DefenseStatusList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewCFGRiskList请求参数结构体
      class DescribeRiskCenterAssetViewCFGRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewCFGRiskList返回参数结构体
      class DescribeRiskCenterAssetViewCFGRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 资产视角的配置风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param CFGNameLists: 配置名列表
        # @type CFGNameLists: Array
        # @param CheckTypeLists: 检查类型列表
        # @type CheckTypeLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :CFGNameLists, :CheckTypeLists, :InstanceTypeLists, :FromLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, cfgnamelists=nil, checktypelists=nil, instancetypelists=nil, fromlists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @CFGNameLists = cfgnamelists
          @CheckTypeLists = checktypelists
          @InstanceTypeLists = instancetypelists
          @FromLists = fromlists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewcfgrisk_tmp = AssetViewCFGRisk.new
              assetviewcfgrisk_tmp.deserialize(i)
              @Data << assetviewcfgrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['CFGNameLists'].nil?
            @CFGNameLists = []
            params['CFGNameLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CFGNameLists << filterdataobject_tmp
            end
          end
          unless params['CheckTypeLists'].nil?
            @CheckTypeLists = []
            params['CheckTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CheckTypeLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewPortRiskList请求参数结构体
      class DescribeRiskCenterAssetViewPortRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewPortRiskList返回参数结构体
      class DescribeRiskCenterAssetViewPortRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 资产视角的配置风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param SuggestionLists: 建议列表
        # @type SuggestionLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :SuggestionLists, :InstanceTypeLists, :FromLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, suggestionlists=nil, instancetypelists=nil, fromlists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @SuggestionLists = suggestionlists
          @InstanceTypeLists = instancetypelists
          @FromLists = fromlists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewportrisk_tmp = AssetViewPortRisk.new
              assetviewportrisk_tmp.deserialize(i)
              @Data << assetviewportrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['SuggestionLists'].nil?
            @SuggestionLists = []
            params['SuggestionLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SuggestionLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewVULRiskList请求参数结构体
      class DescribeRiskCenterAssetViewVULRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewVULRiskList返回参数结构体
      class DescribeRiskCenterAssetViewVULRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 资产视角的漏洞风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :FromLists, :VULTypeLists, :InstanceTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, fromlists=nil, vultypelists=nil, instancetypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @FromLists = fromlists
          @VULTypeLists = vultypelists
          @InstanceTypeLists = instancetypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewvulrisk_tmp = AssetViewVULRisk.new
              assetviewvulrisk_tmp.deserialize(i)
              @Data << assetviewvulrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewWeakPasswordRiskList请求参数结构体
      class DescribeRiskCenterAssetViewWeakPasswordRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewWeakPasswordRiskList返回参数结构体
      class DescribeRiskCenterAssetViewWeakPasswordRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param PasswordTypeLists: 弱口令类型列表
        # @type PasswordTypeLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :FromLists, :InstanceTypeLists, :PasswordTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, fromlists=nil, instancetypelists=nil, passwordtypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @FromLists = fromlists
          @InstanceTypeLists = instancetypelists
          @PasswordTypeLists = passwordtypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewweakpassrisk_tmp = AssetViewWeakPassRisk.new
              assetviewweakpassrisk_tmp.deserialize(i)
              @Data << assetviewweakpassrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['PasswordTypeLists'].nil?
            @PasswordTypeLists = []
            params['PasswordTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @PasswordTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterPortViewPortRiskList请求参数结构体
      class DescribeRiskCenterPortViewPortRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterPortViewPortRiskList返回参数结构体
      class DescribeRiskCenterPortViewPortRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 端口视角的端口风险列表
        # @type Data: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param SuggestionLists: 处置建议列表
        # @type SuggestionLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :LevelLists, :SuggestionLists, :FromLists, :RequestId

        def initialize(totalcount=nil, data=nil, levellists=nil, suggestionlists=nil, fromlists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @LevelLists = levellists
          @SuggestionLists = suggestionlists
          @FromLists = fromlists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              portviewportrisk_tmp = PortViewPortRisk.new
              portviewportrisk_tmp.deserialize(i)
              @Data << portviewportrisk_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['SuggestionLists'].nil?
            @SuggestionLists = []
            params['SuggestionLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SuggestionLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterServerRiskList请求参数结构体
      class DescribeRiskCenterServerRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterServerRiskList返回参数结构体
      class DescribeRiskCenterServerRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 风险服务列表
        # @type Data: Array
        # @param InstanceTypeLists: 资产类型枚举
        # @type InstanceTypeLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :InstanceTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, instancetypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @InstanceTypeLists = instancetypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              serverrisk_tmp = ServerRisk.new
              serverrisk_tmp.deserialize(i)
              @Data << serverrisk_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterVULViewVULRiskList请求参数结构体
      class DescribeRiskCenterVULViewVULRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterVULViewVULRiskList返回参数结构体
      class DescribeRiskCenterVULViewVULRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 漏洞产视角的漏洞风险列表
        # @type Data: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :LevelLists, :FromLists, :VULTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, levellists=nil, fromlists=nil, vultypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @LevelLists = levellists
          @FromLists = fromlists
          @VULTypeLists = vultypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vulviewvulrisk_tmp = VULViewVULRisk.new
              vulviewvulrisk_tmp.deserialize(i)
              @Data << vulviewvulrisk_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterWebsiteRiskList请求参数结构体
      class DescribeRiskCenterWebsiteRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterWebsiteRiskList返回参数结构体
      class DescribeRiskCenterWebsiteRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 内容风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param DetectEngineLists: 风险类型列表
        # @type DetectEngineLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :InstanceTypeLists, :DetectEngineLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, instancetypelists=nil, detectenginelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @InstanceTypeLists = instancetypelists
          @DetectEngineLists = detectenginelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              websiterisk_tmp = WebsiteRisk.new
              websiterisk_tmp.deserialize(i)
              @Data << websiterisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['DetectEngineLists'].nil?
            @DetectEngineLists = []
            params['DetectEngineLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DetectEngineLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanReportList请求参数结构体
      class DescribeScanReportListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 列表过滤条件
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeScanReportList返回参数结构体
      class DescribeScanReportListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 任务日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param UINList: 主账户ID列表
        # @type UINList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :UINList, :RequestId

        def initialize(totalcount=nil, data=nil, uinlist=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @UINList = uinlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              scantaskinfo_tmp = ScanTaskInfo.new
              scantaskinfo_tmp.deserialize(i)
              @Data << scantaskinfo_tmp
            end
          end
          @UINList = params['UINList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskList请求参数结构体
      class DescribeScanTaskListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :Filter, :Tags

        def initialize(filter=nil, tags=nil)
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
        end
      end

      # DescribeScanTaskList返回参数结构体
      class DescribeScanTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 任务日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param UINList: 主账户ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UINList: Array
        # @param TaskModeList: 体检模式过滤列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskModeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :UINList, :TaskModeList, :RequestId

        def initialize(totalcount=nil, data=nil, uinlist=nil, taskmodelist=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @UINList = uinlist
          @TaskModeList = taskmodelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              scantaskinfolist_tmp = ScanTaskInfoList.new
              scantaskinfolist_tmp.deserialize(i)
              @Data << scantaskinfolist_tmp
            end
          end
          @UINList = params['UINList']
          unless params['TaskModeList'].nil?
            @TaskModeList = []
            params['TaskModeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @TaskModeList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchBugInfo请求参数结构体
      class DescribeSearchBugInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 无
        # @type Id: String
        # @param CVEId: id=3时传入该参数
        # @type CVEId: String

        attr_accessor :Id, :CVEId

        def initialize(id=nil, cveid=nil)
          @Id = id
          @CVEId = cveid
        end

        def deserialize(params)
          @Id = params['Id']
          @CVEId = params['CVEId']
        end
      end

      # DescribeSearchBugInfo返回参数结构体
      class DescribeSearchBugInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 漏洞信息和资产信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Csip.v20221121.models.DataSearchBug`
        # @param ReturnCode: 状态值，0：查询成功，非0：查询失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 状态信息，success：查询成功，fail：查询失败
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(data=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @Data = data
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSearchBug.new
            @Data.deserialize(params['Data'])
          end
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnetAssets请求参数结构体
      class DescribeSubnetAssetsRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeSubnetAssets返回参数结构体
      class DescribeSubnetAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param ZoneList: 可用区列表
        # @type ZoneList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RegionList, :VpcList, :AppIdList, :ZoneList, :RequestId

        def initialize(data=nil, totalcount=nil, regionlist=nil, vpclist=nil, appidlist=nil, zonelist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RegionList = regionlist
          @VpcList = vpclist
          @AppIdList = appidlist
          @ZoneList = zonelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              subnetasset_tmp = SubnetAsset.new
              subnetasset_tmp.deserialize(i)
              @Data << subnetasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ZoneList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskLogList请求参数结构体
      class DescribeTaskLogListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeTaskLogList返回参数结构体
      class DescribeTaskLogListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 报告列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param NotViewNumber: 待查看数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotViewNumber: Integer
        # @param ReportTemplateNumber: 报告模板数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTemplateNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :NotViewNumber, :ReportTemplateNumber, :RequestId

        def initialize(totalcount=nil, data=nil, notviewnumber=nil, reporttemplatenumber=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @NotViewNumber = notviewnumber
          @ReportTemplateNumber = reporttemplatenumber
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              taskloginfo_tmp = TaskLogInfo.new
              taskloginfo_tmp.deserialize(i)
              @Data << taskloginfo_tmp
            end
          end
          @NotViewNumber = params['NotViewNumber']
          @ReportTemplateNumber = params['ReportTemplateNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskLogURL请求参数结构体
      class DescribeTaskLogURLRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0: 预览， 1: 下载
        # @type Type: Integer
        # @param ReportItemKeyList: 任务报告Id 列表
        # @type ReportItemKeyList: Array
        # @param ReportTaskIdList: 报告中任务id列表
        # @type ReportTaskIdList: Array

        attr_accessor :Type, :ReportItemKeyList, :ReportTaskIdList

        def initialize(type=nil, reportitemkeylist=nil, reporttaskidlist=nil)
          @Type = type
          @ReportItemKeyList = reportitemkeylist
          @ReportTaskIdList = reporttaskidlist
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['ReportItemKeyList'].nil?
            @ReportItemKeyList = []
            params['ReportItemKeyList'].each do |i|
              reportitemkey_tmp = ReportItemKey.new
              reportitemkey_tmp.deserialize(i)
              @ReportItemKeyList << reportitemkey_tmp
            end
          end
          unless params['ReportTaskIdList'].nil?
            @ReportTaskIdList = []
            params['ReportTaskIdList'].each do |i|
              reporttaskidlist_tmp = ReportTaskIdList.new
              reporttaskidlist_tmp.deserialize(i)
              @ReportTaskIdList << reporttaskidlist_tmp
            end
          end
        end
      end

      # DescribeTaskLogURL返回参数结构体
      class DescribeTaskLogURLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回报告临时下载url
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              tasklogurl_tmp = TaskLogURL.new
              tasklogurl_tmp.deserialize(i)
              @Data << tasklogurl_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVULRiskAdvanceCFGList请求参数结构体
      class DescribeVULRiskAdvanceCFGListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Filter: 过滤条件
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :TaskId, :Filter

        def initialize(memberid=nil, taskid=nil, filter=nil)
          @MemberId = memberid
          @TaskId = taskid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @TaskId = params['TaskId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeVULRiskAdvanceCFGList返回参数结构体
      class DescribeVULRiskAdvanceCFGListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 配置项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RiskLevelLists: 风险等级过滤列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevelLists: Array
        # @param VULTypeLists: 漏洞类型过滤列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULTypeLists: Array
        # @param CheckFromLists: 识别来源过滤列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckFromLists: Array
        # @param VulTagList: 漏洞标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulTagList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RiskLevelLists, :VULTypeLists, :CheckFromLists, :VulTagList, :RequestId

        def initialize(data=nil, totalcount=nil, risklevellists=nil, vultypelists=nil, checkfromlists=nil, vultaglist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RiskLevelLists = risklevellists
          @VULTypeLists = vultypelists
          @CheckFromLists = checkfromlists
          @VulTagList = vultaglist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vulriskadvancecfglist_tmp = VULRiskAdvanceCFGList.new
              vulriskadvancecfglist_tmp.deserialize(i)
              @Data << vulriskadvancecfglist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RiskLevelLists'].nil?
            @RiskLevelLists = []
            params['RiskLevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RiskLevelLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          unless params['CheckFromLists'].nil?
            @CheckFromLists = []
            params['CheckFromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CheckFromLists << filterdataobject_tmp
            end
          end
          unless params['VulTagList'].nil?
            @VulTagList = []
            params['VulTagList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VulTagList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcAssets请求参数结构体
      class DescribeVpcAssetsRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeVpcAssets返回参数结构体
      class DescribeVpcAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :VpcList, :RegionList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, vpclist=nil, regionlist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @VpcList = vpclist
          @RegionList = regionlist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vpc_tmp = Vpc.new
              vpc_tmp.deserialize(i)
              @Data << vpc_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 域名资产
      class DomainAssetVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: Array
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: Array
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: Array
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Array
        # @param WAFStatus: Waf状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WAFStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param AppId: Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsCloud: 是否云上资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCloud: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intercept: Integer
        # @param InBandwidth: 入站峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InBandwidth: String
        # @param OutBandwidth: 出站峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutBandwidth: String
        # @param InFlow: 入站累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InFlow: String
        # @param OutFlow: 出站累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param PortRisk: 端口风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param SubDomain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubDomain: String
        # @param SeverIp: 解析ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SeverIp: Array
        # @param BotCount: bot攻击数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotCount: Integer
        # @param WeakPassword: 弱口令风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeakPassword: Integer
        # @param WebContentRisk: 内容风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebContentRisk: Integer
        # @param Tag: tag标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param SourceType: 关联实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: String
        # @param MemberId: memberiD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param CCAttack: cc攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CCAttack: Integer
        # @param WebAttack: web攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebAttack: Integer
        # @param ServiceRisk: 风险服务暴露数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceRisk: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param VerifyDomain: 待确认资产的随机三级域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyDomain: String
        # @param VerifyTXTRecord: 待确认资产的TXT记录内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyTXTRecord: String
        # @param VerifyStatus: 待确认资产的认证状态，0-待认证，1-认证成功，2-认证中，3-txt认证失败，4-人工认证失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyStatus: Integer
        # @param BotAccessCount: bot访问数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotAccessCount: Integer

        attr_accessor :AssetId, :AssetName, :AssetType, :Region, :WAFStatus, :AssetCreateTime, :AppId, :Uin, :NickName, :IsCore, :IsCloud, :Attack, :Access, :Intercept, :InBandwidth, :OutBandwidth, :InFlow, :OutFlow, :LastScanTime, :PortRisk, :VulnerabilityRisk, :ConfigurationRisk, :ScanTask, :SubDomain, :SeverIp, :BotCount, :WeakPassword, :WebContentRisk, :Tag, :SourceType, :MemberId, :CCAttack, :WebAttack, :ServiceRisk, :IsNewAsset, :VerifyDomain, :VerifyTXTRecord, :VerifyStatus, :BotAccessCount

        def initialize(assetid=nil, assetname=nil, assettype=nil, region=nil, wafstatus=nil, assetcreatetime=nil, appid=nil, uin=nil, nickname=nil, iscore=nil, iscloud=nil, attack=nil, access=nil, intercept=nil, inbandwidth=nil, outbandwidth=nil, inflow=nil, outflow=nil, lastscantime=nil, portrisk=nil, vulnerabilityrisk=nil, configurationrisk=nil, scantask=nil, subdomain=nil, severip=nil, botcount=nil, weakpassword=nil, webcontentrisk=nil, tag=nil, sourcetype=nil, memberid=nil, ccattack=nil, webattack=nil, servicerisk=nil, isnewasset=nil, verifydomain=nil, verifytxtrecord=nil, verifystatus=nil, botaccesscount=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @WAFStatus = wafstatus
          @AssetCreateTime = assetcreatetime
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @IsCore = iscore
          @IsCloud = iscloud
          @Attack = attack
          @Access = access
          @Intercept = intercept
          @InBandwidth = inbandwidth
          @OutBandwidth = outbandwidth
          @InFlow = inflow
          @OutFlow = outflow
          @LastScanTime = lastscantime
          @PortRisk = portrisk
          @VulnerabilityRisk = vulnerabilityrisk
          @ConfigurationRisk = configurationrisk
          @ScanTask = scantask
          @SubDomain = subdomain
          @SeverIp = severip
          @BotCount = botcount
          @WeakPassword = weakpassword
          @WebContentRisk = webcontentrisk
          @Tag = tag
          @SourceType = sourcetype
          @MemberId = memberid
          @CCAttack = ccattack
          @WebAttack = webattack
          @ServiceRisk = servicerisk
          @IsNewAsset = isnewasset
          @VerifyDomain = verifydomain
          @VerifyTXTRecord = verifytxtrecord
          @VerifyStatus = verifystatus
          @BotAccessCount = botaccesscount
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @WAFStatus = params['WAFStatus']
          @AssetCreateTime = params['AssetCreateTime']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @IsCore = params['IsCore']
          @IsCloud = params['IsCloud']
          @Attack = params['Attack']
          @Access = params['Access']
          @Intercept = params['Intercept']
          @InBandwidth = params['InBandwidth']
          @OutBandwidth = params['OutBandwidth']
          @InFlow = params['InFlow']
          @OutFlow = params['OutFlow']
          @LastScanTime = params['LastScanTime']
          @PortRisk = params['PortRisk']
          @VulnerabilityRisk = params['VulnerabilityRisk']
          @ConfigurationRisk = params['ConfigurationRisk']
          @ScanTask = params['ScanTask']
          @SubDomain = params['SubDomain']
          @SeverIp = params['SeverIp']
          @BotCount = params['BotCount']
          @WeakPassword = params['WeakPassword']
          @WebContentRisk = params['WebContentRisk']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @SourceType = params['SourceType']
          @MemberId = params['MemberId']
          @CCAttack = params['CCAttack']
          @WebAttack = params['WebAttack']
          @ServiceRisk = params['ServiceRisk']
          @IsNewAsset = params['IsNewAsset']
          @VerifyDomain = params['VerifyDomain']
          @VerifyTXTRecord = params['VerifyTXTRecord']
          @VerifyStatus = params['VerifyStatus']
          @BotAccessCount = params['BotAccessCount']
        end
      end

      # 统计条目
      class Element < TencentCloud::Common::AbstractModel
        # @param Key: 统计类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 统计对象
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 列表查询接口采用新filter 接口，直接传给后台供后台查询过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Limit: 查询数量限制
        # @type Limit: Integer
        # @param Offset: 查询偏移位置
        # @type Offset: Integer
        # @param Order: 排序采用升序还是降序 升:asc 降 desc
        # @type Order: String
        # @param By: 需排序的字段
        # @type By: String
        # @param Filters: 过滤的列及内容
        # @type Filters: Array
        # @param StartTime: 可填无， 日志使用查询时间
        # @type StartTime: String
        # @param EndTime: 可填无， 日志使用查询时间
        # @type EndTime: String

        attr_accessor :Limit, :Offset, :Order, :By, :Filters, :StartTime, :EndTime

        def initialize(limit=nil, offset=nil, order=nil, by=nil, filters=nil, starttime=nil, endtime=nil)
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              wherefilter_tmp = WhereFilter.new
              wherefilter_tmp.deserialize(i)
              @Filters << wherefilter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 过滤数据对象
      class FilterDataObject < TencentCloud::Common::AbstractModel
        # @param Value: 英文翻译
        # @type Value: String
        # @param Text: 中文翻译
        # @type Text: String

        attr_accessor :Value, :Text

        def initialize(value=nil, text=nil)
          @Value = value
          @Text = text
        end

        def deserialize(params)
          @Value = params['Value']
          @Text = params['Text']
        end
      end

      # 网关资产
      class GateWayAsset < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param PrivateIp: 私有ip
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param Region: 区域
        # @type Region: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param VpcName: 私有网络名
        # @type VpcName: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param OutboundPeakBandwidth: 出向峰值带宽
        # @type OutboundPeakBandwidth: String
        # @param InboundPeakBandwidth: 入向峰值带宽
        # @type InboundPeakBandwidth: String
        # @param OutboundCumulativeFlow: 出站累计流量
        # @type OutboundCumulativeFlow: String
        # @param InboundCumulativeFlow: 入站累计流量
        # @type InboundCumulativeFlow: String
        # @param NetworkAttack: 网络攻击
        # @type NetworkAttack: Integer
        # @param ExposedPort: 暴露端口
        # @type ExposedPort: Integer
        # @param ExposedVUL: 暴露漏洞
        # @type ExposedVUL: Integer
        # @param ConfigureRisk: 配置风险
        # @type ConfigureRisk: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ScanTask: 任务数
        # @type ScanTask: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param Nick: 昵称
        # @type Nick: String
        # @param AddressIPV6: ipv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPV6: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param RiskExposure: 风险服务暴露
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskExposure: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param Status: 网关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param EngineRegion: TSE的网关真实地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineRegion: String

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :AssetType, :PrivateIp, :PublicIp, :Region, :VpcId, :VpcName, :Tag, :OutboundPeakBandwidth, :InboundPeakBandwidth, :OutboundCumulativeFlow, :InboundCumulativeFlow, :NetworkAttack, :ExposedPort, :ExposedVUL, :ConfigureRisk, :CreateTime, :ScanTask, :LastScanTime, :Nick, :AddressIPV6, :IsCore, :RiskExposure, :IsNewAsset, :Status, :EngineRegion

        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, assettype=nil, privateip=nil, publicip=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, outboundpeakbandwidth=nil, inboundpeakbandwidth=nil, outboundcumulativeflow=nil, inboundcumulativeflow=nil, networkattack=nil, exposedport=nil, exposedvul=nil, configurerisk=nil, createtime=nil, scantask=nil, lastscantime=nil, nick=nil, addressipv6=nil, iscore=nil, riskexposure=nil, isnewasset=nil, status=nil, engineregion=nil)
          @AppId = appid
          @Uin = uin
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @PrivateIp = privateip
          @PublicIp = publicip
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @Tag = tag
          @OutboundPeakBandwidth = outboundpeakbandwidth
          @InboundPeakBandwidth = inboundpeakbandwidth
          @OutboundCumulativeFlow = outboundcumulativeflow
          @InboundCumulativeFlow = inboundcumulativeflow
          @NetworkAttack = networkattack
          @ExposedPort = exposedport
          @ExposedVUL = exposedvul
          @ConfigureRisk = configurerisk
          @CreateTime = createtime
          @ScanTask = scantask
          @LastScanTime = lastscantime
          @Nick = nick
          @AddressIPV6 = addressipv6
          @IsCore = iscore
          @RiskExposure = riskexposure
          @IsNewAsset = isnewasset
          @Status = status
          @EngineRegion = engineregion
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @OutboundPeakBandwidth = params['OutboundPeakBandwidth']
          @InboundPeakBandwidth = params['InboundPeakBandwidth']
          @OutboundCumulativeFlow = params['OutboundCumulativeFlow']
          @InboundCumulativeFlow = params['InboundCumulativeFlow']
          @NetworkAttack = params['NetworkAttack']
          @ExposedPort = params['ExposedPort']
          @ExposedVUL = params['ExposedVUL']
          @ConfigureRisk = params['ConfigureRisk']
          @CreateTime = params['CreateTime']
          @ScanTask = params['ScanTask']
          @LastScanTime = params['LastScanTime']
          @Nick = params['Nick']
          @AddressIPV6 = params['AddressIPV6']
          @IsCore = params['IsCore']
          @RiskExposure = params['RiskExposure']
          @IsNewAsset = params['IsNewAsset']
          @Status = params['Status']
          @EngineRegion = params['EngineRegion']
        end
      end

      # ip列表
      class IpAssetListVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetName: 资产name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param CFWStatus: 云防状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PublicIpType: 公网ip类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpType: Integer
        # @param VpcId: vpc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AppId: appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param IsCore: 核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsCloud: 云上
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCloud: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intercept: Integer
        # @param InBandwidth: 入向带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InBandwidth: String
        # @param OutBandwidth: 出向带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutBandwidth: String
        # @param InFlow: 入向流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InFlow: String
        # @param OutFlow: 出向流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param PortRisk: 端口风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param WeakPassword: 弱口令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeakPassword: Integer
        # @param WebContentRisk: 内容风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebContentRisk: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param AddressId: eip主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressId: String
        # @param MemberId: memberid信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param RiskExposure: 风险服务暴露
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskExposure: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param VerifyStatus: 资产认证状态，0-待认证，1-认证成功，2-认证中，3+-认证失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyStatus: Integer

        attr_accessor :AssetId, :AssetName, :AssetType, :Region, :CFWStatus, :AssetCreateTime, :PublicIp, :PublicIpType, :VpcId, :VpcName, :AppId, :Uin, :NickName, :IsCore, :IsCloud, :Attack, :Access, :Intercept, :InBandwidth, :OutBandwidth, :InFlow, :OutFlow, :LastScanTime, :PortRisk, :VulnerabilityRisk, :ConfigurationRisk, :ScanTask, :WeakPassword, :WebContentRisk, :Tag, :AddressId, :MemberId, :RiskExposure, :IsNewAsset, :VerifyStatus

        def initialize(assetid=nil, assetname=nil, assettype=nil, region=nil, cfwstatus=nil, assetcreatetime=nil, publicip=nil, publiciptype=nil, vpcid=nil, vpcname=nil, appid=nil, uin=nil, nickname=nil, iscore=nil, iscloud=nil, attack=nil, access=nil, intercept=nil, inbandwidth=nil, outbandwidth=nil, inflow=nil, outflow=nil, lastscantime=nil, portrisk=nil, vulnerabilityrisk=nil, configurationrisk=nil, scantask=nil, weakpassword=nil, webcontentrisk=nil, tag=nil, addressid=nil, memberid=nil, riskexposure=nil, isnewasset=nil, verifystatus=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @CFWStatus = cfwstatus
          @AssetCreateTime = assetcreatetime
          @PublicIp = publicip
          @PublicIpType = publiciptype
          @VpcId = vpcid
          @VpcName = vpcname
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @IsCore = iscore
          @IsCloud = iscloud
          @Attack = attack
          @Access = access
          @Intercept = intercept
          @InBandwidth = inbandwidth
          @OutBandwidth = outbandwidth
          @InFlow = inflow
          @OutFlow = outflow
          @LastScanTime = lastscantime
          @PortRisk = portrisk
          @VulnerabilityRisk = vulnerabilityrisk
          @ConfigurationRisk = configurationrisk
          @ScanTask = scantask
          @WeakPassword = weakpassword
          @WebContentRisk = webcontentrisk
          @Tag = tag
          @AddressId = addressid
          @MemberId = memberid
          @RiskExposure = riskexposure
          @IsNewAsset = isnewasset
          @VerifyStatus = verifystatus
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @CFWStatus = params['CFWStatus']
          @AssetCreateTime = params['AssetCreateTime']
          @PublicIp = params['PublicIp']
          @PublicIpType = params['PublicIpType']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @IsCore = params['IsCore']
          @IsCloud = params['IsCloud']
          @Attack = params['Attack']
          @Access = params['Access']
          @Intercept = params['Intercept']
          @InBandwidth = params['InBandwidth']
          @OutBandwidth = params['OutBandwidth']
          @InFlow = params['InFlow']
          @OutFlow = params['OutFlow']
          @LastScanTime = params['LastScanTime']
          @PortRisk = params['PortRisk']
          @VulnerabilityRisk = params['VulnerabilityRisk']
          @ConfigurationRisk = params['ConfigurationRisk']
          @ScanTask = params['ScanTask']
          @WeakPassword = params['WeakPassword']
          @WebContentRisk = params['WebContentRisk']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @AddressId = params['AddressId']
          @MemberId = params['MemberId']
          @RiskExposure = params['RiskExposure']
          @IsNewAsset = params['IsNewAsset']
          @VerifyStatus = params['VerifyStatus']
        end
      end

      # ModifyOrganizationAccountStatus请求参数结构体
      class ModifyOrganizationAccountStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 修改集团账号状态，1 开启， 2关闭
        # @type Status: Integer

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # ModifyOrganizationAccountStatus返回参数结构体
      class ModifyOrganizationAccountStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 返回值为0，则修改成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyRiskCenterRiskStatus请求参数结构体
      class ModifyRiskCenterRiskStatusRequest < TencentCloud::Common::AbstractModel
        # @param RiskStatusKeys: 风险资产相关数据
        # @type RiskStatusKeys: Array
        # @param Status: 处置状态，1为已处置、2为已忽略，3为取消已处置，4为取消已忽略
        # @type Status: Integer
        # @param Type: 风险类型，0-端口风险， 1-漏洞风险，2-弱口令风险， 3-网站内容风险，4-配置风险，5-风险服务暴露
        # @type Type: Integer

        attr_accessor :RiskStatusKeys, :Status, :Type

        def initialize(riskstatuskeys=nil, status=nil, type=nil)
          @RiskStatusKeys = riskstatuskeys
          @Status = status
          @Type = type
        end

        def deserialize(params)
          unless params['RiskStatusKeys'].nil?
            @RiskStatusKeys = []
            params['RiskStatusKeys'].each do |i|
              riskcenterstatuskey_tmp = RiskCenterStatusKey.new
              riskcenterstatuskey_tmp.deserialize(i)
              @RiskStatusKeys << riskcenterstatuskey_tmp
            end
          end
          @Status = params['Status']
          @Type = params['Type']
        end
      end

      # ModifyRiskCenterRiskStatus返回参数结构体
      class ModifyRiskCenterRiskStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRiskCenterScanTask请求参数结构体
      class ModifyRiskCenterScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ScanAssetType: 0-全扫，1-指定资产扫，2-排除资产扫，3-手动填写扫；1和2则Assets字段必填，3则SelfDefiningAssets必填
        # @type ScanAssetType: Integer
        # @param ScanItem: 扫描项目；port/poc/weakpass/webcontent/configrisk
        # @type ScanItem: Array
        # @param ScanPlanType: 0-周期任务,1-立即扫描,2-定时扫描,3-自定义；0,2,3则ScanPlanContent必填
        # @type ScanPlanType: Integer
        # @param TaskId: 要修改的任务id
        # @type TaskId: String
        # @param Assets: 扫描资产信息列表
        # @type Assets: Array
        # @param ScanPlanContent: 扫描计划详情
        # @type ScanPlanContent: String
        # @param SelfDefiningAssets: ip/域名/url数组
        # @type SelfDefiningAssets: Array
        # @param TaskAdvanceCFG: 高级配置
        # @type TaskAdvanceCFG: :class:`Tencentcloud::Csip.v20221121.models.TaskAdvanceCFG`
        # @param TaskMode: 体检模式，0-标准模式，1-快速模式，2-高级模式，默认标准模式
        # @type TaskMode: Integer

        attr_accessor :TaskName, :ScanAssetType, :ScanItem, :ScanPlanType, :TaskId, :Assets, :ScanPlanContent, :SelfDefiningAssets, :TaskAdvanceCFG, :TaskMode

        def initialize(taskname=nil, scanassettype=nil, scanitem=nil, scanplantype=nil, taskid=nil, assets=nil, scanplancontent=nil, selfdefiningassets=nil, taskadvancecfg=nil, taskmode=nil)
          @TaskName = taskname
          @ScanAssetType = scanassettype
          @ScanItem = scanitem
          @ScanPlanType = scanplantype
          @TaskId = taskid
          @Assets = assets
          @ScanPlanContent = scanplancontent
          @SelfDefiningAssets = selfdefiningassets
          @TaskAdvanceCFG = taskadvancecfg
          @TaskMode = taskmode
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @ScanAssetType = params['ScanAssetType']
          @ScanItem = params['ScanItem']
          @ScanPlanType = params['ScanPlanType']
          @TaskId = params['TaskId']
          unless params['Assets'].nil?
            @Assets = []
            params['Assets'].each do |i|
              taskassetobject_tmp = TaskAssetObject.new
              taskassetobject_tmp.deserialize(i)
              @Assets << taskassetobject_tmp
            end
          end
          @ScanPlanContent = params['ScanPlanContent']
          @SelfDefiningAssets = params['SelfDefiningAssets']
          unless params['TaskAdvanceCFG'].nil?
            @TaskAdvanceCFG = TaskAdvanceCFG.new
            @TaskAdvanceCFG.deserialize(params['TaskAdvanceCFG'])
          end
          @TaskMode = params['TaskMode']
        end
      end

      # ModifyRiskCenterScanTask返回参数结构体
      class ModifyRiskCenterScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Status: 0，修改成功，其他失败；-1为存在资产未认证
        # @type Status: Integer
        # @param UnAuthAsset: 未认证资产列表
        # @type UnAuthAsset: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :UnAuthAsset, :RequestId

        def initialize(taskid=nil, status=nil, unauthasset=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @UnAuthAsset = unauthasset
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @UnAuthAsset = params['UnAuthAsset']
          @RequestId = params['RequestId']
        end
      end

      # 网卡资产
      class NICAsset < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param PrivateIp: 私有ip
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param Region: 区域
        # @type Region: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param VpcName: 私有网络名
        # @type VpcName: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param OutboundPeakBandwidth: 出向峰值带宽
        # @type OutboundPeakBandwidth: String
        # @param InboundPeakBandwidth: 入向峰值带宽
        # @type InboundPeakBandwidth: String
        # @param OutboundCumulativeFlow: 出站累计流量
        # @type OutboundCumulativeFlow: String
        # @param InboundCumulativeFlow: 入站累计流量
        # @type InboundCumulativeFlow: String
        # @param NetworkAttack: 网络攻击
        # @type NetworkAttack: Integer
        # @param ExposedPort: 暴露端口
        # @type ExposedPort: Integer
        # @param ExposedVUL: 暴露漏洞
        # @type ExposedVUL: Integer
        # @param ConfigureRisk: 配置风险
        # @type ConfigureRisk: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ScanTask: 任务数
        # @type ScanTask: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param Nick: 昵称
        # @type Nick: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :AssetType, :PrivateIp, :PublicIp, :Region, :VpcId, :VpcName, :Tag, :OutboundPeakBandwidth, :InboundPeakBandwidth, :OutboundCumulativeFlow, :InboundCumulativeFlow, :NetworkAttack, :ExposedPort, :ExposedVUL, :ConfigureRisk, :CreateTime, :ScanTask, :LastScanTime, :Nick, :IsCore, :IsNewAsset

        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, assettype=nil, privateip=nil, publicip=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, outboundpeakbandwidth=nil, inboundpeakbandwidth=nil, outboundcumulativeflow=nil, inboundcumulativeflow=nil, networkattack=nil, exposedport=nil, exposedvul=nil, configurerisk=nil, createtime=nil, scantask=nil, lastscantime=nil, nick=nil, iscore=nil, isnewasset=nil)
          @AppId = appid
          @Uin = uin
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @PrivateIp = privateip
          @PublicIp = publicip
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @Tag = tag
          @OutboundPeakBandwidth = outboundpeakbandwidth
          @InboundPeakBandwidth = inboundpeakbandwidth
          @OutboundCumulativeFlow = outboundcumulativeflow
          @InboundCumulativeFlow = inboundcumulativeflow
          @NetworkAttack = networkattack
          @ExposedPort = exposedport
          @ExposedVUL = exposedvul
          @ConfigureRisk = configurerisk
          @CreateTime = createtime
          @ScanTask = scantask
          @LastScanTime = lastscantime
          @Nick = nick
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @OutboundPeakBandwidth = params['OutboundPeakBandwidth']
          @InboundPeakBandwidth = params['InboundPeakBandwidth']
          @OutboundCumulativeFlow = params['OutboundCumulativeFlow']
          @InboundCumulativeFlow = params['InboundCumulativeFlow']
          @NetworkAttack = params['NetworkAttack']
          @ExposedPort = params['ExposedPort']
          @ExposedVUL = params['ExposedVUL']
          @ConfigureRisk = params['ConfigureRisk']
          @CreateTime = params['CreateTime']
          @ScanTask = params['ScanTask']
          @LastScanTime = params['LastScanTime']
          @Nick = params['Nick']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 集团账号成员详情
      class OrganizationUserInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 成员账号Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 成员账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param NodeName: 部门节点名称，账号所属部门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param AssetCount: 资产数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCount: Integer
        # @param RiskCount: 风险数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCount: Integer
        # @param AttackCount: 攻击数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackCount: Integer
        # @param Role: Member/Admin/;成员或者管理员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
        # @param MemberId: 成员账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param AppId: 成员账号Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param JoinType: 账号加入方式,create/invite
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinType: String
        # @param CFWProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWProtect: String
        # @param WAFProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WAFProtect: String
        # @param CWPProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPProtect: String
        # @param Enable: 1启用，0未启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param CSIPProtect: "Free"       //免费版  "Advanced"   //高级版 "Enterprise" //企业版 "Ultimate"   //旗舰版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSIPProtect: String
        # @param QuotaConsumer: 1为配额消耗者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaConsumer: Integer
        # @param CloudType: 账户类型，0为腾讯云账户，1为AWS账户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudType: Integer
        # @param SyncFrequency: 0为缺省值，1为10分钟，2为1小时，3为24小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncFrequency: Integer
        # @param IsExpired: 多云账户是否过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExpired: Boolean
        # @param PermissionList: 多云账户 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionList: Array
        # @param AuthType: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: Integer
        # @param TcMemberType: 0 腾讯云集团账户
        # 1 腾讯云接入账户
        # 2 非腾讯云
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcMemberType: Integer

        attr_accessor :Uin, :NickName, :NodeName, :AssetCount, :RiskCount, :AttackCount, :Role, :MemberId, :AppId, :JoinType, :CFWProtect, :WAFProtect, :CWPProtect, :Enable, :CSIPProtect, :QuotaConsumer, :CloudType, :SyncFrequency, :IsExpired, :PermissionList, :AuthType, :TcMemberType

        def initialize(uin=nil, nickname=nil, nodename=nil, assetcount=nil, riskcount=nil, attackcount=nil, role=nil, memberid=nil, appid=nil, jointype=nil, cfwprotect=nil, wafprotect=nil, cwpprotect=nil, enable=nil, csipprotect=nil, quotaconsumer=nil, cloudtype=nil, syncfrequency=nil, isexpired=nil, permissionlist=nil, authtype=nil, tcmembertype=nil)
          @Uin = uin
          @NickName = nickname
          @NodeName = nodename
          @AssetCount = assetcount
          @RiskCount = riskcount
          @AttackCount = attackcount
          @Role = role
          @MemberId = memberid
          @AppId = appid
          @JoinType = jointype
          @CFWProtect = cfwprotect
          @WAFProtect = wafprotect
          @CWPProtect = cwpprotect
          @Enable = enable
          @CSIPProtect = csipprotect
          @QuotaConsumer = quotaconsumer
          @CloudType = cloudtype
          @SyncFrequency = syncfrequency
          @IsExpired = isexpired
          @PermissionList = permissionlist
          @AuthType = authtype
          @TcMemberType = tcmembertype
        end

        def deserialize(params)
          @Uin = params['Uin']
          @NickName = params['NickName']
          @NodeName = params['NodeName']
          @AssetCount = params['AssetCount']
          @RiskCount = params['RiskCount']
          @AttackCount = params['AttackCount']
          @Role = params['Role']
          @MemberId = params['MemberId']
          @AppId = params['AppId']
          @JoinType = params['JoinType']
          @CFWProtect = params['CFWProtect']
          @WAFProtect = params['WAFProtect']
          @CWPProtect = params['CWPProtect']
          @Enable = params['Enable']
          @CSIPProtect = params['CSIPProtect']
          @QuotaConsumer = params['QuotaConsumer']
          @CloudType = params['CloudType']
          @SyncFrequency = params['SyncFrequency']
          @IsExpired = params['IsExpired']
          @PermissionList = params['PermissionList']
          @AuthType = params['AuthType']
          @TcMemberType = params['TcMemberType']
        end
      end

      # 端口风险高级配置项
      class PortRiskAdvanceCFGParamItem < TencentCloud::Common::AbstractModel
        # @param PortSets: 端口集合,以逗号分隔
        # @type PortSets: String
        # @param CheckType: 检测项类型，0-系统定义，1-用户自定义
        # @type CheckType: Integer
        # @param Detail: 检测项描述
        # @type Detail: String
        # @param Enable: 是否启用，1-启用，0-禁用
        # @type Enable: Integer

        attr_accessor :PortSets, :CheckType, :Detail, :Enable

        def initialize(portsets=nil, checktype=nil, detail=nil, enable=nil)
          @PortSets = portsets
          @CheckType = checktype
          @Detail = detail
          @Enable = enable
        end

        def deserialize(params)
          @PortSets = params['PortSets']
          @CheckType = params['CheckType']
          @Detail = params['Detail']
          @Enable = params['Enable']
        end
      end

      # 端口视角的端口风险对象
      class PortViewPortRisk < TencentCloud::Common::AbstractModel
        # @param NoHandleCount: 影响资产
        # @type NoHandleCount: Integer
        # @param Level: 风险等级
        # @type Level: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Component: 组件
        # @type Component: String
        # @param Port: 端口
        # @type Port: Integer
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Suggestion: 处置建议,0保持现状、1限制访问、2封禁端口
        # @type Suggestion: Integer
        # @param AffectAssetCount: 状态，0未处理、1已处置、2已忽略
        # @type AffectAssetCount: String
        # @param Id: 资产唯一id
        # @type Id: String
        # @param From: 资产子类型
        # @type From: String
        # @param Index: 前端索引
        # @type Index: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Service: 服务
        # @type Service: String

        attr_accessor :NoHandleCount, :Level, :Protocol, :Component, :Port, :RecentTime, :FirstTime, :Suggestion, :AffectAssetCount, :Id, :From, :Index, :AppId, :Nick, :Uin, :Service

        def initialize(nohandlecount=nil, level=nil, protocol=nil, component=nil, port=nil, recenttime=nil, firsttime=nil, suggestion=nil, affectassetcount=nil, id=nil, from=nil, index=nil, appid=nil, nick=nil, uin=nil, service=nil)
          @NoHandleCount = nohandlecount
          @Level = level
          @Protocol = protocol
          @Component = component
          @Port = port
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Suggestion = suggestion
          @AffectAssetCount = affectassetcount
          @Id = id
          @From = from
          @Index = index
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @Service = service
        end

        def deserialize(params)
          @NoHandleCount = params['NoHandleCount']
          @Level = params['Level']
          @Protocol = params['Protocol']
          @Component = params['Component']
          @Port = params['Port']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Suggestion = params['Suggestion']
          @AffectAssetCount = params['AffectAssetCount']
          @Id = params['Id']
          @From = params['From']
          @Index = params['Index']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @Service = params['Service']
        end
      end

      # 公网IP和域名资产列表key
      class PublicIpDomainListKey < TencentCloud::Common::AbstractModel
        # @param Asset: 资产值
        # @type Asset: String

        attr_accessor :Asset

        def initialize(asset=nil)
          @Asset = asset
        end

        def deserialize(params)
          @Asset = params['Asset']
        end
      end

      # 报告项key
      class ReportItemKey < TencentCloud::Common::AbstractModel
        # @param TaskLogList: 日志Id列表
        # @type TaskLogList: Array

        attr_accessor :TaskLogList

        def initialize(taskloglist=nil)
          @TaskLogList = taskloglist
        end

        def deserialize(params)
          @TaskLogList = params['TaskLogList']
        end
      end

      # 报告中的task_id list
      class ReportTaskIdList < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 任务id列表
        # @type TaskIdList: Array
        # @param AppId: 租户ID
        # @type AppId: String

        attr_accessor :TaskIdList, :AppId

        def initialize(taskidlist=nil, appid=nil)
          @TaskIdList = taskidlist
          @AppId = appid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @AppId = params['AppId']
        end
      end

      # 风险中心状态处理Key
      class RiskCenterStatusKey < TencentCloud::Common::AbstractModel
        # @param Id: 风险ID
        # @type Id: String
        # @param PublicIPDomain: 公网IP/域名
        # @type PublicIPDomain: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AppId: APP ID
        # @type AppId: String

        attr_accessor :Id, :PublicIPDomain, :InstanceId, :AppId

        def initialize(id=nil, publicipdomain=nil, instanceid=nil, appid=nil)
          @Id = id
          @PublicIPDomain = publicipdomain
          @InstanceId = instanceid
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @PublicIPDomain = params['PublicIPDomain']
          @InstanceId = params['InstanceId']
          @AppId = params['AppId']
        end
      end

      # 扫描任务详情
      class ScanTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param Status: 任务状态码：1等待开始  2正在扫描  3扫描出错 4扫描完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Progress: 任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param TaskTime: 任务完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTime: String
        # @param ReportId: 报告ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportId: String
        # @param ReportName: 报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportName: String
        # @param ScanPlan: 扫描计划，0-周期任务,1-立即扫描,2-定时扫描,3-自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanPlan: Integer
        # @param AssetCount: 关联的资产数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCount: Integer
        # @param AppId: APP ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param UIN: 用户主账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UIN: String
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String

        attr_accessor :TaskId, :TaskName, :Status, :Progress, :TaskTime, :ReportId, :ReportName, :ScanPlan, :AssetCount, :AppId, :UIN, :UserName

        def initialize(taskid=nil, taskname=nil, status=nil, progress=nil, tasktime=nil, reportid=nil, reportname=nil, scanplan=nil, assetcount=nil, appid=nil, uin=nil, username=nil)
          @TaskId = taskid
          @TaskName = taskname
          @Status = status
          @Progress = progress
          @TaskTime = tasktime
          @ReportId = reportid
          @ReportName = reportname
          @ScanPlan = scanplan
          @AssetCount = assetcount
          @AppId = appid
          @UIN = uin
          @UserName = username
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @Status = params['Status']
          @Progress = params['Progress']
          @TaskTime = params['TaskTime']
          @ReportId = params['ReportId']
          @ReportName = params['ReportName']
          @ScanPlan = params['ScanPlan']
          @AssetCount = params['AssetCount']
          @AppId = params['AppId']
          @UIN = params['UIN']
          @UserName = params['UserName']
        end
      end

      # 扫描任务列表展示信息
      class ScanTaskInfoList < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param StartTime: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ScanPlanContent: cron格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanPlanContent: String
        # @param TaskType: 0-周期任务,1-立即扫描,2-定时扫描,3-自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: Integer
        # @param InsertTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param SelfDefiningAssets: 自定义指定扫描资产信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfDefiningAssets: Array
        # @param PredictTime: 预估时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredictTime: Integer
        # @param PredictEndTime: 预估完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredictEndTime: String
        # @param ReportNumber: 报告数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportNumber: Integer
        # @param AssetNumber: 资产数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetNumber: Integer
        # @param ScanStatus: 扫描状态, 0-初始值，1-正在扫描，2-扫描完成，3-扫描出错，4-停止扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanStatus: Integer
        # @param Percent: 任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Float
        # @param ScanItem: port/poc/weakpass/webcontent/configrisk
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanItem: String
        # @param ScanAssetType: 0-全扫，1-指定资产扫，2-排除资产扫，3-自定义指定资产扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanAssetType: Integer
        # @param VSSTaskId: vss子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VSSTaskId: String
        # @param CSPMTaskId: cspm子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSPMTaskId: String
        # @param CWPPOCId: 主机漏扫子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPPOCId: String
        # @param CWPBlId: 主机基线子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPBlId: String
        # @param VSSTaskProcess: vss子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VSSTaskProcess: Integer
        # @param CSPMTaskProcess: cspm子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSPMTaskProcess: Integer
        # @param CWPPOCProcess: 主机漏扫子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPPOCProcess: Integer
        # @param CWPBlProcess: 主机基线子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPBlProcess: Integer
        # @param ErrorCode: 异常状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: Integer
        # @param ErrorInfo: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: String
        # @param StartDay: 周期任务开始的天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartDay: Integer
        # @param Frequency: 扫描频率,单位天,1-每天,7-每周,30-月,0-扫描一次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Frequency: Integer
        # @param CompleteNumber: 完成次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompleteNumber: Integer
        # @param CompleteAssetNumber: 已完成资产个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompleteAssetNumber: Integer
        # @param RiskCount: 风险数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCount: Integer
        # @param Assets: 资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Assets: Array
        # @param AppId: 用户Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param UIN: 用户主账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UIN: String
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param TaskMode: 体检模式，0-标准模式，1-快速模式，2-高级模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskMode: Integer
        # @param ScanFrom: 扫描来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanFrom: String
        # @param IsFree: 是否限免体检0不是，1是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFree: Integer
        # @param IsDelete: 是否可以删除，1-可以，0-不可以，对应多账户管理使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDelete: Integer
        # @param SourceType: 任务源类型，0-默认，1-小助手，2-体检项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: Integer

        attr_accessor :TaskName, :StartTime, :EndTime, :ScanPlanContent, :TaskType, :InsertTime, :TaskId, :SelfDefiningAssets, :PredictTime, :PredictEndTime, :ReportNumber, :AssetNumber, :ScanStatus, :Percent, :ScanItem, :ScanAssetType, :VSSTaskId, :CSPMTaskId, :CWPPOCId, :CWPBlId, :VSSTaskProcess, :CSPMTaskProcess, :CWPPOCProcess, :CWPBlProcess, :ErrorCode, :ErrorInfo, :StartDay, :Frequency, :CompleteNumber, :CompleteAssetNumber, :RiskCount, :Assets, :AppId, :UIN, :UserName, :TaskMode, :ScanFrom, :IsFree, :IsDelete, :SourceType

        def initialize(taskname=nil, starttime=nil, endtime=nil, scanplancontent=nil, tasktype=nil, inserttime=nil, taskid=nil, selfdefiningassets=nil, predicttime=nil, predictendtime=nil, reportnumber=nil, assetnumber=nil, scanstatus=nil, percent=nil, scanitem=nil, scanassettype=nil, vsstaskid=nil, cspmtaskid=nil, cwppocid=nil, cwpblid=nil, vsstaskprocess=nil, cspmtaskprocess=nil, cwppocprocess=nil, cwpblprocess=nil, errorcode=nil, errorinfo=nil, startday=nil, frequency=nil, completenumber=nil, completeassetnumber=nil, riskcount=nil, assets=nil, appid=nil, uin=nil, username=nil, taskmode=nil, scanfrom=nil, isfree=nil, isdelete=nil, sourcetype=nil)
          @TaskName = taskname
          @StartTime = starttime
          @EndTime = endtime
          @ScanPlanContent = scanplancontent
          @TaskType = tasktype
          @InsertTime = inserttime
          @TaskId = taskid
          @SelfDefiningAssets = selfdefiningassets
          @PredictTime = predicttime
          @PredictEndTime = predictendtime
          @ReportNumber = reportnumber
          @AssetNumber = assetnumber
          @ScanStatus = scanstatus
          @Percent = percent
          @ScanItem = scanitem
          @ScanAssetType = scanassettype
          @VSSTaskId = vsstaskid
          @CSPMTaskId = cspmtaskid
          @CWPPOCId = cwppocid
          @CWPBlId = cwpblid
          @VSSTaskProcess = vsstaskprocess
          @CSPMTaskProcess = cspmtaskprocess
          @CWPPOCProcess = cwppocprocess
          @CWPBlProcess = cwpblprocess
          @ErrorCode = errorcode
          @ErrorInfo = errorinfo
          @StartDay = startday
          @Frequency = frequency
          @CompleteNumber = completenumber
          @CompleteAssetNumber = completeassetnumber
          @RiskCount = riskcount
          @Assets = assets
          @AppId = appid
          @UIN = uin
          @UserName = username
          @TaskMode = taskmode
          @ScanFrom = scanfrom
          @IsFree = isfree
          @IsDelete = isdelete
          @SourceType = sourcetype
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ScanPlanContent = params['ScanPlanContent']
          @TaskType = params['TaskType']
          @InsertTime = params['InsertTime']
          @TaskId = params['TaskId']
          @SelfDefiningAssets = params['SelfDefiningAssets']
          @PredictTime = params['PredictTime']
          @PredictEndTime = params['PredictEndTime']
          @ReportNumber = params['ReportNumber']
          @AssetNumber = params['AssetNumber']
          @ScanStatus = params['ScanStatus']
          @Percent = params['Percent']
          @ScanItem = params['ScanItem']
          @ScanAssetType = params['ScanAssetType']
          @VSSTaskId = params['VSSTaskId']
          @CSPMTaskId = params['CSPMTaskId']
          @CWPPOCId = params['CWPPOCId']
          @CWPBlId = params['CWPBlId']
          @VSSTaskProcess = params['VSSTaskProcess']
          @CSPMTaskProcess = params['CSPMTaskProcess']
          @CWPPOCProcess = params['CWPPOCProcess']
          @CWPBlProcess = params['CWPBlProcess']
          @ErrorCode = params['ErrorCode']
          @ErrorInfo = params['ErrorInfo']
          @StartDay = params['StartDay']
          @Frequency = params['Frequency']
          @CompleteNumber = params['CompleteNumber']
          @CompleteAssetNumber = params['CompleteAssetNumber']
          @RiskCount = params['RiskCount']
          unless params['Assets'].nil?
            @Assets = []
            params['Assets'].each do |i|
              taskassetobject_tmp = TaskAssetObject.new
              taskassetobject_tmp.deserialize(i)
              @Assets << taskassetobject_tmp
            end
          end
          @AppId = params['AppId']
          @UIN = params['UIN']
          @UserName = params['UserName']
          @TaskMode = params['TaskMode']
          @ScanFrom = params['ScanFrom']
          @IsFree = params['IsFree']
          @IsDelete = params['IsDelete']
          @SourceType = params['SourceType']
        end
      end

      # 服务风险
      class ServerRisk < TencentCloud::Common::AbstractModel
        # @param ServiceTag: 测绘标签
        # @type ServiceTag: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Level: 风险等级
        # @type Level: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param RiskDetails: 风险详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDetails: String
        # @param Suggestion: 处置建议
        # @type Suggestion: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 资产唯一id
        # @type Id: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param ServiceSnapshot: 服务快照
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceSnapshot: String
        # @param Url: 服务访问的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Index: 列表索引值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param RiskList: 风险列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskList: Array
        # @param SuggestionList: 建议列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuggestionList: Array
        # @param StatusCode: HTTP响应状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCode: String

        attr_accessor :ServiceTag, :Port, :AffectAsset, :InstanceId, :InstanceName, :InstanceType, :Level, :Protocol, :Component, :Service, :RecentTime, :FirstTime, :RiskDetails, :Suggestion, :Status, :Id, :AppId, :Nick, :Uin, :ServiceSnapshot, :Url, :Index, :RiskList, :SuggestionList, :StatusCode

        def initialize(servicetag=nil, port=nil, affectasset=nil, instanceid=nil, instancename=nil, instancetype=nil, level=nil, protocol=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, riskdetails=nil, suggestion=nil, status=nil, id=nil, appid=nil, nick=nil, uin=nil, servicesnapshot=nil, url=nil, index=nil, risklist=nil, suggestionlist=nil, statuscode=nil)
          @ServiceTag = servicetag
          @Port = port
          @AffectAsset = affectasset
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @Level = level
          @Protocol = protocol
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @RiskDetails = riskdetails
          @Suggestion = suggestion
          @Status = status
          @Id = id
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @ServiceSnapshot = servicesnapshot
          @Url = url
          @Index = index
          @RiskList = risklist
          @SuggestionList = suggestionlist
          @StatusCode = statuscode
        end

        def deserialize(params)
          @ServiceTag = params['ServiceTag']
          @Port = params['Port']
          @AffectAsset = params['AffectAsset']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @Level = params['Level']
          @Protocol = params['Protocol']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @RiskDetails = params['RiskDetails']
          @Suggestion = params['Suggestion']
          @Status = params['Status']
          @Id = params['Id']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @ServiceSnapshot = params['ServiceSnapshot']
          @Url = params['Url']
          @Index = params['Index']
          unless params['RiskList'].nil?
            @RiskList = []
            params['RiskList'].each do |i|
              serverrisksuggestion_tmp = ServerRiskSuggestion.new
              serverrisksuggestion_tmp.deserialize(i)
              @RiskList << serverrisksuggestion_tmp
            end
          end
          unless params['SuggestionList'].nil?
            @SuggestionList = []
            params['SuggestionList'].each do |i|
              serverrisksuggestion_tmp = ServerRiskSuggestion.new
              serverrisksuggestion_tmp.deserialize(i)
              @SuggestionList << serverrisksuggestion_tmp
            end
          end
          @StatusCode = params['StatusCode']
        end
      end

      # 风险详情
      class ServerRiskSuggestion < TencentCloud::Common::AbstractModel
        # @param Title: 标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Body: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String

        attr_accessor :Title, :Body

        def initialize(title=nil, body=nil)
          @Title = title
          @Body = body
        end

        def deserialize(params)
          @Title = params['Title']
          @Body = params['Body']
        end
      end

      # 产品支持情况
      class ServiceSupport < TencentCloud::Common::AbstractModel
        # @param ServiceName: 产品名称:
        # "cfw_waf_virtual", "cwp_detect", "cwp_defense", "cwp_fix"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param SupportHandledCount: 已处理的资产总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportHandledCount: Integer
        # @param SupportTotalCount: 支持的资产总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportTotalCount: Integer
        # @param IsSupport: 是否支持该产品1支持；0不支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupport: Boolean

        attr_accessor :ServiceName, :SupportHandledCount, :SupportTotalCount, :IsSupport

        def initialize(servicename=nil, supporthandledcount=nil, supporttotalcount=nil, issupport=nil)
          @ServiceName = servicename
          @SupportHandledCount = supporthandledcount
          @SupportTotalCount = supporttotalcount
          @IsSupport = issupport
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @SupportHandledCount = params['SupportHandledCount']
          @SupportTotalCount = params['SupportTotalCount']
          @IsSupport = params['IsSupport']
        end
      end

      # StopRiskCenterTask请求参数结构体
      class StopRiskCenterTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 任务id 列表
        # @type TaskIdList: Array

        attr_accessor :TaskIdList

        def initialize(taskidlist=nil)
          @TaskIdList = taskidlist
        end

        def deserialize(params)
          unless params['TaskIdList'].nil?
            @TaskIdList = []
            params['TaskIdList'].each do |i|
              taskidlistkey_tmp = TaskIdListKey.new
              taskidlistkey_tmp.deserialize(i)
              @TaskIdList << taskidlistkey_tmp
            end
          end
        end
      end

      # StopRiskCenterTask返回参数结构体
      class StopRiskCenterTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: Status为0， 停止成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 子网资产
      class SubnetAsset < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param Region: 区域
        # @type Region: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param VpcName: 私有网络名
        # @type VpcName: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Nick: 昵称
        # @type Nick: String
        # @param CIDR: cidr
        # @type CIDR: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param CVM: cvm数
        # @type CVM: Integer
        # @param AvailableIp: 可用ip数
        # @type AvailableIp: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ConfigureRisk: 配置风险
        # @type ConfigureRisk: Integer
        # @param ScanTask: 任务数
        # @type ScanTask: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :Region, :VpcId, :VpcName, :Tag, :Nick, :CIDR, :Zone, :CVM, :AvailableIp, :CreateTime, :ConfigureRisk, :ScanTask, :LastScanTime, :IsCore, :IsNewAsset

        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, nick=nil, cidr=nil, zone=nil, cvm=nil, availableip=nil, createtime=nil, configurerisk=nil, scantask=nil, lastscantime=nil, iscore=nil, isnewasset=nil)
          @AppId = appid
          @Uin = uin
          @AssetId = assetid
          @AssetName = assetname
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @Tag = tag
          @Nick = nick
          @CIDR = cidr
          @Zone = zone
          @CVM = cvm
          @AvailableIp = availableip
          @CreateTime = createtime
          @ConfigureRisk = configurerisk
          @ScanTask = scantask
          @LastScanTime = lastscantime
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @Nick = params['Nick']
          @CIDR = params['CIDR']
          @Zone = params['Zone']
          @CVM = params['CVM']
          @AvailableIp = params['AvailableIp']
          @CreateTime = params['CreateTime']
          @ConfigureRisk = params['ConfigureRisk']
          @ScanTask = params['ScanTask']
          @LastScanTime = params['LastScanTime']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Name: 标签名称
        # @type Name: String
        # @param Value: 标签内容
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

      # 主机标签信息
      class Tags < TencentCloud::Common::AbstractModel
        # @param TagKey: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 无
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

      # 任务高级配置
      class TaskAdvanceCFG < TencentCloud::Common::AbstractModel
        # @param PortRisk: 端口风险高级配置
        # @type PortRisk: Array
        # @param VulRisk: 漏洞风险高级配置
        # @type VulRisk: Array
        # @param WeakPwdRisk: 弱口令风险高级配置
        # @type WeakPwdRisk: Array
        # @param CFGRisk: 配置风险高级配置
        # @type CFGRisk: Array

        attr_accessor :PortRisk, :VulRisk, :WeakPwdRisk, :CFGRisk

        def initialize(portrisk=nil, vulrisk=nil, weakpwdrisk=nil, cfgrisk=nil)
          @PortRisk = portrisk
          @VulRisk = vulrisk
          @WeakPwdRisk = weakpwdrisk
          @CFGRisk = cfgrisk
        end

        def deserialize(params)
          unless params['PortRisk'].nil?
            @PortRisk = []
            params['PortRisk'].each do |i|
              portriskadvancecfgparamitem_tmp = PortRiskAdvanceCFGParamItem.new
              portriskadvancecfgparamitem_tmp.deserialize(i)
              @PortRisk << portriskadvancecfgparamitem_tmp
            end
          end
          unless params['VulRisk'].nil?
            @VulRisk = []
            params['VulRisk'].each do |i|
              taskcentervulriskinputparam_tmp = TaskCenterVulRiskInputParam.new
              taskcentervulriskinputparam_tmp.deserialize(i)
              @VulRisk << taskcentervulriskinputparam_tmp
            end
          end
          unless params['WeakPwdRisk'].nil?
            @WeakPwdRisk = []
            params['WeakPwdRisk'].each do |i|
              taskcenterweakpwdriskinputparam_tmp = TaskCenterWeakPwdRiskInputParam.new
              taskcenterweakpwdriskinputparam_tmp.deserialize(i)
              @WeakPwdRisk << taskcenterweakpwdriskinputparam_tmp
            end
          end
          unless params['CFGRisk'].nil?
            @CFGRisk = []
            params['CFGRisk'].each do |i|
              taskcentercfgriskinputparam_tmp = TaskCenterCFGRiskInputParam.new
              taskcentercfgriskinputparam_tmp.deserialize(i)
              @CFGRisk << taskcentercfgriskinputparam_tmp
            end
          end
        end
      end

      # 任务资产项
      class TaskAssetObject < TencentCloud::Common::AbstractModel
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param InstanceType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param AssetType: 资产分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param Asset: ip/域名/资产id，数据库id等
        # @type Asset: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Arn: 多云资产唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Arn: String

        attr_accessor :AssetName, :InstanceType, :AssetType, :Asset, :Region, :Arn

        def initialize(assetname=nil, instancetype=nil, assettype=nil, asset=nil, region=nil, arn=nil)
          @AssetName = assetname
          @InstanceType = instancetype
          @AssetType = assettype
          @Asset = asset
          @Region = region
          @Arn = arn
        end

        def deserialize(params)
          @AssetName = params['AssetName']
          @InstanceType = params['InstanceType']
          @AssetType = params['AssetType']
          @Asset = params['Asset']
          @Region = params['Region']
          @Arn = params['Arn']
        end
      end

      # 配置风险高级配置
      class TaskCenterCFGRiskInputParam < TencentCloud::Common::AbstractModel
        # @param ItemId: 检测项ID
        # @type ItemId: String
        # @param Enable: 是否开启，0-不开启，1-开启
        # @type Enable: Integer
        # @param ResourceType: 资源类型
        # @type ResourceType: String

        attr_accessor :ItemId, :Enable, :ResourceType

        def initialize(itemid=nil, enable=nil, resourcetype=nil)
          @ItemId = itemid
          @Enable = enable
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @Enable = params['Enable']
          @ResourceType = params['ResourceType']
        end
      end

      # 漏洞风险高级配置
      class TaskCenterVulRiskInputParam < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险ID
        # @type RiskId: String
        # @param Enable: 是否开启，0-不开启，1-开启
        # @type Enable: Integer

        attr_accessor :RiskId, :Enable

        def initialize(riskid=nil, enable=nil)
          @RiskId = riskid
          @Enable = enable
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @Enable = params['Enable']
        end
      end

      # 弱口令风险高级配置
      class TaskCenterWeakPwdRiskInputParam < TencentCloud::Common::AbstractModel
        # @param CheckItemId: 检测项ID
        # @type CheckItemId: Integer
        # @param Enable: 是否开启，0-不开启，1-开启
        # @type Enable: Integer

        attr_accessor :CheckItemId, :Enable

        def initialize(checkitemid=nil, enable=nil)
          @CheckItemId = checkitemid
          @Enable = enable
        end

        def deserialize(params)
          @CheckItemId = params['CheckItemId']
          @Enable = params['Enable']
        end
      end

      # 任务ID列表Key
      class TaskIdListKey < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # 任务报告信息
      class TaskLogInfo < TencentCloud::Common::AbstractModel
        # @param TaskLogName: 报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLogName: String
        # @param TaskLogId: 报告ID
        # @type TaskLogId: String
        # @param AssetsNumber: 关联资产个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetsNumber: Integer
        # @param RiskNumber: 安全风险数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskNumber: Integer
        # @param Time: 报告生成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Status: 任务状态码：0 初始值  1正在扫描  2扫描完成  3扫描出错，4停止，5暂停，6该任务已被重启过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param TaskName: 关联任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param StartTime: 扫描开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param TaskCenterTaskId: 任务中心扫描任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskCenterTaskId: String
        # @param AppId: 租户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param UIN: 主账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UIN: String
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param ReportType: 报告类型： 1安全体检 2日报 3周报 4月报
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportType: Integer
        # @param TemplateId: 报告模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: Integer

        attr_accessor :TaskLogName, :TaskLogId, :AssetsNumber, :RiskNumber, :Time, :Status, :TaskName, :StartTime, :TaskCenterTaskId, :AppId, :UIN, :UserName, :ReportType, :TemplateId

        def initialize(tasklogname=nil, tasklogid=nil, assetsnumber=nil, risknumber=nil, time=nil, status=nil, taskname=nil, starttime=nil, taskcentertaskid=nil, appid=nil, uin=nil, username=nil, reporttype=nil, templateid=nil)
          @TaskLogName = tasklogname
          @TaskLogId = tasklogid
          @AssetsNumber = assetsnumber
          @RiskNumber = risknumber
          @Time = time
          @Status = status
          @TaskName = taskname
          @StartTime = starttime
          @TaskCenterTaskId = taskcentertaskid
          @AppId = appid
          @UIN = uin
          @UserName = username
          @ReportType = reporttype
          @TemplateId = templateid
        end

        def deserialize(params)
          @TaskLogName = params['TaskLogName']
          @TaskLogId = params['TaskLogId']
          @AssetsNumber = params['AssetsNumber']
          @RiskNumber = params['RiskNumber']
          @Time = params['Time']
          @Status = params['Status']
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @TaskCenterTaskId = params['TaskCenterTaskId']
          @AppId = params['AppId']
          @UIN = params['UIN']
          @UserName = params['UserName']
          @ReportType = params['ReportType']
          @TemplateId = params['TemplateId']
        end
      end

      # 报告pdf下载的临时链接
      class TaskLogURL < TencentCloud::Common::AbstractModel
        # @param URL: 报告下载临时链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URL: String
        # @param LogId: 任务报告id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogId: String
        # @param TaskLogName: 任务报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLogName: String
        # @param AppId: APP ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String

        attr_accessor :URL, :LogId, :TaskLogName, :AppId

        def initialize(url=nil, logid=nil, tasklogname=nil, appid=nil)
          @URL = url
          @LogId = logid
          @TaskLogName = tasklogname
          @AppId = appid
        end

        def deserialize(params)
          @URL = params['URL']
          @LogId = params['LogId']
          @TaskLogName = params['TaskLogName']
          @AppId = params['AppId']
        end
      end

      # 漏洞风险高级配置列表
      class VULRiskAdvanceCFGList < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险ID
        # @type RiskId: String
        # @param VULName: 漏洞名称
        # @type VULName: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param CheckFrom: 识别来源
        # @type CheckFrom: String
        # @param Enable: 是否启用，1-启用，0-禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param VULType: 风险类型
        # @type VULType: String
        # @param ImpactVersion: 影响版本
        # @type ImpactVersion: String
        # @param CVE: CVE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVE: String
        # @param VULTag: 漏洞标签
        # @type VULTag: Array
        # @param FixMethod: 修复方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixMethod: Array
        # @param ReleaseTime: 披露时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EMGCVulType: Integer
        # @param VULDescribe: 漏洞描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULDescribe: String
        # @param ImpactComponent: 影响组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactComponent: String
        # @param Payload: 漏洞Payload
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Payload: String
        # @param References: 技术参考
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type References: String
        # @param CVSS: cvss评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSS: String
        # @param AttackHeat: 攻击热度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackHeat: String
        # @param ServiceSupport: 安全产品支持情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceSupport: Array
        # @param RecentScanTime: 最新检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecentScanTime: String

        attr_accessor :RiskId, :VULName, :RiskLevel, :CheckFrom, :Enable, :VULType, :ImpactVersion, :CVE, :VULTag, :FixMethod, :ReleaseTime, :EMGCVulType, :VULDescribe, :ImpactComponent, :Payload, :References, :CVSS, :AttackHeat, :ServiceSupport, :RecentScanTime

        def initialize(riskid=nil, vulname=nil, risklevel=nil, checkfrom=nil, enable=nil, vultype=nil, impactversion=nil, cve=nil, vultag=nil, fixmethod=nil, releasetime=nil, emgcvultype=nil, vuldescribe=nil, impactcomponent=nil, payload=nil, references=nil, cvss=nil, attackheat=nil, servicesupport=nil, recentscantime=nil)
          @RiskId = riskid
          @VULName = vulname
          @RiskLevel = risklevel
          @CheckFrom = checkfrom
          @Enable = enable
          @VULType = vultype
          @ImpactVersion = impactversion
          @CVE = cve
          @VULTag = vultag
          @FixMethod = fixmethod
          @ReleaseTime = releasetime
          @EMGCVulType = emgcvultype
          @VULDescribe = vuldescribe
          @ImpactComponent = impactcomponent
          @Payload = payload
          @References = references
          @CVSS = cvss
          @AttackHeat = attackheat
          @ServiceSupport = servicesupport
          @RecentScanTime = recentscantime
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @VULName = params['VULName']
          @RiskLevel = params['RiskLevel']
          @CheckFrom = params['CheckFrom']
          @Enable = params['Enable']
          @VULType = params['VULType']
          @ImpactVersion = params['ImpactVersion']
          @CVE = params['CVE']
          @VULTag = params['VULTag']
          @FixMethod = params['FixMethod']
          @ReleaseTime = params['ReleaseTime']
          @EMGCVulType = params['EMGCVulType']
          @VULDescribe = params['VULDescribe']
          @ImpactComponent = params['ImpactComponent']
          @Payload = params['Payload']
          @References = params['References']
          @CVSS = params['CVSS']
          @AttackHeat = params['AttackHeat']
          unless params['ServiceSupport'].nil?
            @ServiceSupport = []
            params['ServiceSupport'].each do |i|
              servicesupport_tmp = ServiceSupport.new
              servicesupport_tmp.deserialize(i)
              @ServiceSupport << servicesupport_tmp
            end
          end
          @RecentScanTime = params['RecentScanTime']
        end
      end

      # 漏洞视角的漏洞风险对象
      class VULViewVULRisk < TencentCloud::Common::AbstractModel
        # @param Port: 端口
        # @type Port: String
        # @param NoHandleCount: 影响资产
        # @type NoHandleCount: Integer
        # @param Level: 风险等级
        # @type Level: String
        # @param Component: 组件
        # @type Component: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param AffectAssetCount: 影响资产数量
        # @type AffectAssetCount: Integer
        # @param Id: 风险ID
        # @type Id: String
        # @param From: 扫描来源，具体看接口返回枚举类型
        # @type From: String
        # @param Index: 前端索引
        # @type Index: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param VULName: 漏洞名
        # @type VULName: String
        # @param CVE: cve
        # @type CVE: String
        # @param Describe: 描述
        # @type Describe: String
        # @param Payload: 漏洞payload
        # @type Payload: String
        # @param AppName: 漏洞影响组件
        # @type AppName: String
        # @param References: 技术参考
        # @type References: String
        # @param AppVersion: 漏洞影响版本
        # @type AppVersion: String
        # @param VULURL: 风险点
        # @type VULURL: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Fix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fix: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EMGCVulType: Integer

        attr_accessor :Port, :NoHandleCount, :Level, :Component, :RecentTime, :FirstTime, :AffectAssetCount, :Id, :From, :Index, :VULType, :VULName, :CVE, :Describe, :Payload, :AppName, :References, :AppVersion, :VULURL, :Nick, :AppId, :Uin, :Fix, :EMGCVulType

        def initialize(port=nil, nohandlecount=nil, level=nil, component=nil, recenttime=nil, firsttime=nil, affectassetcount=nil, id=nil, from=nil, index=nil, vultype=nil, vulname=nil, cve=nil, describe=nil, payload=nil, appname=nil, references=nil, appversion=nil, vulurl=nil, nick=nil, appid=nil, uin=nil, fix=nil, emgcvultype=nil)
          @Port = port
          @NoHandleCount = nohandlecount
          @Level = level
          @Component = component
          @RecentTime = recenttime
          @FirstTime = firsttime
          @AffectAssetCount = affectassetcount
          @Id = id
          @From = from
          @Index = index
          @VULType = vultype
          @VULName = vulname
          @CVE = cve
          @Describe = describe
          @Payload = payload
          @AppName = appname
          @References = references
          @AppVersion = appversion
          @VULURL = vulurl
          @Nick = nick
          @AppId = appid
          @Uin = uin
          @Fix = fix
          @EMGCVulType = emgcvultype
        end

        def deserialize(params)
          @Port = params['Port']
          @NoHandleCount = params['NoHandleCount']
          @Level = params['Level']
          @Component = params['Component']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @AffectAssetCount = params['AffectAssetCount']
          @Id = params['Id']
          @From = params['From']
          @Index = params['Index']
          @VULType = params['VULType']
          @VULName = params['VULName']
          @CVE = params['CVE']
          @Describe = params['Describe']
          @Payload = params['Payload']
          @AppName = params['AppName']
          @References = params['References']
          @AppVersion = params['AppVersion']
          @VULURL = params['VULURL']
          @Nick = params['Nick']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Fix = params['Fix']
          @EMGCVulType = params['EMGCVulType']
        end
      end

      # vpc列表数据
      class Vpc < TencentCloud::Common::AbstractModel
        # @param Subnet: 子网(只支持32位)
        # @type Subnet: Integer
        # @param ConnectedVpc: 互通vpc(只支持32位)
        # @type ConnectedVpc: Integer
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Region: region区域
        # @type Region: String
        # @param CVM: 云服务器(只支持32位)
        # @type CVM: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param DNS: dns域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DNS: Array
        # @param AssetName: 资产名称
        # @type AssetName: String
        # @param CIDR: cidr网段
        # @type CIDR: String
        # @param CreateTime: 资产创建时间
        # @type CreateTime: String
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param Nick: 昵称
        # @type Nick: String
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param IsCore: 是否核心资产1是 2不是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer

        attr_accessor :Subnet, :ConnectedVpc, :AssetId, :Region, :CVM, :Tag, :DNS, :AssetName, :CIDR, :CreateTime, :AppId, :Uin, :Nick, :IsNewAsset, :IsCore

        def initialize(subnet=nil, connectedvpc=nil, assetid=nil, region=nil, cvm=nil, tag=nil, dns=nil, assetname=nil, cidr=nil, createtime=nil, appid=nil, uin=nil, nick=nil, isnewasset=nil, iscore=nil)
          @Subnet = subnet
          @ConnectedVpc = connectedvpc
          @AssetId = assetid
          @Region = region
          @CVM = cvm
          @Tag = tag
          @DNS = dns
          @AssetName = assetname
          @CIDR = cidr
          @CreateTime = createtime
          @AppId = appid
          @Uin = uin
          @Nick = nick
          @IsNewAsset = isnewasset
          @IsCore = iscore
        end

        def deserialize(params)
          @Subnet = params['Subnet']
          @ConnectedVpc = params['ConnectedVpc']
          @AssetId = params['AssetId']
          @Region = params['Region']
          @CVM = params['CVM']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @DNS = params['DNS']
          @AssetName = params['AssetName']
          @CIDR = params['CIDR']
          @CreateTime = params['CreateTime']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Nick = params['Nick']
          @IsNewAsset = params['IsNewAsset']
          @IsCore = params['IsCore']
        end
      end

      # 网站风险对象
      class WebsiteRisk < TencentCloud::Common::AbstractModel
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级
        # @type Level: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 资产唯一id
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param URL: 风险链接
        # @type URL: String
        # @param URLPath: 风险文件地址
        # @type URLPath: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param DetectEngine: 类型
        # @type DetectEngine: String
        # @param ResultDescribe: 结果描述
        # @type ResultDescribe: String
        # @param SourceURL: 源地址url
        # @type SourceURL: String
        # @param SourceURLPath: 源文件地址
        # @type SourceURLPath: String

        attr_accessor :AffectAsset, :Level, :RecentTime, :FirstTime, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :URL, :URLPath, :InstanceType, :DetectEngine, :ResultDescribe, :SourceURL, :SourceURLPath

        def initialize(affectasset=nil, level=nil, recenttime=nil, firsttime=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, url=nil, urlpath=nil, instancetype=nil, detectengine=nil, resultdescribe=nil, sourceurl=nil, sourceurlpath=nil)
          @AffectAsset = affectasset
          @Level = level
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @URL = url
          @URLPath = urlpath
          @InstanceType = instancetype
          @DetectEngine = detectengine
          @ResultDescribe = resultdescribe
          @SourceURL = sourceurl
          @SourceURLPath = sourceurlpath
        end

        def deserialize(params)
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @URL = params['URL']
          @URLPath = params['URLPath']
          @InstanceType = params['InstanceType']
          @DetectEngine = params['DetectEngine']
          @ResultDescribe = params['ResultDescribe']
          @SourceURL = params['SourceURL']
          @SourceURLPath = params['SourceURLPath']
        end
      end

      # 过滤条件
      class WhereFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤的项
        # @type Name: String
        # @param Values: 过滤的值
        # @type Values: Array
        # @param OperatorType: 中台定义：
        # 1等于 2大于 3小于 4大于等于 5小于等于 6不等于 9模糊匹配 13非模糊匹配 14按位与
        # 精确匹配填 7 模糊匹配填9
        # @type OperatorType: Integer

        attr_accessor :Name, :Values, :OperatorType

        def initialize(name=nil, values=nil, operatortype=nil)
          @Name = name
          @Values = values
          @OperatorType = operatortype
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @OperatorType = params['OperatorType']
        end
      end

    end
  end
end

