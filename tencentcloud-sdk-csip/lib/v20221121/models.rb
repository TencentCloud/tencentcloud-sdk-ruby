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

        attr_accessor :AssetId, :AssetName, :AssetType, :Region, :CWPStatus, :AssetCreateTime, :PublicIp, :PrivateIp, :VpcId, :VpcName, :AppId, :Uin, :NickName, :AvailableArea, :IsCore, :SubnetId, :SubnetName, :InstanceUuid, :InstanceQUuid, :OsName, :PartitionCount, :CPUInfo, :CPUSize, :CPULoad, :MemorySize, :MemoryLoad, :DiskSize, :DiskLoad, :AccountCount, :ProcessCount, :AppCount, :PortCount, :Attack, :Access, :Intercept, :InBandwidth, :OutBandwidth, :InFlow, :OutFlow, :LastScanTime, :NetWorkOut, :PortRisk, :VulnerabilityRisk, :ConfigurationRisk, :ScanTask, :Tag, :MemberId, :Os, :RiskExposure
        
        def initialize(assetid=nil, assetname=nil, assettype=nil, region=nil, cwpstatus=nil, assetcreatetime=nil, publicip=nil, privateip=nil, vpcid=nil, vpcname=nil, appid=nil, uin=nil, nickname=nil, availablearea=nil, iscore=nil, subnetid=nil, subnetname=nil, instanceuuid=nil, instancequuid=nil, osname=nil, partitioncount=nil, cpuinfo=nil, cpusize=nil, cpuload=nil, memorysize=nil, memoryload=nil, disksize=nil, diskload=nil, accountcount=nil, processcount=nil, appcount=nil, portcount=nil, attack=nil, access=nil, intercept=nil, inbandwidth=nil, outbandwidth=nil, inflow=nil, outflow=nil, lastscantime=nil, networkout=nil, portrisk=nil, vulnerabilityrisk=nil, configurationrisk=nil, scantask=nil, tag=nil, memberid=nil, os=nil, riskexposure=nil)
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

        attr_accessor :AssetId, :AssetName, :AssetType, :VpcId, :VpcName, :Region, :Domain, :AssetCreateTime, :LastScanTime, :ConfigurationRisk, :Attack, :Access, :ScanTask, :AppId, :Uin, :NickName, :Port, :Tag, :PrivateIp, :PublicIp, :Status, :IsCore
        
        def initialize(assetid=nil, assetname=nil, assettype=nil, vpcid=nil, vpcname=nil, region=nil, domain=nil, assetcreatetime=nil, lastscantime=nil, configurationrisk=nil, attack=nil, access=nil, scantask=nil, appid=nil, uin=nil, nickname=nil, port=nil, tag=nil, privateip=nil, publicip=nil, status=nil, iscore=nil)
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
        # @param Filter: -
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RegionList, :DefenseStatusList, :VpcList, :AssetTypeList, :SystemTypeList, :IpTypeList, :AppIdList, :ZoneList, :OsList, :RequestId
        
        def initialize(total=nil, data=nil, regionlist=nil, defensestatuslist=nil, vpclist=nil, assettypelist=nil, systemtypelist=nil, iptypelist=nil, appidlist=nil, zonelist=nil, oslist=nil, requestid=nil)
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

      # 扫描任务详情
      class ScanTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务日志Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务日志名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param Status: 任务状态码：1等待开始  2正在扫描  3扫描出错 4扫描完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Progress: 任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param TaskTime: 对应的展示时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTime: String
        # @param ReportId: 报表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportId: String
        # @param ReportName: 报表名称
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

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :Region, :VpcId, :VpcName, :Tag, :Nick, :CIDR, :Zone, :CVM, :AvailableIp, :CreateTime, :ConfigureRisk, :ScanTask, :LastScanTime, :IsCore
        
        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, nick=nil, cidr=nil, zone=nil, cvm=nil, availableip=nil, createtime=nil, configurerisk=nil, scantask=nil, lastscantime=nil, iscore=nil)
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

        attr_accessor :Subnet, :ConnectedVpc, :AssetId, :Region, :CVM, :Tag, :DNS, :AssetName, :CIDR, :CreateTime, :AppId, :Uin, :Nick
        
        def initialize(subnet=nil, connectedvpc=nil, assetid=nil, region=nil, cvm=nil, tag=nil, dns=nil, assetname=nil, cidr=nil, createtime=nil, appid=nil, uin=nil, nick=nil)
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
        end
      end

      # 过滤条件
      class WhereFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤的项
        # @type Name: String
        # @param Values: 过滤的值
        # @type Values: Array
        # @param OperatorType: 精确匹配填 7 模糊匹配填9 ， 兼容 中台定的结构
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

