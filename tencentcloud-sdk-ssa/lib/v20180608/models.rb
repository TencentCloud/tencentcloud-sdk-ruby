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
  module Ssa
    module V20180608
      # 聚合类型
      class AggregationObj < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param Bucket: 数组
        # @type Bucket: Array

        attr_accessor :Type, :Bucket
        
        def initialize(type=nil, bucket=nil)
          @Type = type
          @Bucket = bucket
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Bucket'].nil?
            @Bucket = []
            params['Bucket'].each do |i|
              bucket_tmp = Bucket.new
              bucket_tmp.deserialize(i)
              @Bucket << bucket_tmp
            end
          end
        end
      end

      # 告警详情
      class AlertDetail < TencentCloud::Common::AbstractModel
        # @param BaseInfo: 告警基础信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseInfo: :class:`Tencentcloud::Ssa.v20180608.models.AlertType`
        # @param Detail: 告警详情，json序列化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: String

        attr_accessor :BaseInfo, :Detail
        
        def initialize(baseinfo=nil, detail=nil)
          @BaseInfo = baseinfo
          @Detail = detail
        end

        def deserialize(params)
          unless params['BaseInfo'].nil?
            @BaseInfo = AlertType.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          @Detail = params['Detail']
        end
      end

      # 告警列表响应数据
      class AlertListData < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param AlertList: 返回列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertList: Array

        attr_accessor :Total, :AlertList
        
        def initialize(total=nil, alertlist=nil)
          @Total = total
          @AlertList = alertlist
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['AlertList'].nil?
            @AlertList = []
            params['AlertList'].each do |i|
              alerttype_tmp = AlertType.new
              alerttype_tmp.deserialize(i)
              @AlertList << alerttype_tmp
            end
          end
        end
      end

      # 告警字段
      class AlertType < TencentCloud::Common::AbstractModel
        # @param AlertTime: 标准时间格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertTime: String
        # @param AlertId: 唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertId: String
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetPrivateIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetPrivateIp: Array
        # @param AlertName: 名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertName: String
        # @param Level: 告警级别  0:未知 1:低危 2:中危 3:高危 4:严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Source: 来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param AttackChain: 攻击字段1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackChain: String
        # @param AttackId: 攻击字段2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackId: String
        # @param Concerns: 关注点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Concerns: Array
        # @param Action: 1：已防御，0,2：仅检测(0:告警类 1:拦截类 2:放行类 )
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: Integer
        # @param AttackResult: 0/空：未知，1：未成功，2：成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackResult: Integer
        # @param EventStatus: //调查状态  0/空：未启用，1：调查中，2：完成调查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventStatus: Integer
        # @param EventId: //关联事件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param Status: //处置状态  0：未关闭，1：已关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param ConcernMaliciousCount: 恶意实体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConcernMaliciousCount: Integer
        # @param ConcernVictimCount: 受害者实体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConcernVictimCount: Integer
        # @param VictimAssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VictimAssetType: String
        # @param SubType: 告警子类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubType: String
        # @param AttackName: 攻击技术名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackName: String
        # @param AssetPublicIp: 外网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetPublicIp: Array
        # @param AttackTactic: 攻击战术名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackTactic: String
        # @param VictimAssetSub: 资产子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VictimAssetSub: String

        attr_accessor :AlertTime, :AlertId, :AssetId, :AssetPrivateIp, :AlertName, :Level, :Type, :Source, :AttackChain, :AttackId, :Concerns, :Action, :AttackResult, :EventStatus, :EventId, :Status, :AssetName, :ConcernMaliciousCount, :ConcernVictimCount, :VictimAssetType, :SubType, :AttackName, :AssetPublicIp, :AttackTactic, :VictimAssetSub
        
        def initialize(alerttime=nil, alertid=nil, assetid=nil, assetprivateip=nil, alertname=nil, level=nil, type=nil, source=nil, attackchain=nil, attackid=nil, concerns=nil, action=nil, attackresult=nil, eventstatus=nil, eventid=nil, status=nil, assetname=nil, concernmaliciouscount=nil, concernvictimcount=nil, victimassettype=nil, subtype=nil, attackname=nil, assetpublicip=nil, attacktactic=nil, victimassetsub=nil)
          @AlertTime = alerttime
          @AlertId = alertid
          @AssetId = assetid
          @AssetPrivateIp = assetprivateip
          @AlertName = alertname
          @Level = level
          @Type = type
          @Source = source
          @AttackChain = attackchain
          @AttackId = attackid
          @Concerns = concerns
          @Action = action
          @AttackResult = attackresult
          @EventStatus = eventstatus
          @EventId = eventid
          @Status = status
          @AssetName = assetname
          @ConcernMaliciousCount = concernmaliciouscount
          @ConcernVictimCount = concernvictimcount
          @VictimAssetType = victimassettype
          @SubType = subtype
          @AttackName = attackname
          @AssetPublicIp = assetpublicip
          @AttackTactic = attacktactic
          @VictimAssetSub = victimassetsub
        end

        def deserialize(params)
          @AlertTime = params['AlertTime']
          @AlertId = params['AlertId']
          @AssetId = params['AssetId']
          @AssetPrivateIp = params['AssetPrivateIp']
          @AlertName = params['AlertName']
          @Level = params['Level']
          @Type = params['Type']
          @Source = params['Source']
          @AttackChain = params['AttackChain']
          @AttackId = params['AttackId']
          unless params['Concerns'].nil?
            @Concerns = []
            params['Concerns'].each do |i|
              concerninfo_tmp = ConcernInfo.new
              concerninfo_tmp.deserialize(i)
              @Concerns << concerninfo_tmp
            end
          end
          @Action = params['Action']
          @AttackResult = params['AttackResult']
          @EventStatus = params['EventStatus']
          @EventId = params['EventId']
          @Status = params['Status']
          @AssetName = params['AssetName']
          @ConcernMaliciousCount = params['ConcernMaliciousCount']
          @ConcernVictimCount = params['ConcernVictimCount']
          @VictimAssetType = params['VictimAssetType']
          @SubType = params['SubType']
          @AttackName = params['AttackName']
          @AssetPublicIp = params['AssetPublicIp']
          @AttackTactic = params['AttackTactic']
          @VictimAssetSub = params['VictimAssetSub']
        end
      end

      # 资产类型
      class Asset < TencentCloud::Common::AbstractModel
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Name: 名字
        # @type Name: String
        # @param AssetRegionName: 区域
        # @type AssetRegionName: String
        # @param AssetVpcid: 所属网络
        # @type AssetVpcid: String
        # @param InstanceType: 主机类型
        # @type InstanceType: String
        # @param InstanceState: 主机状态
        # @type InstanceState: String
        # @param EngineVersion: 引擎版本
        # @type EngineVersion: String
        # @param Id: 数据库标识
        # @type Id: String
        # @param Tag: 标签
        # @type Tag: Array
        # @param AssetCspmRiskNum: 配置风险统计数
        # @type AssetCspmRiskNum: Integer
        # @param PublicIpAddresses: 主机IP
        # @type PublicIpAddresses: Array
        # @param AssetUniqid: 资产唯一标识
        # @type AssetUniqid: String
        # @param ChargeType: 付费类型
        # @type ChargeType: String
        # @param AssetEventNum: 安全事件统计数
        # @type AssetEventNum: Integer
        # @param AssetVulNum: 漏洞统计数
        # @type AssetVulNum: Integer
        # @param PrivateIpAddresses: 主机IP内网
        # @type PrivateIpAddresses: Array
        # @param GroupName: 所属分组
        # @type GroupName: String
        # @param SsaAssetDiscoverTime: 发现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaAssetDiscoverTime: String
        # @param SsaAssetDeleteTime: 下线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaAssetDeleteTime: String
        # @param IsNew: 是否是新增资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNew: Boolean
        # @param AssetSubnetId: 所属子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetSubnetId: String
        # @param AssetSubnetName: 子网名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetSubnetName: String
        # @param AssetVpcName: vpc名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetVpcName: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: Integer
        # @param NameSpace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameSpace: String
        # @param LoadBalancerType: 负载均衡实例的网络类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param LoadBalancerVips: 负载均衡实例的vip列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerVips: Array
        # @param AssetIpv6: ipv6信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetIpv6: Array
        # @param SSHRisk: ssh端口暴露风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSHRisk: String
        # @param RDPRisk: rdp端口暴露风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RDPRisk: String
        # @param EventRisk: 资产失陷事件风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventRisk: String

        attr_accessor :AssetType, :Name, :AssetRegionName, :AssetVpcid, :InstanceType, :InstanceState, :EngineVersion, :Id, :Tag, :AssetCspmRiskNum, :PublicIpAddresses, :AssetUniqid, :ChargeType, :AssetEventNum, :AssetVulNum, :PrivateIpAddresses, :GroupName, :SsaAssetDiscoverTime, :SsaAssetDeleteTime, :IsNew, :AssetSubnetId, :AssetSubnetName, :AssetVpcName, :ClusterType, :NameSpace, :LoadBalancerType, :LoadBalancerVips, :AssetIpv6, :SSHRisk, :RDPRisk, :EventRisk
        
        def initialize(assettype=nil, name=nil, assetregionname=nil, assetvpcid=nil, instancetype=nil, instancestate=nil, engineversion=nil, id=nil, tag=nil, assetcspmrisknum=nil, publicipaddresses=nil, assetuniqid=nil, chargetype=nil, asseteventnum=nil, assetvulnum=nil, privateipaddresses=nil, groupname=nil, ssaassetdiscovertime=nil, ssaassetdeletetime=nil, isnew=nil, assetsubnetid=nil, assetsubnetname=nil, assetvpcname=nil, clustertype=nil, namespace=nil, loadbalancertype=nil, loadbalancervips=nil, assetipv6=nil, sshrisk=nil, rdprisk=nil, eventrisk=nil)
          @AssetType = assettype
          @Name = name
          @AssetRegionName = assetregionname
          @AssetVpcid = assetvpcid
          @InstanceType = instancetype
          @InstanceState = instancestate
          @EngineVersion = engineversion
          @Id = id
          @Tag = tag
          @AssetCspmRiskNum = assetcspmrisknum
          @PublicIpAddresses = publicipaddresses
          @AssetUniqid = assetuniqid
          @ChargeType = chargetype
          @AssetEventNum = asseteventnum
          @AssetVulNum = assetvulnum
          @PrivateIpAddresses = privateipaddresses
          @GroupName = groupname
          @SsaAssetDiscoverTime = ssaassetdiscovertime
          @SsaAssetDeleteTime = ssaassetdeletetime
          @IsNew = isnew
          @AssetSubnetId = assetsubnetid
          @AssetSubnetName = assetsubnetname
          @AssetVpcName = assetvpcname
          @ClusterType = clustertype
          @NameSpace = namespace
          @LoadBalancerType = loadbalancertype
          @LoadBalancerVips = loadbalancervips
          @AssetIpv6 = assetipv6
          @SSHRisk = sshrisk
          @RDPRisk = rdprisk
          @EventRisk = eventrisk
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @Name = params['Name']
          @AssetRegionName = params['AssetRegionName']
          @AssetVpcid = params['AssetVpcid']
          @InstanceType = params['InstanceType']
          @InstanceState = params['InstanceState']
          @EngineVersion = params['EngineVersion']
          @Id = params['Id']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @AssetCspmRiskNum = params['AssetCspmRiskNum']
          @PublicIpAddresses = params['PublicIpAddresses']
          @AssetUniqid = params['AssetUniqid']
          @ChargeType = params['ChargeType']
          @AssetEventNum = params['AssetEventNum']
          @AssetVulNum = params['AssetVulNum']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @GroupName = params['GroupName']
          @SsaAssetDiscoverTime = params['SsaAssetDiscoverTime']
          @SsaAssetDeleteTime = params['SsaAssetDeleteTime']
          @IsNew = params['IsNew']
          @AssetSubnetId = params['AssetSubnetId']
          @AssetSubnetName = params['AssetSubnetName']
          @AssetVpcName = params['AssetVpcName']
          @ClusterType = params['ClusterType']
          @NameSpace = params['NameSpace']
          @LoadBalancerType = params['LoadBalancerType']
          @LoadBalancerVips = params['LoadBalancerVips']
          @AssetIpv6 = params['AssetIpv6']
          @SSHRisk = params['SSHRisk']
          @RDPRisk = params['RDPRisk']
          @EventRisk = params['EventRisk']
        end
      end

      # 资产详情信息
      class AssetDetail < TencentCloud::Common::AbstractModel
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Name: 名字
        # @type Name: String
        # @param Region: 区域
        # @type Region: String
        # @param VpcId: 所属网络
        # @type VpcId: String
        # @param InstanceType: 主机类型
        # @type InstanceType: String
        # @param InstanceState: 主机状态
        # @type InstanceState: String
        # @param PublicIpAddresses: 主机IP-公网
        # @type PublicIpAddresses: Array
        # @param EngineVersion: 引擎版本
        # @type EngineVersion: String
        # @param Id: 标识
        # @type Id: String
        # @param Tag: 标签
        # @type Tag: Array
        # @param Vip: 内网IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param LoadBalancerVips: 负载均衡示例的vip列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerVips: Array
        # @param Uin: 账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: Integer
        # @param CreationDate: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationDate: String
        # @param Domain: 访问域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param AssetUniqid: 资产唯一id
        # @type AssetUniqid: String
        # @param InstanceId: 关联实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DiskType: 配置硬盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskSize: 配置硬盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param AssetStatus: 云硬盘/证书状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetStatus: String
        # @param CertType: 证书类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertType: String
        # @param ProjectName: 所属项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param CertEndTime: 到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ProductType: nosql引擎/版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductType: Integer
        # @param PrivateIpAddresses: 主机IP-内网
        # @type PrivateIpAddresses: Array
        # @param ValidityPeriod: 证书有效期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param GroupName: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Port: 端口服务数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Array
        # @param RiskConfig: 配置风险数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskConfig: Array
        # @param Event: 相关待处理事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Event: String
        # @param Vul: 相关待处理漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vul: String
        # @param SsaAssetDiscoverTime: 资产发现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaAssetDiscoverTime: String
        # @param AssetSubnetId: 所属子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetSubnetId: String
        # @param AssetSubnetName: 子网名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetSubnetName: String
        # @param AssetVpcName: vpc名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetVpcName: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: Integer
        # @param NameSpace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameSpace: String
        # @param AssetCreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param LoadBalancerType: 负载均衡网络类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param AssetIpv6: ipv6信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetIpv6: Array
        # @param SSHRisk: ssh风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSHRisk: String
        # @param RDPRisk: rdp风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RDPRisk: String
        # @param EventRisk: 安全事件风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventRisk: String
        # @param AssetVulNum: 漏洞数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetVulNum: Integer

        attr_accessor :AssetType, :Name, :Region, :VpcId, :InstanceType, :InstanceState, :PublicIpAddresses, :EngineVersion, :Id, :Tag, :Vip, :Status, :LoadBalancerVips, :Uin, :CreationDate, :Domain, :AssetUniqid, :InstanceId, :DiskType, :DiskSize, :AssetStatus, :CertType, :ProjectName, :CertEndTime, :ProductType, :PrivateIpAddresses, :ValidityPeriod, :GroupName, :Port, :RiskConfig, :Event, :Vul, :SsaAssetDiscoverTime, :AssetSubnetId, :AssetSubnetName, :AssetVpcName, :ClusterType, :NameSpace, :AssetCreateTime, :LoadBalancerType, :AssetIpv6, :SSHRisk, :RDPRisk, :EventRisk, :AssetVulNum
        
        def initialize(assettype=nil, name=nil, region=nil, vpcid=nil, instancetype=nil, instancestate=nil, publicipaddresses=nil, engineversion=nil, id=nil, tag=nil, vip=nil, status=nil, loadbalancervips=nil, uin=nil, creationdate=nil, domain=nil, assetuniqid=nil, instanceid=nil, disktype=nil, disksize=nil, assetstatus=nil, certtype=nil, projectname=nil, certendtime=nil, producttype=nil, privateipaddresses=nil, validityperiod=nil, groupname=nil, port=nil, riskconfig=nil, event=nil, vul=nil, ssaassetdiscovertime=nil, assetsubnetid=nil, assetsubnetname=nil, assetvpcname=nil, clustertype=nil, namespace=nil, assetcreatetime=nil, loadbalancertype=nil, assetipv6=nil, sshrisk=nil, rdprisk=nil, eventrisk=nil, assetvulnum=nil)
          @AssetType = assettype
          @Name = name
          @Region = region
          @VpcId = vpcid
          @InstanceType = instancetype
          @InstanceState = instancestate
          @PublicIpAddresses = publicipaddresses
          @EngineVersion = engineversion
          @Id = id
          @Tag = tag
          @Vip = vip
          @Status = status
          @LoadBalancerVips = loadbalancervips
          @Uin = uin
          @CreationDate = creationdate
          @Domain = domain
          @AssetUniqid = assetuniqid
          @InstanceId = instanceid
          @DiskType = disktype
          @DiskSize = disksize
          @AssetStatus = assetstatus
          @CertType = certtype
          @ProjectName = projectname
          @CertEndTime = certendtime
          @ProductType = producttype
          @PrivateIpAddresses = privateipaddresses
          @ValidityPeriod = validityperiod
          @GroupName = groupname
          @Port = port
          @RiskConfig = riskconfig
          @Event = event
          @Vul = vul
          @SsaAssetDiscoverTime = ssaassetdiscovertime
          @AssetSubnetId = assetsubnetid
          @AssetSubnetName = assetsubnetname
          @AssetVpcName = assetvpcname
          @ClusterType = clustertype
          @NameSpace = namespace
          @AssetCreateTime = assetcreatetime
          @LoadBalancerType = loadbalancertype
          @AssetIpv6 = assetipv6
          @SSHRisk = sshrisk
          @RDPRisk = rdprisk
          @EventRisk = eventrisk
          @AssetVulNum = assetvulnum
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @Name = params['Name']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @InstanceType = params['InstanceType']
          @InstanceState = params['InstanceState']
          @PublicIpAddresses = params['PublicIpAddresses']
          @EngineVersion = params['EngineVersion']
          @Id = params['Id']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @Vip = params['Vip']
          @Status = params['Status']
          @LoadBalancerVips = params['LoadBalancerVips']
          @Uin = params['Uin']
          @CreationDate = params['CreationDate']
          @Domain = params['Domain']
          @AssetUniqid = params['AssetUniqid']
          @InstanceId = params['InstanceId']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @AssetStatus = params['AssetStatus']
          @CertType = params['CertType']
          @ProjectName = params['ProjectName']
          @CertEndTime = params['CertEndTime']
          @ProductType = params['ProductType']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @ValidityPeriod = params['ValidityPeriod']
          @GroupName = params['GroupName']
          @Port = params['Port']
          @RiskConfig = params['RiskConfig']
          @Event = params['Event']
          @Vul = params['Vul']
          @SsaAssetDiscoverTime = params['SsaAssetDiscoverTime']
          @AssetSubnetId = params['AssetSubnetId']
          @AssetSubnetName = params['AssetSubnetName']
          @AssetVpcName = params['AssetVpcName']
          @ClusterType = params['ClusterType']
          @NameSpace = params['NameSpace']
          @AssetCreateTime = params['AssetCreateTime']
          @LoadBalancerType = params['LoadBalancerType']
          @AssetIpv6 = params['AssetIpv6']
          @SSHRisk = params['SSHRisk']
          @RDPRisk = params['RDPRisk']
          @EventRisk = params['EventRisk']
          @AssetVulNum = params['AssetVulNum']
        end
      end

      # 资产列表
      class AssetList < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 资产数组
        # @type List: Array

        attr_accessor :Total, :List
        
        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              asset_tmp = Asset.new
              asset_tmp.deserialize(i)
              @List << asset_tmp
            end
          end
        end
      end

      # 资产查询过滤参数
      class AssetQueryFilter < TencentCloud::Common::AbstractModel
        # @param Filter: 查询参数
        # @type Filter: Array
        # @param Logic: 查询连接符，1 and  ，2 or
        # @type Logic: Integer

        attr_accessor :Filter, :Logic
        
        def initialize(filter=nil, logic=nil)
          @Filter = filter
          @Logic = logic
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filter << queryfilter_tmp
            end
          end
          @Logic = params['Logic']
        end
      end

      # 资产测绘结果统计
      class AssetTypeStatistic < TencentCloud::Common::AbstractModel
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param AssetCount: 统计计数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCount: Integer

        attr_accessor :AssetType, :AssetCount
        
        def initialize(assettype=nil, assetcount=nil)
          @AssetType = assettype
          @AssetCount = assetcount
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @AssetCount = params['AssetCount']
        end
      end

      # es聚合数据类型
      class Bucket < TencentCloud::Common::AbstractModel
        # @param Key: key
        # @type Key: String
        # @param Count: 数量
        # @type Count: Integer

        attr_accessor :Key, :Count
        
        def initialize(key=nil, count=nil)
          @Key = key
          @Count = count
        end

        def deserialize(params)
          @Key = params['Key']
          @Count = params['Count']
        end
      end

      # 检查项资产组每一项
      class CheckAssetItem < TencentCloud::Common::AbstractModel
        # @param Id: 检查项下资产组ID
        # @type Id: Integer
        # @param Instid: 资产组实例id
        # @type Instid: String
        # @param Url: 处置跳转URL
        # @type Url: String
        # @param Taskid: 检查任务id
        # @type Taskid: String
        # @param Result: 检查结果
        # @type Result: Integer
        # @param Updatetime: 更新时间
        # @type Updatetime: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param IsIgnore: 是否忽略
        # @type IsIgnore: Integer
        # @param IsChecked: 检查状态
        # @type IsChecked: Integer
        # @param AssetInfo: 资产组信息
        # @type AssetInfo: String
        # @param AssetId: 资产组ES的_id
        # @type AssetId: String
        # @param Detail: 详情
        # @type Detail: String
        # @param Remarks: 备注内容
        # @type Remarks: String

        attr_accessor :Id, :Instid, :Url, :Taskid, :Result, :Updatetime, :Tag, :IsIgnore, :IsChecked, :AssetInfo, :AssetId, :Detail, :Remarks
        
        def initialize(id=nil, instid=nil, url=nil, taskid=nil, result=nil, updatetime=nil, tag=nil, isignore=nil, ischecked=nil, assetinfo=nil, assetid=nil, detail=nil, remarks=nil)
          @Id = id
          @Instid = instid
          @Url = url
          @Taskid = taskid
          @Result = result
          @Updatetime = updatetime
          @Tag = tag
          @IsIgnore = isignore
          @IsChecked = ischecked
          @AssetInfo = assetinfo
          @AssetId = assetid
          @Detail = detail
          @Remarks = remarks
        end

        def deserialize(params)
          @Id = params['Id']
          @Instid = params['Instid']
          @Url = params['Url']
          @Taskid = params['Taskid']
          @Result = params['Result']
          @Updatetime = params['Updatetime']
          @Tag = params['Tag']
          @IsIgnore = params['IsIgnore']
          @IsChecked = params['IsChecked']
          @AssetInfo = params['AssetInfo']
          @AssetId = params['AssetId']
          @Detail = params['Detail']
          @Remarks = params['Remarks']
        end
      end

      # 云安全配置检查项详情
      class CheckConfigDetail < TencentCloud::Common::AbstractModel
        # @param Id: 检查项Id
        # @type Id: String
        # @param CheckName: 检查项名称
        # @type CheckName: String
        # @param Content: 检查项内容
        # @type Content: String
        # @param Method: 检查项处置方案
        # @type Method: String
        # @param Doc: 检查项帮助文档
        # @type Doc: String
        # @param ErrorCount: 未通过总数
        # @type ErrorCount: Integer
        # @param IsPass: 是否通过检查
        # @type IsPass: Integer
        # @param SafeCount: 通过检查项
        # @type SafeCount: Integer
        # @param IgnoreCount: 忽略检查项
        # @type IgnoreCount: Integer
        # @param RiskCount: 风险检查项
        # @type RiskCount: Integer
        # @param NameEn: 检查项英文
        # @type NameEn: String
        # @param AssetType: 检查项类型
        # @type AssetType: String
        # @param ResCount: res_count
        # @type ResCount: Integer
        # @param IsIgnore: 是否忽略
        # @type IsIgnore: Integer

        attr_accessor :Id, :CheckName, :Content, :Method, :Doc, :ErrorCount, :IsPass, :SafeCount, :IgnoreCount, :RiskCount, :NameEn, :AssetType, :ResCount, :IsIgnore
        
        def initialize(id=nil, checkname=nil, content=nil, method=nil, doc=nil, errorcount=nil, ispass=nil, safecount=nil, ignorecount=nil, riskcount=nil, nameen=nil, assettype=nil, rescount=nil, isignore=nil)
          @Id = id
          @CheckName = checkname
          @Content = content
          @Method = method
          @Doc = doc
          @ErrorCount = errorcount
          @IsPass = ispass
          @SafeCount = safecount
          @IgnoreCount = ignorecount
          @RiskCount = riskcount
          @NameEn = nameen
          @AssetType = assettype
          @ResCount = rescount
          @IsIgnore = isignore
        end

        def deserialize(params)
          @Id = params['Id']
          @CheckName = params['CheckName']
          @Content = params['Content']
          @Method = params['Method']
          @Doc = params['Doc']
          @ErrorCount = params['ErrorCount']
          @IsPass = params['IsPass']
          @SafeCount = params['SafeCount']
          @IgnoreCount = params['IgnoreCount']
          @RiskCount = params['RiskCount']
          @NameEn = params['NameEn']
          @AssetType = params['AssetType']
          @ResCount = params['ResCount']
          @IsIgnore = params['IsIgnore']
        end
      end

      # 等保资产组记录
      class ComplianceCheckDetail < TencentCloud::Common::AbstractModel
        # @param Id: 检查项ID
        # @type Id: String
        # @param Category: 检查项类别
        # @type Category: String
        # @param Type: 检查项类型
        # @type Type: String
        # @param ErrorCount: 不通过总数
        # @type ErrorCount: Integer
        # @param NameEn: 检查项英文名
        # @type NameEn: String
        # @param CheckName: 检查项名称
        # @type CheckName: String
        # @param Method: 检查项处置方式
        # @type Method: String
        # @param Doc: 帮助文档
        # @type Doc: String
        # @param SafeCount: 通过总数
        # @type SafeCount: Integer
        # @param Content: 检查项检查内容
        # @type Content: String
        # @param IsPass: 是否通过检测
        # @type IsPass: Integer
        # @param IgnoreCount: 忽略总数
        # @type IgnoreCount: Integer
        # @param RiskCount: 风险总数
        # @type RiskCount: Integer
        # @param LastCheckTime: 最近一次检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param AssetType: 资产组类型
        # @type AssetType: String
        # @param ResCount: res_count
        # @type ResCount: Integer
        # @param UUID: 检查项UUID
        # @type UUID: String
        # @param StandardItem: 标准项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardItem: String
        # @param Chapter: 章节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Chapter: String
        # @param AssetTypeDesc: 资产类型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTypeDesc: String
        # @param IsIgnore: 是否忽略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsIgnore: Integer
        # @param RiskItem: 风险项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskItem: String
        # @param Title: 合规检查项完整名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String

        attr_accessor :Id, :Category, :Type, :ErrorCount, :NameEn, :CheckName, :Method, :Doc, :SafeCount, :Content, :IsPass, :IgnoreCount, :RiskCount, :LastCheckTime, :AssetType, :ResCount, :UUID, :StandardItem, :Chapter, :AssetTypeDesc, :IsIgnore, :RiskItem, :Title
        
        def initialize(id=nil, category=nil, type=nil, errorcount=nil, nameen=nil, checkname=nil, method=nil, doc=nil, safecount=nil, content=nil, ispass=nil, ignorecount=nil, riskcount=nil, lastchecktime=nil, assettype=nil, rescount=nil, uuid=nil, standarditem=nil, chapter=nil, assettypedesc=nil, isignore=nil, riskitem=nil, title=nil)
          @Id = id
          @Category = category
          @Type = type
          @ErrorCount = errorcount
          @NameEn = nameen
          @CheckName = checkname
          @Method = method
          @Doc = doc
          @SafeCount = safecount
          @Content = content
          @IsPass = ispass
          @IgnoreCount = ignorecount
          @RiskCount = riskcount
          @LastCheckTime = lastchecktime
          @AssetType = assettype
          @ResCount = rescount
          @UUID = uuid
          @StandardItem = standarditem
          @Chapter = chapter
          @AssetTypeDesc = assettypedesc
          @IsIgnore = isignore
          @RiskItem = riskitem
          @Title = title
        end

        def deserialize(params)
          @Id = params['Id']
          @Category = params['Category']
          @Type = params['Type']
          @ErrorCount = params['ErrorCount']
          @NameEn = params['NameEn']
          @CheckName = params['CheckName']
          @Method = params['Method']
          @Doc = params['Doc']
          @SafeCount = params['SafeCount']
          @Content = params['Content']
          @IsPass = params['IsPass']
          @IgnoreCount = params['IgnoreCount']
          @RiskCount = params['RiskCount']
          @LastCheckTime = params['LastCheckTime']
          @AssetType = params['AssetType']
          @ResCount = params['ResCount']
          @UUID = params['UUID']
          @StandardItem = params['StandardItem']
          @Chapter = params['Chapter']
          @AssetTypeDesc = params['AssetTypeDesc']
          @IsIgnore = params['IsIgnore']
          @RiskItem = params['RiskItem']
          @Title = params['Title']
        end
      end

      # 关注点类型
      class ConcernInfo < TencentCloud::Common::AbstractModel
        # @param ConcernType: 关注点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConcernType: Integer
        # @param EntityType: 实体类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityType: Integer
        # @param Concern: 关注点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Concern: String
        # @param StatisticsCount: 最近数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticsCount: Integer
        # @param SearchData: 可疑关注点字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchData: String
        # @param IpCountryIso: 可疑关注点字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpCountryIso: String
        # @param IpProvinceIso: 可疑关注点字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpProvinceIso: String
        # @param IpCity: 可疑关注点字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpCity: String
        # @param EventSubType: 可疑关注点字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventSubType: String

        attr_accessor :ConcernType, :EntityType, :Concern, :StatisticsCount, :SearchData, :IpCountryIso, :IpProvinceIso, :IpCity, :EventSubType
        
        def initialize(concerntype=nil, entitytype=nil, concern=nil, statisticscount=nil, searchdata=nil, ipcountryiso=nil, ipprovinceiso=nil, ipcity=nil, eventsubtype=nil)
          @ConcernType = concerntype
          @EntityType = entitytype
          @Concern = concern
          @StatisticsCount = statisticscount
          @SearchData = searchdata
          @IpCountryIso = ipcountryiso
          @IpProvinceIso = ipprovinceiso
          @IpCity = ipcity
          @EventSubType = eventsubtype
        end

        def deserialize(params)
          @ConcernType = params['ConcernType']
          @EntityType = params['EntityType']
          @Concern = params['Concern']
          @StatisticsCount = params['StatisticsCount']
          @SearchData = params['SearchData']
          @IpCountryIso = params['IpCountryIso']
          @IpProvinceIso = params['IpProvinceIso']
          @IpCity = params['IpCity']
          @EventSubType = params['EventSubType']
        end
      end

      # 资产测绘对象
      class DataAssetMapping < TencentCloud::Common::AbstractModel
        # @param AssetIp: 资产主IP地址(公网IP)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetIp: String
        # @param AssetName: 资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param Instid: 资产ID(各模块间通用)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instid: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param AssetRegionEn: 资产可用区(英文)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetRegionEn: String
        # @param AssetRegionCn: 资产可用区(中文)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetRegionCn: String
        # @param AssetNetwork: 资产所属网络
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetNetwork: String
        # @param AssetStatusEn: 资产运行状态(英文)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetStatusEn: String
        # @param AssetStatusCn: 资产运行状态(中文)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetStatusCn: String
        # @param IsWhite: 是否白名单：“True”为白名单不测绘，默认“False”正常测绘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWhite: String
        # @param Status: 资产测绘状态(“unstart”未开始/“running”测绘中/“finish”已完成/“abandoned”任务中止)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Time: 最近更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Tag: 资产标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Group: 资产组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Group: Array
        # @param Port: 端口和服务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param Component: 组件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Component: String
        # @param AssetInstanceType: 资产实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetInstanceType: String
        # @param IsIntranet: 资产是否是内网类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsIntranet: Integer

        attr_accessor :AssetIp, :AssetName, :Instid, :AssetType, :AssetRegionEn, :AssetRegionCn, :AssetNetwork, :AssetStatusEn, :AssetStatusCn, :IsWhite, :Status, :Time, :Tag, :Group, :Port, :Component, :AssetInstanceType, :IsIntranet
        
        def initialize(assetip=nil, assetname=nil, instid=nil, assettype=nil, assetregionen=nil, assetregioncn=nil, assetnetwork=nil, assetstatusen=nil, assetstatuscn=nil, iswhite=nil, status=nil, time=nil, tag=nil, group=nil, port=nil, component=nil, assetinstancetype=nil, isintranet=nil)
          @AssetIp = assetip
          @AssetName = assetname
          @Instid = instid
          @AssetType = assettype
          @AssetRegionEn = assetregionen
          @AssetRegionCn = assetregioncn
          @AssetNetwork = assetnetwork
          @AssetStatusEn = assetstatusen
          @AssetStatusCn = assetstatuscn
          @IsWhite = iswhite
          @Status = status
          @Time = time
          @Tag = tag
          @Group = group
          @Port = port
          @Component = component
          @AssetInstanceType = assetinstancetype
          @IsIntranet = isintranet
        end

        def deserialize(params)
          @AssetIp = params['AssetIp']
          @AssetName = params['AssetName']
          @Instid = params['Instid']
          @AssetType = params['AssetType']
          @AssetRegionEn = params['AssetRegionEn']
          @AssetRegionCn = params['AssetRegionCn']
          @AssetNetwork = params['AssetNetwork']
          @AssetStatusEn = params['AssetStatusEn']
          @AssetStatusCn = params['AssetStatusCn']
          @IsWhite = params['IsWhite']
          @Status = params['Status']
          @Time = params['Time']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @Group = params['Group']
          @Port = params['Port']
          @Component = params['Component']
          @AssetInstanceType = params['AssetInstanceType']
          @IsIntranet = params['IsIntranet']
        end
      end

      # 检查项详情对象
      class DataCheck < TencentCloud::Common::AbstractModel
        # @param Id: 检查项唯一标识符uuid
        # @type Id: String
        # @param Name: 检查项名称
        # @type Name: String
        # @param Type: 检查项类型
        # @type Type: String
        # @param LastCheckTime: 最近一次检查时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param Status: 初始未检测状态0, 已通过为1，未通过为2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsIgnored: 0-未忽略,1-已忽略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsIgnored: Integer
        # @param RiskCount: 有风险的资源总数，未通过数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCount: Integer
        # @param IsChecked: 0-检测中,1-结束检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsChecked: Integer
        # @param AssetTotal: 总资产数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTotal: Integer
        # @param Remarks: 备注内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remarks: String

        attr_accessor :Id, :Name, :Type, :LastCheckTime, :Status, :IsIgnored, :RiskCount, :IsChecked, :AssetTotal, :Remarks
        
        def initialize(id=nil, name=nil, type=nil, lastchecktime=nil, status=nil, isignored=nil, riskcount=nil, ischecked=nil, assettotal=nil, remarks=nil)
          @Id = id
          @Name = name
          @Type = type
          @LastCheckTime = lastchecktime
          @Status = status
          @IsIgnored = isignored
          @RiskCount = riskcount
          @IsChecked = ischecked
          @AssetTotal = assettotal
          @Remarks = remarks
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @LastCheckTime = params['LastCheckTime']
          @Status = params['Status']
          @IsIgnored = params['IsIgnored']
          @RiskCount = params['RiskCount']
          @IsChecked = params['IsChecked']
          @AssetTotal = params['AssetTotal']
          @Remarks = params['Remarks']
        end
      end

      # 合规检查项详情对象
      class DataCompliance < TencentCloud::Common::AbstractModel
        # @param Id: 等保唯一标识符
        # @type Id: String
        # @param CheckItemId: 检查项唯一标识符
        # @type CheckItemId: String
        # @param Name: 检查项名称
        # @type Name: String
        # @param AssetType: 检查项资产类型
        # @type AssetType: String
        # @param Type: 检查项类型
        # @type Type: String
        # @param Category: 检查项类别
        # @type Category: String
        # @param StandardItem: 检查项标准项
        # @type StandardItem: String
        # @param Chapter: 检查项章节号
        # @type Chapter: String
        # @param LastCheckTime: 最近一次检查时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param Status: 初始未检测状态0, 已通过为1，未通过为2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RiskCount: 有风险的资源总数，未通过数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCount: Integer
        # @param IsChecked: 0-检测中,1-结束检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsChecked: Integer
        # @param RiskItem: 检查项风险项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskItem: String
        # @param IsIgnored: 0-未忽略,1-已忽略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsIgnored: Integer
        # @param Title: 等保检查项完整名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param AssetTotal: 资产总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTotal: Integer
        # @param Remarks: 忽略内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remarks: String

        attr_accessor :Id, :CheckItemId, :Name, :AssetType, :Type, :Category, :StandardItem, :Chapter, :LastCheckTime, :Status, :RiskCount, :IsChecked, :RiskItem, :IsIgnored, :Title, :AssetTotal, :Remarks
        
        def initialize(id=nil, checkitemid=nil, name=nil, assettype=nil, type=nil, category=nil, standarditem=nil, chapter=nil, lastchecktime=nil, status=nil, riskcount=nil, ischecked=nil, riskitem=nil, isignored=nil, title=nil, assettotal=nil, remarks=nil)
          @Id = id
          @CheckItemId = checkitemid
          @Name = name
          @AssetType = assettype
          @Type = type
          @Category = category
          @StandardItem = standarditem
          @Chapter = chapter
          @LastCheckTime = lastchecktime
          @Status = status
          @RiskCount = riskcount
          @IsChecked = ischecked
          @RiskItem = riskitem
          @IsIgnored = isignored
          @Title = title
          @AssetTotal = assettotal
          @Remarks = remarks
        end

        def deserialize(params)
          @Id = params['Id']
          @CheckItemId = params['CheckItemId']
          @Name = params['Name']
          @AssetType = params['AssetType']
          @Type = params['Type']
          @Category = params['Category']
          @StandardItem = params['StandardItem']
          @Chapter = params['Chapter']
          @LastCheckTime = params['LastCheckTime']
          @Status = params['Status']
          @RiskCount = params['RiskCount']
          @IsChecked = params['IsChecked']
          @RiskItem = params['RiskItem']
          @IsIgnored = params['IsIgnored']
          @Title = params['Title']
          @AssetTotal = params['AssetTotal']
          @Remarks = params['Remarks']
        end
      end

      # 事件列表对象
      class DataEvent < TencentCloud::Common::AbstractModel
        # @param OldIdMd5: Md5值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldIdMd5: String
        # @param EventName: 事件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventName: String
        # @param EventType1: 事件类型一级分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType1: Integer
        # @param EventType2: 事件类型二级分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType2: Integer
        # @param Level: 事件等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Status: 处理状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param SrcIp: 源ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcIp: String
        # @param DstIp: 目的ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstIp: String
        # @param Time: 事件发生时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Dstport: 目的端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dstport: Integer
        # @param AssetIp: 资产ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetIp: String
        # @param AssetName: 资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param SsaEventUniqid: 安全事件唯一标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaEventUniqid: String
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param Source: 事件来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param Id: 索引中的唯一标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param IsAssetDeleted: 受影响资产是否已下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAssetDeleted: String
        # @param SsaSrcCountry: 源ip所属地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaSrcCountry: String
        # @param SsaDstCountry: 目的ip所属地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaDstCountry: String
        # @param SsaDescription: 木马类型的描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaDescription: String
        # @param SsaAttackChain: 供给链类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaAttackChain: String
        # @param RuleComponents: 受影响组件
        # @type RuleComponents: String
        # @param AssetIpAll: 资产ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetIpAll: Array
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param PublicIpAddresses: cvm类型资产的公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: cvm类型资产的内网ip
        # @type PrivateIpAddresses: Array
        # @param SoarResponseStatus: 事件响应状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoarResponseStatus: Integer
        # @param SoarResponseTime: 事件最近响应时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoarResponseTime: Integer
        # @param SoarSuggestStatus: 事件建议处理状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoarSuggestStatus: Integer
        # @param SoarPlaybookType: 事件剧本类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoarPlaybookType: String
        # @param SoarRunId: 剧本任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoarRunId: String
        # @param SsaEventId: 事件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaEventId: String
        # @param IsNewCfwEvent: 是否新接入的云防事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewCfwEvent: Boolean
        # @param Direction: 出入站方向
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Direction: String

        attr_accessor :OldIdMd5, :EventName, :EventType1, :EventType2, :Level, :Status, :SrcIp, :DstIp, :Time, :Dstport, :AssetIp, :AssetName, :SsaEventUniqid, :AssetId, :Source, :Index, :Id, :IsAssetDeleted, :SsaSrcCountry, :SsaDstCountry, :SsaDescription, :SsaAttackChain, :RuleComponents, :AssetIpAll, :AssetType, :PublicIpAddresses, :PrivateIpAddresses, :SoarResponseStatus, :SoarResponseTime, :SoarSuggestStatus, :SoarPlaybookType, :SoarRunId, :SsaEventId, :IsNewCfwEvent, :Direction
        
        def initialize(oldidmd5=nil, eventname=nil, eventtype1=nil, eventtype2=nil, level=nil, status=nil, srcip=nil, dstip=nil, time=nil, dstport=nil, assetip=nil, assetname=nil, ssaeventuniqid=nil, assetid=nil, source=nil, index=nil, id=nil, isassetdeleted=nil, ssasrccountry=nil, ssadstcountry=nil, ssadescription=nil, ssaattackchain=nil, rulecomponents=nil, assetipall=nil, assettype=nil, publicipaddresses=nil, privateipaddresses=nil, soarresponsestatus=nil, soarresponsetime=nil, soarsuggeststatus=nil, soarplaybooktype=nil, soarrunid=nil, ssaeventid=nil, isnewcfwevent=nil, direction=nil)
          @OldIdMd5 = oldidmd5
          @EventName = eventname
          @EventType1 = eventtype1
          @EventType2 = eventtype2
          @Level = level
          @Status = status
          @SrcIp = srcip
          @DstIp = dstip
          @Time = time
          @Dstport = dstport
          @AssetIp = assetip
          @AssetName = assetname
          @SsaEventUniqid = ssaeventuniqid
          @AssetId = assetid
          @Source = source
          @Index = index
          @Id = id
          @IsAssetDeleted = isassetdeleted
          @SsaSrcCountry = ssasrccountry
          @SsaDstCountry = ssadstcountry
          @SsaDescription = ssadescription
          @SsaAttackChain = ssaattackchain
          @RuleComponents = rulecomponents
          @AssetIpAll = assetipall
          @AssetType = assettype
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @SoarResponseStatus = soarresponsestatus
          @SoarResponseTime = soarresponsetime
          @SoarSuggestStatus = soarsuggeststatus
          @SoarPlaybookType = soarplaybooktype
          @SoarRunId = soarrunid
          @SsaEventId = ssaeventid
          @IsNewCfwEvent = isnewcfwevent
          @Direction = direction
        end

        def deserialize(params)
          @OldIdMd5 = params['OldIdMd5']
          @EventName = params['EventName']
          @EventType1 = params['EventType1']
          @EventType2 = params['EventType2']
          @Level = params['Level']
          @Status = params['Status']
          @SrcIp = params['SrcIp']
          @DstIp = params['DstIp']
          @Time = params['Time']
          @Dstport = params['Dstport']
          @AssetIp = params['AssetIp']
          @AssetName = params['AssetName']
          @SsaEventUniqid = params['SsaEventUniqid']
          @AssetId = params['AssetId']
          @Source = params['Source']
          @Index = params['Index']
          @Id = params['Id']
          @IsAssetDeleted = params['IsAssetDeleted']
          @SsaSrcCountry = params['SsaSrcCountry']
          @SsaDstCountry = params['SsaDstCountry']
          @SsaDescription = params['SsaDescription']
          @SsaAttackChain = params['SsaAttackChain']
          @RuleComponents = params['RuleComponents']
          @AssetIpAll = params['AssetIpAll']
          @AssetType = params['AssetType']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @SoarResponseStatus = params['SoarResponseStatus']
          @SoarResponseTime = params['SoarResponseTime']
          @SoarSuggestStatus = params['SoarSuggestStatus']
          @SoarPlaybookType = params['SoarPlaybookType']
          @SoarRunId = params['SoarRunId']
          @SsaEventId = params['SsaEventId']
          @IsNewCfwEvent = params['IsNewCfwEvent']
          @Direction = params['Direction']
        end
      end

      # DescribeAssetDetail请求参数结构体
      class DescribeAssetDetailRequest < TencentCloud::Common::AbstractModel
        # @param Params: 查询过滤参数
        # @type Params: String

        attr_accessor :Params
        
        def initialize(params=nil)
          @Params = params
        end

        def deserialize(params)
          @Params = params['Params']
        end
      end

      # DescribeAssetDetail返回参数结构体
      class DescribeAssetDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 资产详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.AssetDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssetDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetList请求参数结构体
      class DescribeAssetListRequest < TencentCloud::Common::AbstractModel
        # @param Params: 查询过滤参数
        # @type Params: String

        attr_accessor :Params
        
        def initialize(params=nil)
          @Params = params
        end

        def deserialize(params)
          @Params = params['Params']
        end
      end

      # DescribeAssetList返回参数结构体
      class DescribeAssetListResponse < TencentCloud::Common::AbstractModel
        # @param AssetList: 资产列表
        # @type AssetList: :class:`Tencentcloud::Ssa.v20180608.models.AssetList`
        # @param AggregationData: 聚合数据
        # @type AggregationData: Array
        # @param NamespaceData: 命名空间数据
        # @type NamespaceData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetList, :AggregationData, :NamespaceData, :RequestId
        
        def initialize(assetlist=nil, aggregationdata=nil, namespacedata=nil, requestid=nil)
          @AssetList = assetlist
          @AggregationData = aggregationdata
          @NamespaceData = namespacedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssetList'].nil?
            @AssetList = AssetList.new
            @AssetList.deserialize(params['AssetList'])
          end
          unless params['AggregationData'].nil?
            @AggregationData = []
            params['AggregationData'].each do |i|
              aggregationobj_tmp = AggregationObj.new
              aggregationobj_tmp.deserialize(i)
              @AggregationData << aggregationobj_tmp
            end
          end
          @NamespaceData = params['NamespaceData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetsMappingList请求参数结构体
      class DescribeAssetsMappingListRequest < TencentCloud::Common::AbstractModel
        # @param Params: 请求参数
        # @type Params: String

        attr_accessor :Params
        
        def initialize(params=nil)
          @Params = params
        end

        def deserialize(params)
          @Params = params['Params']
        end
      end

      # DescribeAssetsMappingList返回参数结构体
      class DescribeAssetsMappingListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 资产测绘列表
        # @type Data: Array
        # @param TotalCount: 资产测绘总数
        # @type TotalCount: Integer
        # @param CountByType: 类型分类统计数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountByType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :CountByType, :RequestId
        
        def initialize(data=nil, totalcount=nil, countbytype=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @CountByType = countbytype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              dataassetmapping_tmp = DataAssetMapping.new
              dataassetmapping_tmp.deserialize(i)
              @Data << dataassetmapping_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @CountByType = params['CountByType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCheckConfigAssetList请求参数结构体
      class DescribeCheckConfigAssetListRequest < TencentCloud::Common::AbstractModel
        # @param Id: 检查项UUID
        # @type Id: String
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 每页列表数
        # @type Limit: Integer
        # @param Search: db搜索条件
        # @type Search: Array
        # @param Filter: ES过滤条件
        # @type Filter: Array

        attr_accessor :Id, :Offset, :Limit, :Search, :Filter
        
        def initialize(id=nil, offset=nil, limit=nil, search=nil, filter=nil)
          @Id = id
          @Offset = offset
          @Limit = limit
          @Search = search
          @Filter = filter
        end

        def deserialize(params)
          @Id = params['Id']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Search'].nil?
            @Search = []
            params['Search'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Search << filter_tmp
            end
          end
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filter << filter_tmp
            end
          end
        end
      end

      # DescribeCheckConfigAssetList返回参数结构体
      class DescribeCheckConfigAssetListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 资产列表总数
        # @type Total: Integer
        # @param CheckAssetsList: 资产列表项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckAssetsList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :CheckAssetsList, :RequestId
        
        def initialize(total=nil, checkassetslist=nil, requestid=nil)
          @Total = total
          @CheckAssetsList = checkassetslist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['CheckAssetsList'].nil?
            @CheckAssetsList = []
            params['CheckAssetsList'].each do |i|
              checkassetitem_tmp = CheckAssetItem.new
              checkassetitem_tmp.deserialize(i)
              @CheckAssetsList << checkassetitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCheckConfigDetail请求参数结构体
      class DescribeCheckConfigDetailRequest < TencentCloud::Common::AbstractModel
        # @param Id: 检查项ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeCheckConfigDetail返回参数结构体
      class DescribeCheckConfigDetailResponse < TencentCloud::Common::AbstractModel
        # @param CheckConfigDetail: 检查项详情
        # @type CheckConfigDetail: :class:`Tencentcloud::Ssa.v20180608.models.CheckConfigDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckConfigDetail, :RequestId
        
        def initialize(checkconfigdetail=nil, requestid=nil)
          @CheckConfigDetail = checkconfigdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CheckConfigDetail'].nil?
            @CheckConfigDetail = CheckConfigDetail.new
            @CheckConfigDetail.deserialize(params['CheckConfigDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceAssetList请求参数结构体
      class DescribeComplianceAssetListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param Id: 检查项uuid
        # @type Id: String
        # @param Filter: 过滤条件
        # @type Filter: Array
        # @param Search: 查询条件
        # @type Search: Array

        attr_accessor :Offset, :Limit, :Id, :Filter, :Search
        
        def initialize(offset=nil, limit=nil, id=nil, filter=nil, search=nil)
          @Offset = offset
          @Limit = limit
          @Id = id
          @Filter = filter
          @Search = search
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Id = params['Id']
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filter << filter_tmp
            end
          end
          unless params['Search'].nil?
            @Search = []
            params['Search'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Search << filter_tmp
            end
          end
        end
      end

      # DescribeComplianceAssetList返回参数结构体
      class DescribeComplianceAssetListResponse < TencentCloud::Common::AbstractModel
        # @param CheckAssetsList: 资产组列表
        # @type CheckAssetsList: Array
        # @param Total: 资产组列表总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckAssetsList, :Total, :RequestId
        
        def initialize(checkassetslist=nil, total=nil, requestid=nil)
          @CheckAssetsList = checkassetslist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CheckAssetsList'].nil?
            @CheckAssetsList = []
            params['CheckAssetsList'].each do |i|
              checkassetitem_tmp = CheckAssetItem.new
              checkassetitem_tmp.deserialize(i)
              @CheckAssetsList << checkassetitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceDetail请求参数结构体
      class DescribeComplianceDetailRequest < TencentCloud::Common::AbstractModel
        # @param Id: 检查项uuid
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeComplianceDetail返回参数结构体
      class DescribeComplianceDetailResponse < TencentCloud::Common::AbstractModel
        # @param CheckConfigDetail: 合规管理检查项详情
        # @type CheckConfigDetail: :class:`Tencentcloud::Ssa.v20180608.models.ComplianceCheckDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckConfigDetail, :RequestId
        
        def initialize(checkconfigdetail=nil, requestid=nil)
          @CheckConfigDetail = checkconfigdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CheckConfigDetail'].nil?
            @CheckConfigDetail = ComplianceCheckDetail.new
            @CheckConfigDetail.deserialize(params['CheckConfigDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceList请求参数结构体
      class DescribeComplianceListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 搜索过滤条件
        # @type Filter: String

        attr_accessor :Filter
        
        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          @Filter = params['Filter']
        end
      end

      # DescribeComplianceList返回参数结构体
      class DescribeComplianceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 检查项列表
        # @type Data: Array
        # @param AssetTotalNum: 总检查资产数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTotalNum: Integer
        # @param ConfigTotalNum: 总检查项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigTotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :AssetTotalNum, :ConfigTotalNum, :RequestId
        
        def initialize(data=nil, assettotalnum=nil, configtotalnum=nil, requestid=nil)
          @Data = data
          @AssetTotalNum = assettotalnum
          @ConfigTotalNum = configtotalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              datacompliance_tmp = DataCompliance.new
              datacompliance_tmp.deserialize(i)
              @Data << datacompliance_tmp
            end
          end
          @AssetTotalNum = params['AssetTotalNum']
          @ConfigTotalNum = params['ConfigTotalNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigList请求参数结构体
      class DescribeConfigListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 搜索过滤条件
        # @type Filter: String

        attr_accessor :Filter
        
        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          @Filter = params['Filter']
        end
      end

      # DescribeConfigList返回参数结构体
      class DescribeConfigListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 检查项列表
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
              datacheck_tmp = DataCheck.new
              datacheck_tmp.deserialize(i)
              @Data << datacheck_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEventDetail请求参数结构体
      class DescribeEventDetailRequest < TencentCloud::Common::AbstractModel
        # @param Index: 事件索引名
        # @type Index: String
        # @param Id: 事件id
        # @type Id: String
        # @param Source: 事件来源
        # @type Source: String
        # @param SubEventType: 事件子类型
        # @type SubEventType: Integer
        # @param Name: 事件名称
        # @type Name: String

        attr_accessor :Index, :Id, :Source, :SubEventType, :Name
        
        def initialize(index=nil, id=nil, source=nil, subeventtype=nil, name=nil)
          @Index = index
          @Id = id
          @Source = source
          @SubEventType = subeventtype
          @Name = name
        end

        def deserialize(params)
          @Index = params['Index']
          @Id = params['Id']
          @Source = params['Source']
          @SubEventType = params['SubEventType']
          @Name = params['Name']
        end
      end

      # DescribeEventDetail返回参数结构体
      class DescribeEventDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 事件详情
        # @type Data: String
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

      # DescribeLeakDetectionList请求参数结构体
      class DescribeLeakDetectionListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param Page: 页码
        # @type Page: Integer
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Filters, :Limit, :Page, :StartTime, :EndTime
        
        def initialize(filters=nil, limit=nil, page=nil, starttime=nil, endtime=nil)
          @Filters = filters
          @Limit = limit
          @Page = page
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Page = params['Page']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeLeakDetectionList返回参数结构体
      class DescribeLeakDetectionListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param List: 数据列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @List = params['List']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMappingResults请求参数结构体
      class DescribeMappingResultsRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤条件，FilterKey 取值范围：AssetId，AssetIp，PrivateIp，Protocol，Service，OS，Process，Component，AssetType，Domain，Port，LastMappingTime，MappingType，Disposal，Vpc
        # @type Filter: Array
        # @param Sorter: 排序条件，SortKey取值范围：CreateTime，LastMappingTime
        # @type Sorter: Array
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param PageSize: 页大小，默认大小20
        # @type PageSize: Integer

        attr_accessor :Filter, :Sorter, :PageIndex, :PageSize
        
        def initialize(filter=nil, sorter=nil, pageindex=nil, pagesize=nil)
          @Filter = filter
          @Sorter = sorter
          @PageIndex = pageindex
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              assetqueryfilter_tmp = AssetQueryFilter.new
              assetqueryfilter_tmp.deserialize(i)
              @Filter << assetqueryfilter_tmp
            end
          end
          unless params['Sorter'].nil?
            @Sorter = []
            params['Sorter'].each do |i|
              querysort_tmp = QuerySort.new
              querysort_tmp.deserialize(i)
              @Sorter << querysort_tmp
            end
          end
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
        end
      end

      # DescribeMappingResults返回参数结构体
      class DescribeMappingResultsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.Results`
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
            @Data = Results.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSafetyEventList请求参数结构体
      class DescribeSafetyEventListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 搜索过滤查询参数
        # @type Filter: String
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 页偏移
        # @type Offset: Integer
        # @param Order: 排序列名
        # @type Order: String
        # @param By: 排序升降：desc-降序 asc-升序
        # @type By: String
        # @param StartTime: 开始查询时间
        # @type StartTime: String
        # @param EndTime: 结束查询时间
        # @type EndTime: String
        # @param IsFilterResponseTime: 是否过滤响应时间
        # @type IsFilterResponseTime: Boolean

        attr_accessor :Filter, :Limit, :Offset, :Order, :By, :StartTime, :EndTime, :IsFilterResponseTime
        
        def initialize(filter=nil, limit=nil, offset=nil, order=nil, by=nil, starttime=nil, endtime=nil, isfilterresponsetime=nil)
          @Filter = filter
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @StartTime = starttime
          @EndTime = endtime
          @IsFilterResponseTime = isfilterresponsetime
        end

        def deserialize(params)
          @Filter = params['Filter']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsFilterResponseTime = params['IsFilterResponseTime']
        end
      end

      # DescribeSafetyEventList返回参数结构体
      class DescribeSafetyEventListResponse < TencentCloud::Common::AbstractModel
        # @param List: 事件列表
        # @type List: Array
        # @param Total: 事件总条数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId
        
        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              dataevent_tmp = DataEvent.new
              dataevent_tmp.deserialize(i)
              @List << dataevent_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSocAlertDetails请求参数结构体
      class DescribeSocAlertDetailsRequest < TencentCloud::Common::AbstractModel
        # @param AlertId: 告警id
        # @type AlertId: String
        # @param AlertTimestamp: 告警时间，取Timestamp字段
        # @type AlertTimestamp: String

        attr_accessor :AlertId, :AlertTimestamp
        
        def initialize(alertid=nil, alerttimestamp=nil)
          @AlertId = alertid
          @AlertTimestamp = alerttimestamp
        end

        def deserialize(params)
          @AlertId = params['AlertId']
          @AlertTimestamp = params['AlertTimestamp']
        end
      end

      # DescribeSocAlertDetails返回参数结构体
      class DescribeSocAlertDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回详情数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.AlertDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AlertDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSocAlertList请求参数结构体
      class DescribeSocAlertListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param Scenes: 业务场景 参考ScenesType
        # @type Scenes: Integer
        # @param Filter: 查询参数
        # @type Filter: Array
        # @param Sorter: 排序参数
        # @type Sorter: Array
        # @param ExportFlag: 是否导出
        # @type ExportFlag: Boolean

        attr_accessor :PageSize, :PageIndex, :Scenes, :Filter, :Sorter, :ExportFlag
        
        def initialize(pagesize=nil, pageindex=nil, scenes=nil, filter=nil, sorter=nil, exportflag=nil)
          @PageSize = pagesize
          @PageIndex = pageindex
          @Scenes = scenes
          @Filter = filter
          @Sorter = sorter
          @ExportFlag = exportflag
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageIndex = params['PageIndex']
          @Scenes = params['Scenes']
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filter << queryfilter_tmp
            end
          end
          unless params['Sorter'].nil?
            @Sorter = []
            params['Sorter'].each do |i|
              querysort_tmp = QuerySort.new
              querysort_tmp.deserialize(i)
              @Sorter << querysort_tmp
            end
          end
          @ExportFlag = params['ExportFlag']
        end
      end

      # DescribeSocAlertList返回参数结构体
      class DescribeSocAlertListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务数据
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.AlertListData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AlertListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSocCheckItemList请求参数结构体
      class DescribeSocCheckItemListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 查询参数,可支持的排序字段:Name,Type,AssetType,Level,Standard,IsFree
        # @type Filter: Array
        # @param Sorter: 排序参数:无
        # @type Sorter: Array
        # @param PageSize: 当前页码数据，默认值为10
        # @type PageSize: Integer
        # @param PageIndex: 当前页面索引，默认值为0
        # @type PageIndex: Integer

        attr_accessor :Filter, :Sorter, :PageSize, :PageIndex
        
        def initialize(filter=nil, sorter=nil, pagesize=nil, pageindex=nil)
          @Filter = filter
          @Sorter = sorter
          @PageSize = pagesize
          @PageIndex = pageindex
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filter << queryfilter_tmp
            end
          end
          unless params['Sorter'].nil?
            @Sorter = []
            params['Sorter'].each do |i|
              querysort_tmp = QuerySort.new
              querysort_tmp.deserialize(i)
              @Sorter << querysort_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageIndex = params['PageIndex']
        end
      end

      # DescribeSocCheckItemList返回参数结构体
      class DescribeSocCheckItemListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 检查项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.DescribeSocCheckItemListRspRsp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeSocCheckItemListRspRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云安全配置检查项列表
      class DescribeSocCheckItemListRspRsp < TencentCloud::Common::AbstractModel
        # @param List: 检查项详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 检查项总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :List, :Total
        
        def initialize(list=nil, total=nil)
          @List = list
          @Total = total
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              soccheckitemv1_tmp = SocCheckItemV1.new
              soccheckitemv1_tmp.deserialize(i)
              @List << soccheckitemv1_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # DescribeSocCheckResultList请求参数结构体
      class DescribeSocCheckResultListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 查询参数,可支持的查询参数：
        # Name,Type,AssetType,Result,PloyName,PloyId
        # @type Filter: Array
        # @param Sorter: 排序参数,可支持的排序参数：CheckStatus,RiskCount
        # @type Sorter: Array
        # @param PageSize: 当前页码数据，默认值为10
        # @type PageSize: Integer
        # @param PageIndex: 当前页面索引，默认值为0
        # @type PageIndex: Integer
        # @param AssetId: 资产id
        # @type AssetId: String

        attr_accessor :Filter, :Sorter, :PageSize, :PageIndex, :AssetId
        
        def initialize(filter=nil, sorter=nil, pagesize=nil, pageindex=nil, assetid=nil)
          @Filter = filter
          @Sorter = sorter
          @PageSize = pagesize
          @PageIndex = pageindex
          @AssetId = assetid
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filter << queryfilter_tmp
            end
          end
          unless params['Sorter'].nil?
            @Sorter = []
            params['Sorter'].each do |i|
              querysort_tmp = QuerySort.new
              querysort_tmp.deserialize(i)
              @Sorter << querysort_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageIndex = params['PageIndex']
          @AssetId = params['AssetId']
        end
      end

      # DescribeSocCheckResultList返回参数结构体
      class DescribeSocCheckResultListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.DescribeSocCheckResultListRspRsp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeSocCheckResultListRspRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 检查项结果详情列表
      class DescribeSocCheckResultListRspRsp < TencentCloud::Common::AbstractModel
        # @param List: 具体检查项详情
        # @type List: Array
        # @param Total: 检查结果总数
        # @type Total: Integer
        # @param LowTotal: 低危个数
        # @type LowTotal: Integer
        # @param MiddleTotal: 中危个数
        # @type MiddleTotal: Integer
        # @param HighTotal: 高危个数
        # @type HighTotal: Integer
        # @param NormalTotal: 正常个数
        # @type NormalTotal: Integer

        attr_accessor :List, :Total, :LowTotal, :MiddleTotal, :HighTotal, :NormalTotal
        
        def initialize(list=nil, total=nil, lowtotal=nil, middletotal=nil, hightotal=nil, normaltotal=nil)
          @List = list
          @Total = total
          @LowTotal = lowtotal
          @MiddleTotal = middletotal
          @HighTotal = hightotal
          @NormalTotal = normaltotal
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              soccheckresult_tmp = SocCheckResult.new
              soccheckresult_tmp.deserialize(i)
              @List << soccheckresult_tmp
            end
          end
          @Total = params['Total']
          @LowTotal = params['LowTotal']
          @MiddleTotal = params['MiddleTotal']
          @HighTotal = params['HighTotal']
          @NormalTotal = params['NormalTotal']
        end
      end

      # DescribeSocCspmCompliance请求参数结构体
      class DescribeSocCspmComplianceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSocCspmCompliance返回参数结构体
      class DescribeSocCspmComplianceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.SocComplianceInfoResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SocComplianceInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulDetail请求参数结构体
      class DescribeVulDetailRequest < TencentCloud::Common::AbstractModel
        # @param UniqId: 漏洞唯一标识符
        # @type UniqId: String
        # @param Source: 查看详情来源
        # @type Source: String

        attr_accessor :UniqId, :Source
        
        def initialize(uniqid=nil, source=nil)
          @UniqId = uniqid
          @Source = source
        end

        def deserialize(params)
          @UniqId = params['UniqId']
          @Source = params['Source']
        end
      end

      # DescribeVulDetail返回参数结构体
      class DescribeVulDetailResponse < TencentCloud::Common::AbstractModel
        # @param VulType: 漏洞类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulType: Integer
        # @param SubVulType: 漏洞子类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubVulType: String
        # @param CvssScore: cvss分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScore: String
        # @param Cvss: cvss值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cvss: String
        # @param Cve: cve编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cve: String
        # @param Cnvd: cnvd编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cnvd: String
        # @param Cnnvd: cnnvd编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cnnvd: String
        # @param Desc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Reference: 参考
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: String
        # @param Repair: 修复意见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Repair: String
        # @param ReleaseTime: 披露时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Name: 漏洞名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Level: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ImpactAsset: 受影响资产唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactAsset: String
        # @param ImpactAssetName: 受影响资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactAssetName: String
        # @param IsAssetDeleted: 受影响资产是否已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAssetDeleted: Boolean
        # @param Source: 漏洞来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param VulUrl: 漏洞URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulUrl: String
        # @param SsaAssetCategory: 资产归属
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaAssetCategory: Integer
        # @param VulPath: 资产文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulPath: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulType, :SubVulType, :CvssScore, :Cvss, :Cve, :Cnvd, :Cnnvd, :Desc, :Reference, :Repair, :ReleaseTime, :UpdateTime, :Name, :Level, :Status, :ImpactAsset, :ImpactAssetName, :IsAssetDeleted, :Source, :VulUrl, :SsaAssetCategory, :VulPath, :RequestId
        
        def initialize(vultype=nil, subvultype=nil, cvssscore=nil, cvss=nil, cve=nil, cnvd=nil, cnnvd=nil, desc=nil, reference=nil, repair=nil, releasetime=nil, updatetime=nil, name=nil, level=nil, status=nil, impactasset=nil, impactassetname=nil, isassetdeleted=nil, source=nil, vulurl=nil, ssaassetcategory=nil, vulpath=nil, requestid=nil)
          @VulType = vultype
          @SubVulType = subvultype
          @CvssScore = cvssscore
          @Cvss = cvss
          @Cve = cve
          @Cnvd = cnvd
          @Cnnvd = cnnvd
          @Desc = desc
          @Reference = reference
          @Repair = repair
          @ReleaseTime = releasetime
          @UpdateTime = updatetime
          @Name = name
          @Level = level
          @Status = status
          @ImpactAsset = impactasset
          @ImpactAssetName = impactassetname
          @IsAssetDeleted = isassetdeleted
          @Source = source
          @VulUrl = vulurl
          @SsaAssetCategory = ssaassetcategory
          @VulPath = vulpath
          @RequestId = requestid
        end

        def deserialize(params)
          @VulType = params['VulType']
          @SubVulType = params['SubVulType']
          @CvssScore = params['CvssScore']
          @Cvss = params['Cvss']
          @Cve = params['Cve']
          @Cnvd = params['Cnvd']
          @Cnnvd = params['Cnnvd']
          @Desc = params['Desc']
          @Reference = params['Reference']
          @Repair = params['Repair']
          @ReleaseTime = params['ReleaseTime']
          @UpdateTime = params['UpdateTime']
          @Name = params['Name']
          @Level = params['Level']
          @Status = params['Status']
          @ImpactAsset = params['ImpactAsset']
          @ImpactAssetName = params['ImpactAssetName']
          @IsAssetDeleted = params['IsAssetDeleted']
          @Source = params['Source']
          @VulUrl = params['VulUrl']
          @SsaAssetCategory = params['SsaAssetCategory']
          @VulPath = params['VulPath']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulList请求参数结构体
      class DescribeVulListRequest < TencentCloud::Common::AbstractModel
        # @param Params: 查询过滤参数
        # @type Params: String

        attr_accessor :Params
        
        def initialize(params=nil)
          @Params = params
        end

        def deserialize(params)
          @Params = params['Params']
        end
      end

      # DescribeVulList返回参数结构体
      class DescribeVulListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 漏洞列表
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.VulList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VulList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param ExactMatch: 是否需要精确匹配
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 测绘记录
      class MappingResult < TencentCloud::Common::AbstractModel
        # @param AssetName: 资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetIp: String
        # @param PrivateIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param Service: 服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: String
        # @param Component: 组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Component: String
        # @param Process: 进程
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: String
        # @param OS: 操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OS: String
        # @param LastMappingTime: 测绘时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastMappingTime: String
        # @param DisposalRecommendations: 处置建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalRecommendations: String
        # @param DisposalRecommendationDetails: 处置建议详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalRecommendationDetails: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param MappingStatus: 测绘状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MappingStatus: Integer
        # @param Region: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param SecurityStatus: 安全防护状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityStatus: Array

        attr_accessor :AssetName, :AssetIp, :PrivateIp, :AssetId, :Protocol, :Port, :Service, :Component, :Process, :OS, :LastMappingTime, :DisposalRecommendations, :DisposalRecommendationDetails, :AssetType, :Domain, :MappingStatus, :Region, :SecurityStatus
        
        def initialize(assetname=nil, assetip=nil, privateip=nil, assetid=nil, protocol=nil, port=nil, service=nil, component=nil, process=nil, os=nil, lastmappingtime=nil, disposalrecommendations=nil, disposalrecommendationdetails=nil, assettype=nil, domain=nil, mappingstatus=nil, region=nil, securitystatus=nil)
          @AssetName = assetname
          @AssetIp = assetip
          @PrivateIp = privateip
          @AssetId = assetid
          @Protocol = protocol
          @Port = port
          @Service = service
          @Component = component
          @Process = process
          @OS = os
          @LastMappingTime = lastmappingtime
          @DisposalRecommendations = disposalrecommendations
          @DisposalRecommendationDetails = disposalrecommendationdetails
          @AssetType = assettype
          @Domain = domain
          @MappingStatus = mappingstatus
          @Region = region
          @SecurityStatus = securitystatus
        end

        def deserialize(params)
          @AssetName = params['AssetName']
          @AssetIp = params['AssetIp']
          @PrivateIp = params['PrivateIp']
          @AssetId = params['AssetId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Service = params['Service']
          @Component = params['Component']
          @Process = params['Process']
          @OS = params['OS']
          @LastMappingTime = params['LastMappingTime']
          @DisposalRecommendations = params['DisposalRecommendations']
          @DisposalRecommendationDetails = params['DisposalRecommendationDetails']
          @AssetType = params['AssetType']
          @Domain = params['Domain']
          @MappingStatus = params['MappingStatus']
          @Region = params['Region']
          unless params['SecurityStatus'].nil?
            @SecurityStatus = []
            params['SecurityStatus'].each do |i|
              securitystatus_tmp = SecurityStatus.new
              securitystatus_tmp.deserialize(i)
              @SecurityStatus << securitystatus_tmp
            end
          end
        end
      end

      # 查询参数
      class QueryFilter < TencentCloud::Common::AbstractModel
        # @param FilterKey: 查询的字段
        # @type FilterKey: String
        # @param FilterValue: 查询的值
        # @type FilterValue: String
        # @param FilterOperatorType: 匹配类型，1等于；2大于；3小于；4大于等于；5小于等于；6不等于；7in；8not in；9模糊匹配
        # @type FilterOperatorType: Integer

        attr_accessor :FilterKey, :FilterValue, :FilterOperatorType
        
        def initialize(filterkey=nil, filtervalue=nil, filteroperatortype=nil)
          @FilterKey = filterkey
          @FilterValue = filtervalue
          @FilterOperatorType = filteroperatortype
        end

        def deserialize(params)
          @FilterKey = params['FilterKey']
          @FilterValue = params['FilterValue']
          @FilterOperatorType = params['FilterOperatorType']
        end
      end

      # 排序的字段
      class QuerySort < TencentCloud::Common::AbstractModel
        # @param SortKey: 排序字段
        # @type SortKey: String
        # @param SortType: 顺序，1升序2降序
        # @type SortType: Integer

        attr_accessor :SortKey, :SortType
        
        def initialize(sortkey=nil, sorttype=nil)
          @SortKey = sortkey
          @SortType = sorttype
        end

        def deserialize(params)
          @SortKey = params['SortKey']
          @SortType = params['SortType']
        end
      end

      # 测绘结果
      class Results < TencentCloud::Common::AbstractModel
        # @param Statistics: 测绘类型统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Statistics: Array
        # @param Result: 测绘结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param TaskCount: 测绘任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskCount: Integer
        # @param TaskMaxCount: 最大测绘任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskMaxCount: Integer

        attr_accessor :Statistics, :Result, :TaskCount, :TaskMaxCount
        
        def initialize(statistics=nil, result=nil, taskcount=nil, taskmaxcount=nil)
          @Statistics = statistics
          @Result = result
          @TaskCount = taskcount
          @TaskMaxCount = taskmaxcount
        end

        def deserialize(params)
          unless params['Statistics'].nil?
            @Statistics = []
            params['Statistics'].each do |i|
              assettypestatistic_tmp = AssetTypeStatistic.new
              assettypestatistic_tmp.deserialize(i)
              @Statistics << assettypestatistic_tmp
            end
          end
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              mappingresult_tmp = MappingResult.new
              mappingresult_tmp.deserialize(i)
              @Result << mappingresult_tmp
            end
          end
          @TaskCount = params['TaskCount']
          @TaskMaxCount = params['TaskMaxCount']
        end
      end

      # 查询_通用字段
      class SaDivulgeDataQueryPub < TencentCloud::Common::AbstractModel
        # @param Id: Id信息
        # @type Id: String
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param AppId: 用户AppId
        # @type AppId: String
        # @param EventName: 事件名称
        # @type EventName: String
        # @param DivulgeSoure: 监控源 0:全部 1:GitHub 2:暗网 默认值1
        # @type DivulgeSoure: String
        # @param Asset: 受影响资产
        # @type Asset: String
        # @param RuleName: 命中主题集下的规则topic名称
        # @type RuleName: String
        # @param RuleId: 命中主题集下的规则topic唯一id
        # @type RuleId: String
        # @param RuleWord: 命中主题集下的自定义规则策略
        # @type RuleWord: String
        # @param ScanUrl: 扫描监测url
        # @type ScanUrl: String
        # @param ScanCount: 扫描监测命中次数
        # @type ScanCount: String
        # @param Level: 风险等级 -1:未知 1:低危 2:中危 3:高危 4:严重
        # @type Level: String
        # @param Status: 安全事件处理状态 -1:未知 1:待处理 2:已处理 3:误报 4:已忽略 5:已知晓 6:已信任
        # @type Status: String
        # @param EventTime: 安全事件发生时间
        # @type EventTime: String
        # @param InsertTime: 事件插入时间
        # @type InsertTime: String
        # @param UpdateTime: 事件更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :Uin, :AppId, :EventName, :DivulgeSoure, :Asset, :RuleName, :RuleId, :RuleWord, :ScanUrl, :ScanCount, :Level, :Status, :EventTime, :InsertTime, :UpdateTime
        
        def initialize(id=nil, uin=nil, appid=nil, eventname=nil, divulgesoure=nil, asset=nil, rulename=nil, ruleid=nil, ruleword=nil, scanurl=nil, scancount=nil, level=nil, status=nil, eventtime=nil, inserttime=nil, updatetime=nil)
          @Id = id
          @Uin = uin
          @AppId = appid
          @EventName = eventname
          @DivulgeSoure = divulgesoure
          @Asset = asset
          @RuleName = rulename
          @RuleId = ruleid
          @RuleWord = ruleword
          @ScanUrl = scanurl
          @ScanCount = scancount
          @Level = level
          @Status = status
          @EventTime = eventtime
          @InsertTime = inserttime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uin = params['Uin']
          @AppId = params['AppId']
          @EventName = params['EventName']
          @DivulgeSoure = params['DivulgeSoure']
          @Asset = params['Asset']
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          @RuleWord = params['RuleWord']
          @ScanUrl = params['ScanUrl']
          @ScanCount = params['ScanCount']
          @Level = params['Level']
          @Status = params['Status']
          @EventTime = params['EventTime']
          @InsertTime = params['InsertTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 自定义泄露事件列表
      class SaDivulgeDataQueryPubList < TencentCloud::Common::AbstractModel
        # @param Count: 数据条数
        # @type Count: Integer
        # @param List: 自定义泄露事件列表
        # @type List: Array

        attr_accessor :Count, :List
        
        def initialize(count=nil, list=nil)
          @Count = count
          @List = list
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              sadivulgedataquerypub_tmp = SaDivulgeDataQueryPub.new
              sadivulgedataquerypub_tmp.deserialize(i)
              @List << sadivulgedataquerypub_tmp
            end
          end
        end
      end

      # SaDivulgeDataQueryPub请求参数结构体
      class SaDivulgeDataQueryPubRequest < TencentCloud::Common::AbstractModel
        # @param QueryKey: 模糊查询字段(针对appid或者uin)
        # @type QueryKey: String
        # @param EventName: 安全事件名称
        # @type EventName: String
        # @param DivulgeSoure: 监控源  0:全部 1:GitHub 2:暗网 默认值1
        # @type DivulgeSoure: String
        # @param Asset: 受影响资产
        # @type Asset: String
        # @param RuleName: 命中主题集下的规则topic名称
        # @type RuleName: String
        # @param RuleId: 命中主题集下的规则topic唯一id
        # @type RuleId: String
        # @param Level: 风险等级 -1:未知 1:低危 2:中危 3:高危 4:严重
        # @type Level: String
        # @param Status: 安全事件处理状态 -1:未知 1:待处理 2:已处理 3:误报 4:已忽略 5:已知晓 6:已信任
        # @type Status: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 查询起始地址
        # @type Offset: String
        # @param Limit: 查询个数
        # @type Limit: String

        attr_accessor :QueryKey, :EventName, :DivulgeSoure, :Asset, :RuleName, :RuleId, :Level, :Status, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(querykey=nil, eventname=nil, divulgesoure=nil, asset=nil, rulename=nil, ruleid=nil, level=nil, status=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @QueryKey = querykey
          @EventName = eventname
          @DivulgeSoure = divulgesoure
          @Asset = asset
          @RuleName = rulename
          @RuleId = ruleid
          @Level = level
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @QueryKey = params['QueryKey']
          @EventName = params['EventName']
          @DivulgeSoure = params['DivulgeSoure']
          @Asset = params['Asset']
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          @Level = params['Level']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # SaDivulgeDataQueryPub返回参数结构体
      class SaDivulgeDataQueryPubResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自定义泄露事件列表
        # @type Data: :class:`Tencentcloud::Ssa.v20180608.models.SaDivulgeDataQueryPubList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SaDivulgeDataQueryPubList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 安全放回状态
      class SecurityStatus < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # SocCheckItem类型
      class SocCheckItem < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param LevelId: 唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LevelId: String
        # @param SuccessCount: 成功数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param FailCount: 失败数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailCount: Integer

        attr_accessor :Name, :LevelId, :SuccessCount, :FailCount
        
        def initialize(name=nil, levelid=nil, successcount=nil, failcount=nil)
          @Name = name
          @LevelId = levelid
          @SuccessCount = successcount
          @FailCount = failcount
        end

        def deserialize(params)
          @Name = params['Name']
          @LevelId = params['LevelId']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
        end
      end

      # 检查项相关信息
      class SocCheckItemV1 < TencentCloud::Common::AbstractModel
        # @param CheckId: 检查项id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckId: String
        # @param Name: 配置要求
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 检查项类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param AssetType: 检查对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param Level: 默认风险等级 2:低危 3:中危 4:高危
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Standard: 相关规范
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Standard: String
        # @param IsFree: 检查项是否付费 1:免费 2:付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFree: Integer

        attr_accessor :CheckId, :Name, :Type, :AssetType, :Level, :Standard, :IsFree
        
        def initialize(checkid=nil, name=nil, type=nil, assettype=nil, level=nil, standard=nil, isfree=nil)
          @CheckId = checkid
          @Name = name
          @Type = type
          @AssetType = assettype
          @Level = level
          @Standard = standard
          @IsFree = isfree
        end

        def deserialize(params)
          @CheckId = params['CheckId']
          @Name = params['Name']
          @Type = params['Type']
          @AssetType = params['AssetType']
          @Level = params['Level']
          @Standard = params['Standard']
          @IsFree = params['IsFree']
        end
      end

      # 云安全配置检测结果
      class SocCheckResult < TencentCloud::Common::AbstractModel
        # @param CheckId: 检查项的uuid
        # @type CheckId: String
        # @param Name: 配置要求
        # @type Name: String
        # @param Type: 检查项的类型
        # @type Type: String
        # @param AssetType: 检查对象
        # @type AssetType: String
        # @param PloyName: 策略名
        # @type PloyName: String
        # @param PloyId: 策略id
        # @type PloyId: Integer
        # @param Result: 正常,低危,中危,高危
        # @type Result: String
        # @param FailAssetNum: 不符合数
        # @type FailAssetNum: Integer
        # @param TotalAssetNum: 总数
        # @type TotalAssetNum: Integer
        # @param DealUrl: 处置建议url链接
        # @type DealUrl: String

        attr_accessor :CheckId, :Name, :Type, :AssetType, :PloyName, :PloyId, :Result, :FailAssetNum, :TotalAssetNum, :DealUrl
        
        def initialize(checkid=nil, name=nil, type=nil, assettype=nil, ployname=nil, ployid=nil, result=nil, failassetnum=nil, totalassetnum=nil, dealurl=nil)
          @CheckId = checkid
          @Name = name
          @Type = type
          @AssetType = assettype
          @PloyName = ployname
          @PloyId = ployid
          @Result = result
          @FailAssetNum = failassetnum
          @TotalAssetNum = totalassetnum
          @DealUrl = dealurl
        end

        def deserialize(params)
          @CheckId = params['CheckId']
          @Name = params['Name']
          @Type = params['Type']
          @AssetType = params['AssetType']
          @PloyName = params['PloyName']
          @PloyId = params['PloyId']
          @Result = params['Result']
          @FailAssetNum = params['FailAssetNum']
          @TotalAssetNum = params['TotalAssetNum']
          @DealUrl = params['DealUrl']
        end
      end

      # 返回结构
      class SocComplianceInfoResp < TencentCloud::Common::AbstractModel
        # @param Items: 合格项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :Items
        
        def initialize(items=nil)
          @Items = items
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              soccomplianceitem_tmp = SocComplianceItem.new
              soccomplianceitem_tmp.deserialize(i)
              @Items << soccomplianceitem_tmp
            end
          end
        end
      end

      # soc合规信息
      class SocComplianceItem < TencentCloud::Common::AbstractModel
        # @param Item: 唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param StandardItem: 分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardItem: String
        # @param Result: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Integer
        # @param Suggestion: 建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param ProStr: 产品字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProStr: String
        # @param Production: 产品数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Production: Array
        # @param CheckItems: 配置项数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckItems: Array

        attr_accessor :Item, :Description, :StandardItem, :Result, :Suggestion, :ProStr, :Production, :CheckItems
        
        def initialize(item=nil, description=nil, standarditem=nil, result=nil, suggestion=nil, prostr=nil, production=nil, checkitems=nil)
          @Item = item
          @Description = description
          @StandardItem = standarditem
          @Result = result
          @Suggestion = suggestion
          @ProStr = prostr
          @Production = production
          @CheckItems = checkitems
        end

        def deserialize(params)
          @Item = params['Item']
          @Description = params['Description']
          @StandardItem = params['StandardItem']
          @Result = params['Result']
          @Suggestion = params['Suggestion']
          @ProStr = params['ProStr']
          unless params['Production'].nil?
            @Production = []
            params['Production'].each do |i|
              socproductionitem_tmp = SocProductionItem.new
              socproductionitem_tmp.deserialize(i)
              @Production << socproductionitem_tmp
            end
          end
          unless params['CheckItems'].nil?
            @CheckItems = []
            params['CheckItems'].each do |i|
              soccheckitem_tmp = SocCheckItem.new
              soccheckitem_tmp.deserialize(i)
              @CheckItems << soccheckitem_tmp
            end
          end
        end
      end

      # soc产品购买信息
      class SocProductionItem < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Index: 标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Name, :Index, :Status
        
        def initialize(name=nil, index=nil, status=nil)
          @Name = name
          @Index = index
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Index = params['Index']
          @Status = params['Status']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Fid: 数据库标识
        # @type Fid: Integer
        # @param Fname: 标签名称
        # @type Fname: String

        attr_accessor :Fid, :Fname
        
        def initialize(fid=nil, fname=nil)
          @Fid = fid
          @Fname = fname
        end

        def deserialize(params)
          @Fid = params['Fid']
          @Fname = params['Fname']
        end
      end

      # 漏洞管理漏洞数据
      class VulItem < TencentCloud::Common::AbstractModel
        # @param Id: 标识
        # @type Id: String
        # @param VulName: 漏洞名称
        # @type VulName: String
        # @param Type: 漏洞类型
        # @type Type: Integer
        # @param Level: 风险等级
        # @type Level: Integer
        # @param Status: 处理状态
        # @type Status: Integer
        # @param Time: 发现时间
        # @type Time: String
        # @param ImpactAssetNum: 影响资产数
        # @type ImpactAssetNum: Integer
        # @param ImpactAsset: 影响资产id
        # @type ImpactAsset: String
        # @param ImpactAssetName: 影响资产名称
        # @type ImpactAssetName: String
        # @param VulDetail: 漏洞描述
        # @type VulDetail: String
        # @param VulRefLink: 参考链接
        # @type VulRefLink: String
        # @param OldIdMd5: Md5值
        # @type OldIdMd5: String
        # @param UniqId: 漏洞唯一标识
        # @type UniqId: String
        # @param OperateTime: 忽略时间
        # @type OperateTime: String
        # @param IsAssetDeleted: 受影响资产是否下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAssetDeleted: String
        # @param DiscoverTime: 漏洞首次发现时间
        # @type DiscoverTime: String
        # @param OriginId: 主机源信息标识符
        # @type OriginId: Integer
        # @param Region: 资产区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Vpcid: 资产所属网络
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vpcid: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param AssetSubType: 资产子类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetSubType: String
        # @param AssetIpAll: 资产IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetIpAll: Array
        # @param PublicIpAddresses: cvm类型的公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: cvm类型的内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddresses: Array
        # @param VulSource: 漏洞来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulSource: String
        # @param AffectedUrl: 影响URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedUrl: String
        # @param SsaAssetCategory: 资产归属
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SsaAssetCategory: Integer
        # @param VulUrl: 影响url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulUrl: String
        # @param IsOpen: 是否扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOpen: Boolean
        # @param YzHostId: 御知主机id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type YzHostId: Integer
        # @param VulRepairPlan: 漏洞描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulRepairPlan: String
        # @param VulPath: 漏洞文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulPath: String

        attr_accessor :Id, :VulName, :Type, :Level, :Status, :Time, :ImpactAssetNum, :ImpactAsset, :ImpactAssetName, :VulDetail, :VulRefLink, :OldIdMd5, :UniqId, :OperateTime, :IsAssetDeleted, :DiscoverTime, :OriginId, :Region, :Vpcid, :AssetType, :AssetSubType, :AssetIpAll, :PublicIpAddresses, :PrivateIpAddresses, :VulSource, :AffectedUrl, :SsaAssetCategory, :VulUrl, :IsOpen, :YzHostId, :VulRepairPlan, :VulPath
        
        def initialize(id=nil, vulname=nil, type=nil, level=nil, status=nil, time=nil, impactassetnum=nil, impactasset=nil, impactassetname=nil, vuldetail=nil, vulreflink=nil, oldidmd5=nil, uniqid=nil, operatetime=nil, isassetdeleted=nil, discovertime=nil, originid=nil, region=nil, vpcid=nil, assettype=nil, assetsubtype=nil, assetipall=nil, publicipaddresses=nil, privateipaddresses=nil, vulsource=nil, affectedurl=nil, ssaassetcategory=nil, vulurl=nil, isopen=nil, yzhostid=nil, vulrepairplan=nil, vulpath=nil)
          @Id = id
          @VulName = vulname
          @Type = type
          @Level = level
          @Status = status
          @Time = time
          @ImpactAssetNum = impactassetnum
          @ImpactAsset = impactasset
          @ImpactAssetName = impactassetname
          @VulDetail = vuldetail
          @VulRefLink = vulreflink
          @OldIdMd5 = oldidmd5
          @UniqId = uniqid
          @OperateTime = operatetime
          @IsAssetDeleted = isassetdeleted
          @DiscoverTime = discovertime
          @OriginId = originid
          @Region = region
          @Vpcid = vpcid
          @AssetType = assettype
          @AssetSubType = assetsubtype
          @AssetIpAll = assetipall
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @VulSource = vulsource
          @AffectedUrl = affectedurl
          @SsaAssetCategory = ssaassetcategory
          @VulUrl = vulurl
          @IsOpen = isopen
          @YzHostId = yzhostid
          @VulRepairPlan = vulrepairplan
          @VulPath = vulpath
        end

        def deserialize(params)
          @Id = params['Id']
          @VulName = params['VulName']
          @Type = params['Type']
          @Level = params['Level']
          @Status = params['Status']
          @Time = params['Time']
          @ImpactAssetNum = params['ImpactAssetNum']
          @ImpactAsset = params['ImpactAsset']
          @ImpactAssetName = params['ImpactAssetName']
          @VulDetail = params['VulDetail']
          @VulRefLink = params['VulRefLink']
          @OldIdMd5 = params['OldIdMd5']
          @UniqId = params['UniqId']
          @OperateTime = params['OperateTime']
          @IsAssetDeleted = params['IsAssetDeleted']
          @DiscoverTime = params['DiscoverTime']
          @OriginId = params['OriginId']
          @Region = params['Region']
          @Vpcid = params['Vpcid']
          @AssetType = params['AssetType']
          @AssetSubType = params['AssetSubType']
          @AssetIpAll = params['AssetIpAll']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @VulSource = params['VulSource']
          @AffectedUrl = params['AffectedUrl']
          @SsaAssetCategory = params['SsaAssetCategory']
          @VulUrl = params['VulUrl']
          @IsOpen = params['IsOpen']
          @YzHostId = params['YzHostId']
          @VulRepairPlan = params['VulRepairPlan']
          @VulPath = params['VulPath']
        end
      end

      # 漏洞管理漏洞列表
      class VulList < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # @type List: Array
        # @param Total: 总数
        # @type Total: Integer

        attr_accessor :List, :Total
        
        def initialize(list=nil, total=nil)
          @List = list
          @Total = total
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              vulitem_tmp = VulItem.new
              vulitem_tmp.deserialize(i)
              @List << vulitem_tmp
            end
          end
          @Total = params['Total']
        end
      end

    end
  end
end

