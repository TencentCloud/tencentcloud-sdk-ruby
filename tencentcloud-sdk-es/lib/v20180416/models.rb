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
  module Es
    module V20180416
      # 后备索引元数据字段
      class BackingIndexMetaField < TencentCloud::Common::AbstractModel
        # @param IndexName: 后备索引名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexName: String
        # @param IndexStatus: 后备索引状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStatus: String
        # @param IndexStorage: 后备索引存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStorage: Integer
        # @param IndexPhrase: 后备索引当前生命周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexPhrase: String
        # @param IndexCreateTime: 后备索引创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexCreateTime: String

        attr_accessor :IndexName, :IndexStatus, :IndexStorage, :IndexPhrase, :IndexCreateTime
        
        def initialize(indexname=nil, indexstatus=nil, indexstorage=nil, indexphrase=nil, indexcreatetime=nil)
          @IndexName = indexname
          @IndexStatus = indexstatus
          @IndexStorage = indexstorage
          @IndexPhrase = indexphrase
          @IndexCreateTime = indexcreatetime
        end

        def deserialize(params)
          @IndexName = params['IndexName']
          @IndexStatus = params['IndexStatus']
          @IndexStorage = params['IndexStorage']
          @IndexPhrase = params['IndexPhrase']
          @IndexCreateTime = params['IndexCreateTime']
        end
      end

      # 集群维度视图数据
      class ClusterView < TencentCloud::Common::AbstractModel
        # @param Health: 集群健康状态
        # @type Health: Float
        # @param Visible: 集群是否可见
        # @type Visible: Float
        # @param Break: 集群是否熔断
        # @type Break: Float
        # @param AvgDiskUsage: 平均磁盘使用率
        # @type AvgDiskUsage: Float
        # @param AvgMemUsage: 平均内存使用率
        # @type AvgMemUsage: Float
        # @param AvgCpuUsage: 平均cpu使用率
        # @type AvgCpuUsage: Float
        # @param TotalDiskSize: 集群总存储大小
        # @type TotalDiskSize: Integer
        # @param TargetNodeTypes: 客户端请求节点
        # @type TargetNodeTypes: Array
        # @param NodeNum: 在线节点数
        # @type NodeNum: Integer
        # @param TotalNodeNum: 总节点数
        # @type TotalNodeNum: Integer
        # @param DataNodeNum: 数据节点数
        # @type DataNodeNum: Integer
        # @param IndexNum: 索引数
        # @type IndexNum: Integer
        # @param DocNum: 文档数
        # @type DocNum: Integer
        # @param DiskUsedInBytes: 磁盘已使用字节数
        # @type DiskUsedInBytes: Integer
        # @param ShardNum: 分片个数
        # @type ShardNum: Integer
        # @param PrimaryShardNum: 主分片个数
        # @type PrimaryShardNum: Integer
        # @param RelocatingShardNum: 迁移中的分片个数
        # @type RelocatingShardNum: Integer
        # @param InitializingShardNum: 初始化中的分片个数
        # @type InitializingShardNum: Integer
        # @param UnassignedShardNum: 未分配的分片个数
        # @type UnassignedShardNum: Integer
        # @param TotalCosStorage: 企业版COS存储容量大小，单位GB
        # @type TotalCosStorage: Integer
        # @param SearchableSnapshotCosBucket: 企业版集群可搜索快照cos存放的bucket名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchableSnapshotCosBucket: String
        # @param SearchableSnapshotCosAppId: 企业版集群可搜索快照cos所属appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchableSnapshotCosAppId: String

        attr_accessor :Health, :Visible, :Break, :AvgDiskUsage, :AvgMemUsage, :AvgCpuUsage, :TotalDiskSize, :TargetNodeTypes, :NodeNum, :TotalNodeNum, :DataNodeNum, :IndexNum, :DocNum, :DiskUsedInBytes, :ShardNum, :PrimaryShardNum, :RelocatingShardNum, :InitializingShardNum, :UnassignedShardNum, :TotalCosStorage, :SearchableSnapshotCosBucket, :SearchableSnapshotCosAppId
        
        def initialize(health=nil, visible=nil, _break=nil, avgdiskusage=nil, avgmemusage=nil, avgcpuusage=nil, totaldisksize=nil, targetnodetypes=nil, nodenum=nil, totalnodenum=nil, datanodenum=nil, indexnum=nil, docnum=nil, diskusedinbytes=nil, shardnum=nil, primaryshardnum=nil, relocatingshardnum=nil, initializingshardnum=nil, unassignedshardnum=nil, totalcosstorage=nil, searchablesnapshotcosbucket=nil, searchablesnapshotcosappid=nil)
          @Health = health
          @Visible = visible
          @Break = _break
          @AvgDiskUsage = avgdiskusage
          @AvgMemUsage = avgmemusage
          @AvgCpuUsage = avgcpuusage
          @TotalDiskSize = totaldisksize
          @TargetNodeTypes = targetnodetypes
          @NodeNum = nodenum
          @TotalNodeNum = totalnodenum
          @DataNodeNum = datanodenum
          @IndexNum = indexnum
          @DocNum = docnum
          @DiskUsedInBytes = diskusedinbytes
          @ShardNum = shardnum
          @PrimaryShardNum = primaryshardnum
          @RelocatingShardNum = relocatingshardnum
          @InitializingShardNum = initializingshardnum
          @UnassignedShardNum = unassignedshardnum
          @TotalCosStorage = totalcosstorage
          @SearchableSnapshotCosBucket = searchablesnapshotcosbucket
          @SearchableSnapshotCosAppId = searchablesnapshotcosappid
        end

        def deserialize(params)
          @Health = params['Health']
          @Visible = params['Visible']
          @Break = params['Break']
          @AvgDiskUsage = params['AvgDiskUsage']
          @AvgMemUsage = params['AvgMemUsage']
          @AvgCpuUsage = params['AvgCpuUsage']
          @TotalDiskSize = params['TotalDiskSize']
          @TargetNodeTypes = params['TargetNodeTypes']
          @NodeNum = params['NodeNum']
          @TotalNodeNum = params['TotalNodeNum']
          @DataNodeNum = params['DataNodeNum']
          @IndexNum = params['IndexNum']
          @DocNum = params['DocNum']
          @DiskUsedInBytes = params['DiskUsedInBytes']
          @ShardNum = params['ShardNum']
          @PrimaryShardNum = params['PrimaryShardNum']
          @RelocatingShardNum = params['RelocatingShardNum']
          @InitializingShardNum = params['InitializingShardNum']
          @UnassignedShardNum = params['UnassignedShardNum']
          @TotalCosStorage = params['TotalCosStorage']
          @SearchableSnapshotCosBucket = params['SearchableSnapshotCosBucket']
          @SearchableSnapshotCosAppId = params['SearchableSnapshotCosAppId']
        end
      end

      # ES cos自动备份信息
      class CosBackup < TencentCloud::Common::AbstractModel
        # @param IsAutoBackup: 是否开启cos自动备份
        # @type IsAutoBackup: Boolean
        # @param BackupTime: 自动备份执行时间（精确到小时）, e.g. "22:00"
        # @type BackupTime: String

        attr_accessor :IsAutoBackup, :BackupTime
        
        def initialize(isautobackup=nil, backuptime=nil)
          @IsAutoBackup = isautobackup
          @BackupTime = backuptime
        end

        def deserialize(params)
          @IsAutoBackup = params['IsAutoBackup']
          @BackupTime = params['BackupTime']
        end
      end

      # CreateIndex请求参数结构体
      class CreateIndexRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES集群ID
        # @type InstanceId: String
        # @param IndexType: 创建的索引类型。auto：自治索引；normal：普通索引
        # @type IndexType: String
        # @param IndexName: 创建的索引名
        # @type IndexName: String
        # @param IndexMetaJson: 创建的索引元数据JSON，如mappings、settings
        # @type IndexMetaJson: String
        # @param Username: 集群访问用户名
        # @type Username: String
        # @param Password: 集群访问密码
        # @type Password: String

        attr_accessor :InstanceId, :IndexType, :IndexName, :IndexMetaJson, :Username, :Password
        
        def initialize(instanceid=nil, indextype=nil, indexname=nil, indexmetajson=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @IndexType = indextype
          @IndexName = indexname
          @IndexMetaJson = indexmetajson
          @Username = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IndexType = params['IndexType']
          @IndexName = params['IndexName']
          @IndexMetaJson = params['IndexMetaJson']
          @Username = params['Username']
          @Password = params['Password']
        end
      end

      # CreateIndex返回参数结构体
      class CreateIndexResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param EsVersion: 实例版本（支持"5.6.4"、"6.4.3"、"6.8.2"、"7.5.1"、"7.10.1"）
        # @type EsVersion: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Password: 访问密码（密码需8到16位，至少包括两项（[a-z,A-Z],[0-9]和[-!@#$%&^*+=_:;,.?]的特殊符号）
        # @type Password: String
        # @param InstanceName: 实例名称（1-50 个英文、汉字、数字、连接线-或下划线_）
        # @type InstanceName: String
        # @param NodeNum: 已废弃请使用NodeInfoList
        # 节点数量（2-50个）
        # @type NodeNum: Integer
        # @param ChargeType: 计费类型<li>PREPAID：预付费，即包年包月</li><li>POSTPAID_BY_HOUR：按小时后付费</li>默认值POSTPAID_BY_HOUR
        # @type ChargeType: String
        # @param ChargePeriod: 包年包月购买时长（单位由参数TimeUnit决定）
        # @type ChargePeriod: Integer
        # @param RenewFlag: 自动续费标识<li>RENEW_FLAG_AUTO：自动续费</li><li>RENEW_FLAG_MANUAL：不自动续费，用户手动续费</li>ChargeType为PREPAID时需要设置，如不传递该参数，普通用户默认不自动续费，SVIP用户自动续费
        # @type RenewFlag: String
        # @param NodeType: 已废弃请使用NodeInfoList
        # 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param DiskType: 已废弃请使用NodeInfoList
        # 节点磁盘类型<li>CLOUD_SSD：SSD云硬盘</li><li>CLOUD_PREMIUM：高硬能云硬盘</li>默认值CLOUD_SSD
        # @type DiskType: String
        # @param DiskSize: 已废弃请使用NodeInfoList
        # 节点磁盘容量（单位GB）
        # @type DiskSize: Integer
        # @param TimeUnit: 计费时长单位（ChargeType为PREPAID时需要设置，默认值为“m”，表示月，当前只支持“m”）
        # @type TimeUnit: String
        # @param AutoVoucher: 是否自动使用代金券<li>0：不自动使用</li><li>1：自动使用</li>默认值0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表（目前仅支持指定一张代金券）
        # @type VoucherIds: Array
        # @param EnableDedicatedMaster: 已废弃请使用NodeInfoList
        # 是否创建专用主节点<li>true：开启专用主节点</li><li>false：不开启专用主节点</li>默认值false
        # @type EnableDedicatedMaster: Boolean
        # @param MasterNodeNum: 已废弃请使用NodeInfoList
        # 专用主节点个数（只支持3个和5个，EnableDedicatedMaster为true时该值必传）
        # @type MasterNodeNum: Integer
        # @param MasterNodeType: 已废弃请使用NodeInfoList
        # 专用主节点类型（EnableDedicatedMaster为true时必传）<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type MasterNodeType: String
        # @param MasterNodeDiskSize: 已废弃请使用NodeInfoList
        # 专用主节点磁盘大小（单位GB，非必传，若传递则必须为50，暂不支持自定义）
        # @type MasterNodeDiskSize: Integer
        # @param ClusterNameInConf: 集群配置文件中的ClusterName（系统默认配置为实例ID，暂不支持自定义）
        # @type ClusterNameInConf: String
        # @param DeployMode: 集群部署方式<li>0：单可用区部署</li><li>1：多可用区部署</li>默认为0
        # @type DeployMode: Integer
        # @param MultiZoneInfo: 多可用区部署时可用区的详细信息(DeployMode为1时必传)
        # @type MultiZoneInfo: Array
        # @param LicenseType: License类型<li>oss：开源版</li><li>basic：基础版</li><li>platinum：白金版</li>默认值platinum
        # @type LicenseType: String
        # @param NodeInfoList: 节点信息列表， 用于描述集群各类节点的规格信息如节点类型，节点个数，节点规格，磁盘类型，磁盘大小等
        # @type NodeInfoList: Array
        # @param TagList: 节点标签信息列表
        # @type TagList: Array
        # @param BasicSecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # @type BasicSecurityType: Integer
        # @param SceneType: 场景化模板类型 0：不启用 1：通用 2：日志 3：搜索
        # @type SceneType: Integer
        # @param WebNodeTypeInfo: 可视化节点配置
        # @type WebNodeTypeInfo: :class:`Tencentcloud::Es.v20180416.models.WebNodeTypeInfo`
        # @param Protocol: 创建https集群，默认是http
        # @type Protocol: String
        # @param OperationDuration: 可维护时间段
        # @type OperationDuration: :class:`Tencentcloud::Es.v20180416.models.OperationDuration`
        # @param EnableHybridStorage: 是否开启存算分离
        # @type EnableHybridStorage: Boolean

        attr_accessor :Zone, :EsVersion, :VpcId, :SubnetId, :Password, :InstanceName, :NodeNum, :ChargeType, :ChargePeriod, :RenewFlag, :NodeType, :DiskType, :DiskSize, :TimeUnit, :AutoVoucher, :VoucherIds, :EnableDedicatedMaster, :MasterNodeNum, :MasterNodeType, :MasterNodeDiskSize, :ClusterNameInConf, :DeployMode, :MultiZoneInfo, :LicenseType, :NodeInfoList, :TagList, :BasicSecurityType, :SceneType, :WebNodeTypeInfo, :Protocol, :OperationDuration, :EnableHybridStorage
        
        def initialize(zone=nil, esversion=nil, vpcid=nil, subnetid=nil, password=nil, instancename=nil, nodenum=nil, chargetype=nil, chargeperiod=nil, renewflag=nil, nodetype=nil, disktype=nil, disksize=nil, timeunit=nil, autovoucher=nil, voucherids=nil, enablededicatedmaster=nil, masternodenum=nil, masternodetype=nil, masternodedisksize=nil, clusternameinconf=nil, deploymode=nil, multizoneinfo=nil, licensetype=nil, nodeinfolist=nil, taglist=nil, basicsecuritytype=nil, scenetype=nil, webnodetypeinfo=nil, protocol=nil, operationduration=nil, enablehybridstorage=nil)
          @Zone = zone
          @EsVersion = esversion
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @InstanceName = instancename
          @NodeNum = nodenum
          @ChargeType = chargetype
          @ChargePeriod = chargeperiod
          @RenewFlag = renewflag
          @NodeType = nodetype
          @DiskType = disktype
          @DiskSize = disksize
          @TimeUnit = timeunit
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @EnableDedicatedMaster = enablededicatedmaster
          @MasterNodeNum = masternodenum
          @MasterNodeType = masternodetype
          @MasterNodeDiskSize = masternodedisksize
          @ClusterNameInConf = clusternameinconf
          @DeployMode = deploymode
          @MultiZoneInfo = multizoneinfo
          @LicenseType = licensetype
          @NodeInfoList = nodeinfolist
          @TagList = taglist
          @BasicSecurityType = basicsecuritytype
          @SceneType = scenetype
          @WebNodeTypeInfo = webnodetypeinfo
          @Protocol = protocol
          @OperationDuration = operationduration
          @EnableHybridStorage = enablehybridstorage
        end

        def deserialize(params)
          @Zone = params['Zone']
          @EsVersion = params['EsVersion']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          @InstanceName = params['InstanceName']
          @NodeNum = params['NodeNum']
          @ChargeType = params['ChargeType']
          @ChargePeriod = params['ChargePeriod']
          @RenewFlag = params['RenewFlag']
          @NodeType = params['NodeType']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @TimeUnit = params['TimeUnit']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @EnableDedicatedMaster = params['EnableDedicatedMaster']
          @MasterNodeNum = params['MasterNodeNum']
          @MasterNodeType = params['MasterNodeType']
          @MasterNodeDiskSize = params['MasterNodeDiskSize']
          @ClusterNameInConf = params['ClusterNameInConf']
          @DeployMode = params['DeployMode']
          unless params['MultiZoneInfo'].nil?
            @MultiZoneInfo = []
            params['MultiZoneInfo'].each do |i|
              zonedetail_tmp = ZoneDetail.new
              zonedetail_tmp.deserialize(i)
              @MultiZoneInfo << zonedetail_tmp
            end
          end
          @LicenseType = params['LicenseType']
          unless params['NodeInfoList'].nil?
            @NodeInfoList = []
            params['NodeInfoList'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @NodeInfoList << nodeinfo_tmp
            end
          end
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagList << taginfo_tmp
            end
          end
          @BasicSecurityType = params['BasicSecurityType']
          @SceneType = params['SceneType']
          unless params['WebNodeTypeInfo'].nil?
            @WebNodeTypeInfo = WebNodeTypeInfo.new
            @WebNodeTypeInfo.deserialize(params['WebNodeTypeInfo'])
          end
          @Protocol = params['Protocol']
          unless params['OperationDuration'].nil?
            @OperationDuration = OperationDuration.new
            @OperationDuration.deserialize(params['OperationDuration'])
          end
          @EnableHybridStorage = params['EnableHybridStorage']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DealName: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :DealName, :RequestId
        
        def initialize(instanceid=nil, dealname=nil, requestid=nil)
          @InstanceId = instanceid
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # CreateLogstashInstance请求参数结构体
      class CreateLogstashInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称（1-50 个英文、汉字、数字、连接线-或下划线_）
        # @type InstanceName: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param LogstashVersion: 实例版本（支持"6.8.13"、"7.10.1"）
        # @type LogstashVersion: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param NodeNum: 节点数量（2-50个）
        # @type NodeNum: Integer
        # @param ChargeType: 计费类型<li>PREPAID：预付费，即包年包月</li><li>POSTPAID_BY_HOUR：按小时后付费</li>默认值POSTPAID_BY_HOUR
        # @type ChargeType: String
        # @param ChargePeriod: 包年包月购买时长（单位由参数TimeUnit决定）
        # @type ChargePeriod: Integer
        # @param TimeUnit: 计费时长单位（ChargeType为PREPAID时需要设置，默认值为“m”，表示月，当前只支持“m”）
        # @type TimeUnit: String
        # @param AutoVoucher: 是否自动使用代金券<li>0：不自动使用</li><li>1：自动使用</li>默认值0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表（目前仅支持指定一张代金券）
        # @type VoucherIds: Array
        # @param RenewFlag: 自动续费标识<li>RENEW_FLAG_AUTO：自动续费</li><li>RENEW_FLAG_MANUAL：不自动续费，用户手动续费</li>ChargeType为PREPAID时需要设置，如不传递该参数，普通用户默认不自动续费，SVIP用户自动续费
        # @type RenewFlag: String
        # @param NodeType: 节点规格<li>LOGSTASH.S1.SMALL2：1核2G</li><li>LOGSTASH.S1.MEDIUM4：2核4G</li><li>LOGSTASH.S1.MEDIUM8：2核8G</li><li>LOGSTASH.S1.LARGE16：4核16G</li><li>LOGSTASH.S1.2XLARGE32：8核32G</li><li>LOGSTASH.S1.4XLARGE32：16核32G</li><li>LOGSTASH.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param DiskType: 节点磁盘类型<li>CLOUD_SSD：SSD云硬盘</li><li>CLOUD_PREMIUM：高硬能云硬盘</li>默认值CLOUD_SSD
        # @type DiskType: String
        # @param DiskSize: 节点磁盘容量（单位GB）
        # @type DiskSize: Integer
        # @param LicenseType: License类型<li>oss：开源版</li><li>xpack：xpack版</li>默认值xpack
        # @type LicenseType: String
        # @param TagList: 标签信息列表
        # @type TagList: Array
        # @param OperationDuration: 可维护时间段
        # @type OperationDuration: :class:`Tencentcloud::Es.v20180416.models.OperationDuration`

        attr_accessor :InstanceName, :Zone, :LogstashVersion, :VpcId, :SubnetId, :NodeNum, :ChargeType, :ChargePeriod, :TimeUnit, :AutoVoucher, :VoucherIds, :RenewFlag, :NodeType, :DiskType, :DiskSize, :LicenseType, :TagList, :OperationDuration
        
        def initialize(instancename=nil, zone=nil, logstashversion=nil, vpcid=nil, subnetid=nil, nodenum=nil, chargetype=nil, chargeperiod=nil, timeunit=nil, autovoucher=nil, voucherids=nil, renewflag=nil, nodetype=nil, disktype=nil, disksize=nil, licensetype=nil, taglist=nil, operationduration=nil)
          @InstanceName = instancename
          @Zone = zone
          @LogstashVersion = logstashversion
          @VpcId = vpcid
          @SubnetId = subnetid
          @NodeNum = nodenum
          @ChargeType = chargetype
          @ChargePeriod = chargeperiod
          @TimeUnit = timeunit
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @RenewFlag = renewflag
          @NodeType = nodetype
          @DiskType = disktype
          @DiskSize = disksize
          @LicenseType = licensetype
          @TagList = taglist
          @OperationDuration = operationduration
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Zone = params['Zone']
          @LogstashVersion = params['LogstashVersion']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @NodeNum = params['NodeNum']
          @ChargeType = params['ChargeType']
          @ChargePeriod = params['ChargePeriod']
          @TimeUnit = params['TimeUnit']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @RenewFlag = params['RenewFlag']
          @NodeType = params['NodeType']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @LicenseType = params['LicenseType']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagList << taginfo_tmp
            end
          end
          unless params['OperationDuration'].nil?
            @OperationDuration = OperationDuration.new
            @OperationDuration.deserialize(params['OperationDuration'])
          end
        end
      end

      # CreateLogstashInstance返回参数结构体
      class CreateLogstashInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteIndex请求参数结构体
      class DeleteIndexRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES集群ID
        # @type InstanceId: String
        # @param IndexType: 删除的索引类型。auto：自治索引；normal：普通索引
        # @type IndexType: String
        # @param IndexName: 删除的索引名
        # @type IndexName: String
        # @param Username: 集群访问用户名
        # @type Username: String
        # @param Password: 集群访问密码
        # @type Password: String
        # @param BackingIndexName: 后备索引名
        # @type BackingIndexName: String

        attr_accessor :InstanceId, :IndexType, :IndexName, :Username, :Password, :BackingIndexName
        
        def initialize(instanceid=nil, indextype=nil, indexname=nil, username=nil, password=nil, backingindexname=nil)
          @InstanceId = instanceid
          @IndexType = indextype
          @IndexName = indexname
          @Username = username
          @Password = password
          @BackingIndexName = backingindexname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IndexType = params['IndexType']
          @IndexName = params['IndexName']
          @Username = params['Username']
          @Password = params['Password']
          @BackingIndexName = params['BackingIndexName']
        end
      end

      # DeleteIndex返回参数结构体
      class DeleteIndexResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstance返回参数结构体
      class DeleteInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLogstashInstance请求参数结构体
      class DeleteLogstashInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteLogstashInstance返回参数结构体
      class DeleteLogstashInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLogstashPipelines请求参数结构体
      class DeleteLogstashPipelinesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param PipelineIds: 管道ID列表
        # @type PipelineIds: Array

        attr_accessor :InstanceId, :PipelineIds
        
        def initialize(instanceid=nil, pipelineids=nil)
          @InstanceId = instanceid
          @PipelineIds = pipelineids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PipelineIds = params['PipelineIds']
        end
      end

      # DeleteLogstashPipelines返回参数结构体
      class DeleteLogstashPipelinesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeIndexList请求参数结构体
      class DescribeIndexListRequest < TencentCloud::Common::AbstractModel
        # @param IndexType: 索引类型。auto：自治索引；normal：普通索引
        # @type IndexType: String
        # @param InstanceId: ES集群ID
        # @type InstanceId: String
        # @param IndexName: 索引名，若填空则获取所有索引
        # @type IndexName: String
        # @param Username: 集群访问用户名
        # @type Username: String
        # @param Password: 集群访问密码
        # @type Password: String
        # @param Offset: 分页起始位置
        # @type Offset: Integer
        # @param Limit: 一页展示数量
        # @type Limit: Integer
        # @param OrderBy: 排序字段，支持索引名：IndexName、索引存储量：IndexStorage、索引创建时间：IndexCreateTime
        # @type OrderBy: String
        # @param IndexStatusList: 过滤索引状态
        # @type IndexStatusList: Array
        # @param Order: 排序顺序，支持asc、desc
        # @type Order: String

        attr_accessor :IndexType, :InstanceId, :IndexName, :Username, :Password, :Offset, :Limit, :OrderBy, :IndexStatusList, :Order
        
        def initialize(indextype=nil, instanceid=nil, indexname=nil, username=nil, password=nil, offset=nil, limit=nil, orderby=nil, indexstatuslist=nil, order=nil)
          @IndexType = indextype
          @InstanceId = instanceid
          @IndexName = indexname
          @Username = username
          @Password = password
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @IndexStatusList = indexstatuslist
          @Order = order
        end

        def deserialize(params)
          @IndexType = params['IndexType']
          @InstanceId = params['InstanceId']
          @IndexName = params['IndexName']
          @Username = params['Username']
          @Password = params['Password']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @IndexStatusList = params['IndexStatusList']
          @Order = params['Order']
        end
      end

      # DescribeIndexList返回参数结构体
      class DescribeIndexListResponse < TencentCloud::Common::AbstractModel
        # @param IndexMetaFields: 索引元数据字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexMetaFields: Array
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IndexMetaFields, :TotalCount, :RequestId
        
        def initialize(indexmetafields=nil, totalcount=nil, requestid=nil)
          @IndexMetaFields = indexmetafields
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IndexMetaFields'].nil?
            @IndexMetaFields = []
            params['IndexMetaFields'].each do |i|
              indexmetafield_tmp = IndexMetaField.new
              indexmetafield_tmp.deserialize(i)
              @IndexMetaFields << indexmetafield_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIndexMeta请求参数结构体
      class DescribeIndexMetaRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES集群ID
        # @type InstanceId: String
        # @param IndexType: 索引类型。auto：自治索引；normal：普通索引
        # @type IndexType: String
        # @param IndexName: 索引名，若填空则获取所有索引
        # @type IndexName: String
        # @param Username: 集群访问用户名
        # @type Username: String
        # @param Password: 集群访问密码
        # @type Password: String

        attr_accessor :InstanceId, :IndexType, :IndexName, :Username, :Password
        
        def initialize(instanceid=nil, indextype=nil, indexname=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @IndexType = indextype
          @IndexName = indexname
          @Username = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IndexType = params['IndexType']
          @IndexName = params['IndexName']
          @Username = params['Username']
          @Password = params['Password']
        end
      end

      # DescribeIndexMeta返回参数结构体
      class DescribeIndexMetaResponse < TencentCloud::Common::AbstractModel
        # @param IndexMetaField: 索引元数据字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexMetaField: :class:`Tencentcloud::Es.v20180416.models.IndexMetaField`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IndexMetaField, :RequestId
        
        def initialize(indexmetafield=nil, requestid=nil)
          @IndexMetaField = indexmetafield
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IndexMetaField'].nil?
            @IndexMetaField = IndexMetaField.new
            @IndexMetaField.deserialize(params['IndexMetaField'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLogs请求参数结构体
      class DescribeInstanceLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param LogType: 日志类型，默认值为1
        # <li>1, 主日志</li>
        # <li>2, 搜索慢日志</li>
        # <li>3, 索引慢日志</li>
        # <li>4, GC日志</li>
        # @type LogType: Integer
        # @param SearchKey: 搜索词，支持LUCENE语法，如 level:WARN、ip:1.1.1.1、message:test-index等
        # @type SearchKey: String
        # @param StartTime: 日志开始时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        # @type StartTime: String
        # @param EndTime: 日志结束时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        # @type EndTime: String
        # @param Offset: 分页起始值, 默认值为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值为100，最大值100
        # @type Limit: Integer
        # @param OrderByType: 时间排序方式，默认值为0
        # <li>0, 降序</li>
        # <li>1, 升序</li>
        # @type OrderByType: Integer

        attr_accessor :InstanceId, :LogType, :SearchKey, :StartTime, :EndTime, :Offset, :Limit, :OrderByType
        
        def initialize(instanceid=nil, logtype=nil, searchkey=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, orderbytype=nil)
          @InstanceId = instanceid
          @LogType = logtype
          @SearchKey = searchkey
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogType = params['LogType']
          @SearchKey = params['SearchKey']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeInstanceLogs返回参数结构体
      class DescribeInstanceLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的日志条数
        # @type TotalCount: Integer
        # @param InstanceLogList: 日志详细信息列表
        # @type InstanceLogList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceLogList, :RequestId
        
        def initialize(totalcount=nil, instanceloglist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceLogList = instanceloglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceLogList'].nil?
            @InstanceLogList = []
            params['InstanceLogList'].each do |i|
              instancelog_tmp = InstanceLog.new
              instancelog_tmp.deserialize(i)
              @InstanceLogList << instancelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceOperations请求参数结构体
      class DescribeInstanceOperationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param StartTime: 起始时间, e.g. "2019-03-07 16:30:39"
        # @type StartTime: String
        # @param EndTime: 结束时间, e.g. "2019-03-30 20:18:03"
        # @type EndTime: String
        # @param Offset: 分页起始值
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstanceOperations返回参数结构体
      class DescribeInstanceOperationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 操作记录总数
        # @type TotalCount: Integer
        # @param Operations: 操作记录
        # @type Operations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Operations, :RequestId
        
        def initialize(totalcount=nil, operations=nil, requestid=nil)
          @TotalCount = totalcount
          @Operations = operations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              operation_tmp = Operation.new
              operation_tmp.deserialize(i)
              @Operations << operation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 集群实例所属可用区，不传则默认所有可用区
        # @type Zone: String
        # @param InstanceIds: 集群实例ID列表
        # @type InstanceIds: Array
        # @param InstanceNames: 集群实例名称列表
        # @type InstanceNames: Array
        # @param Offset: 分页起始值, 默认值0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值20
        # @type Limit: Integer
        # @param OrderByKey: 排序字段<li>1：实例ID</li><li>2：实例名称</li><li>3：可用区</li><li>4：创建时间</li>若orderKey未传递则按创建时间降序排序
        # @type OrderByKey: Integer
        # @param OrderByType: 排序方式<li>0：升序</li><li>1：降序</li>若传递了orderByKey未传递orderByType, 则默认升序
        # @type OrderByType: Integer
        # @param TagList: 节点标签信息列表
        # @type TagList: Array
        # @param IpList: 私有网络vip列表
        # @type IpList: Array
        # @param ZoneList: 可用区列表
        # @type ZoneList: Array
        # @param HealthStatus: 健康状态筛列表
        # @type HealthStatus: Array
        # @param VpcIds: Vpc列表 筛选项
        # @type VpcIds: Array

        attr_accessor :Zone, :InstanceIds, :InstanceNames, :Offset, :Limit, :OrderByKey, :OrderByType, :TagList, :IpList, :ZoneList, :HealthStatus, :VpcIds
        
        def initialize(zone=nil, instanceids=nil, instancenames=nil, offset=nil, limit=nil, orderbykey=nil, orderbytype=nil, taglist=nil, iplist=nil, zonelist=nil, healthstatus=nil, vpcids=nil)
          @Zone = zone
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @Offset = offset
          @Limit = limit
          @OrderByKey = orderbykey
          @OrderByType = orderbytype
          @TagList = taglist
          @IpList = iplist
          @ZoneList = zonelist
          @HealthStatus = healthstatus
          @VpcIds = vpcids
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByKey = params['OrderByKey']
          @OrderByType = params['OrderByType']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagList << taginfo_tmp
            end
          end
          @IpList = params['IpList']
          @ZoneList = params['ZoneList']
          @HealthStatus = params['HealthStatus']
          @VpcIds = params['VpcIds']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的实例个数
        # @type TotalCount: Integer
        # @param InstanceList: 实例详细信息列表
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceList, :RequestId
        
        def initialize(totalcount=nil, instancelist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstanceList << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogstashInstanceLogs请求参数结构体
      class DescribeLogstashInstanceLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param LogType: 日志类型，默认值为1
        # <li>1, 主日志</li>
        # <li>2, 慢日志</li>
        # <li>3, GC日志</li>
        # @type LogType: Integer
        # @param SearchKey: 搜索词，支持LUCENE语法，如 level:WARN、ip:1.1.1.1、message:test-index等
        # @type SearchKey: String
        # @param StartTime: 日志开始时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        # @type StartTime: String
        # @param EndTime: 日志结束时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        # @type EndTime: String
        # @param Offset: 分页起始值, 默认值为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值为100，最大值100
        # @type Limit: Integer
        # @param OrderByType: 时间排序方式，默认值为0
        # <li>0, 降序</li>
        # <li>1, 升序</li>
        # @type OrderByType: Integer

        attr_accessor :InstanceId, :LogType, :SearchKey, :StartTime, :EndTime, :Offset, :Limit, :OrderByType
        
        def initialize(instanceid=nil, logtype=nil, searchkey=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, orderbytype=nil)
          @InstanceId = instanceid
          @LogType = logtype
          @SearchKey = searchkey
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogType = params['LogType']
          @SearchKey = params['SearchKey']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeLogstashInstanceLogs返回参数结构体
      class DescribeLogstashInstanceLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的日志条数
        # @type TotalCount: Integer
        # @param InstanceLogList: 日志详细信息列表
        # @type InstanceLogList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceLogList, :RequestId
        
        def initialize(totalcount=nil, instanceloglist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceLogList = instanceloglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceLogList'].nil?
            @InstanceLogList = []
            params['InstanceLogList'].each do |i|
              instancelog_tmp = InstanceLog.new
              instancelog_tmp.deserialize(i)
              @InstanceLogList << instancelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogstashInstanceOperations请求参数结构体
      class DescribeLogstashInstanceOperationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 起始时间, e.g. "2019-03-07 16:30:39"
        # @type StartTime: String
        # @param EndTime: 结束时间, e.g. "2019-03-30 20:18:03"
        # @type EndTime: String
        # @param Offset: 分页起始值
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeLogstashInstanceOperations返回参数结构体
      class DescribeLogstashInstanceOperationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 操作记录总数
        # @type TotalCount: Integer
        # @param Operations: 操作记录
        # @type Operations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Operations, :RequestId
        
        def initialize(totalcount=nil, operations=nil, requestid=nil)
          @TotalCount = totalcount
          @Operations = operations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              operation_tmp = Operation.new
              operation_tmp.deserialize(i)
              @Operations << operation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogstashInstances请求参数结构体
      class DescribeLogstashInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属可用区，不传则默认所有可用区
        # @type Zone: String
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array
        # @param InstanceNames: 实例名称列表
        # @type InstanceNames: Array
        # @param Offset: 分页起始值, 默认值0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值20
        # @type Limit: Integer
        # @param OrderByKey: 排序字段<li>1：实例ID</li><li>2：实例名称</li><li>3：可用区</li><li>4：创建时间</li>若orderKey未传递则按创建时间降序排序
        # @type OrderByKey: Integer
        # @param OrderByType: 排序方式<li>0：升序</li><li>1：降序</li>若传递了orderByKey未传递orderByType, 则默认升序
        # @type OrderByType: Integer
        # @param VpcIds: VpcId 筛选项
        # @type VpcIds: Array

        attr_accessor :Zone, :InstanceIds, :InstanceNames, :Offset, :Limit, :OrderByKey, :OrderByType, :VpcIds
        
        def initialize(zone=nil, instanceids=nil, instancenames=nil, offset=nil, limit=nil, orderbykey=nil, orderbytype=nil, vpcids=nil)
          @Zone = zone
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @Offset = offset
          @Limit = limit
          @OrderByKey = orderbykey
          @OrderByType = orderbytype
          @VpcIds = vpcids
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByKey = params['OrderByKey']
          @OrderByType = params['OrderByType']
          @VpcIds = params['VpcIds']
        end
      end

      # DescribeLogstashInstances返回参数结构体
      class DescribeLogstashInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的实例个数
        # @type TotalCount: Integer
        # @param InstanceList: 实例详细信息列表
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceList, :RequestId
        
        def initialize(totalcount=nil, instancelist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              logstashinstanceinfo_tmp = LogstashInstanceInfo.new
              logstashinstanceinfo_tmp.deserialize(i)
              @InstanceList << logstashinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogstashPipelines请求参数结构体
      class DescribeLogstashPipelinesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeLogstashPipelines返回参数结构体
      class DescribeLogstashPipelinesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 管道总数
        # @type TotalCount: Integer
        # @param LogstashPipelineList: 管道列表
        # @type LogstashPipelineList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LogstashPipelineList, :RequestId
        
        def initialize(totalcount=nil, logstashpipelinelist=nil, requestid=nil)
          @TotalCount = totalcount
          @LogstashPipelineList = logstashpipelinelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LogstashPipelineList'].nil?
            @LogstashPipelineList = []
            params['LogstashPipelineList'].each do |i|
              logstashpipelineinfo_tmp = LogstashPipelineInfo.new
              logstashpipelineinfo_tmp.deserialize(i)
              @LogstashPipelineList << logstashpipelineinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeViews请求参数结构体
      class DescribeViewsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeViews返回参数结构体
      class DescribeViewsResponse < TencentCloud::Common::AbstractModel
        # @param ClusterView: 集群维度视图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterView: :class:`Tencentcloud::Es.v20180416.models.ClusterView`
        # @param NodesView: 节点维度视图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodesView: Array
        # @param KibanasView: Kibana维度视图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanasView: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterView, :NodesView, :KibanasView, :RequestId
        
        def initialize(clusterview=nil, nodesview=nil, kibanasview=nil, requestid=nil)
          @ClusterView = clusterview
          @NodesView = nodesview
          @KibanasView = kibanasview
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterView'].nil?
            @ClusterView = ClusterView.new
            @ClusterView.deserialize(params['ClusterView'])
          end
          unless params['NodesView'].nil?
            @NodesView = []
            params['NodesView'].each do |i|
              nodeview_tmp = NodeView.new
              nodeview_tmp.deserialize(i)
              @NodesView << nodeview_tmp
            end
          end
          unless params['KibanasView'].nil?
            @KibanasView = []
            params['KibanasView'].each do |i|
              kibanaview_tmp = KibanaView.new
              kibanaview_tmp.deserialize(i)
              @KibanasView << kibanaview_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DiagnoseInstance请求参数结构体
      class DiagnoseInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES实例ID
        # @type InstanceId: String
        # @param DiagnoseJobs: 需要触发的诊断项
        # @type DiagnoseJobs: Array
        # @param DiagnoseIndices: 需要诊断的索引，支持通配符
        # @type DiagnoseIndices: String

        attr_accessor :InstanceId, :DiagnoseJobs, :DiagnoseIndices
        
        def initialize(instanceid=nil, diagnosejobs=nil, diagnoseindices=nil)
          @InstanceId = instanceid
          @DiagnoseJobs = diagnosejobs
          @DiagnoseIndices = diagnoseindices
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DiagnoseJobs = params['DiagnoseJobs']
          @DiagnoseIndices = params['DiagnoseIndices']
        end
      end

      # DiagnoseInstance返回参数结构体
      class DiagnoseInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ik插件词典信息
      class DictInfo < TencentCloud::Common::AbstractModel
        # @param Key: 词典键值
        # @type Key: String
        # @param Name: 词典名称
        # @type Name: String
        # @param Size: 词典大小，单位B
        # @type Size: Integer

        attr_accessor :Key, :Name, :Size
        
        def initialize(key=nil, name=nil, size=nil)
          @Key = key
          @Name = name
          @Size = size
        end

        def deserialize(params)
          @Key = params['Key']
          @Name = params['Name']
          @Size = params['Size']
        end
      end

      # ES集群配置项
      class EsAcl < TencentCloud::Common::AbstractModel
        # @param BlackIpList: kibana访问黑名单
        # @type BlackIpList: Array
        # @param WhiteIpList: kibana访问白名单
        # @type WhiteIpList: Array

        attr_accessor :BlackIpList, :WhiteIpList
        
        def initialize(blackiplist=nil, whiteiplist=nil)
          @BlackIpList = blackiplist
          @WhiteIpList = whiteiplist
        end

        def deserialize(params)
          @BlackIpList = params['BlackIpList']
          @WhiteIpList = params['WhiteIpList']
        end
      end

      # 配置组信息
      class EsConfigSetInfo < TencentCloud::Common::AbstractModel
        # @param Type: 配置组类型，如ldap,ad等
        # @type Type: String
        # @param EsConfig: "{\"order\":0,\"url\":\"ldap://10.0.1.72:389\",\"bind_dn\":\"cn=admin,dc=tencent,dc=com\",\"user_search.base_dn\":\"dc=tencent,dc=com\",\"user_search.filter\":\"(cn={0})\",\"group_search.base_dn\":\"dc=tencent,dc=com\"}"
        # @type EsConfig: String

        attr_accessor :Type, :EsConfig
        
        def initialize(type=nil, esconfig=nil)
          @Type = type
          @EsConfig = esconfig
        end

        def deserialize(params)
          @Type = params['Type']
          @EsConfig = params['EsConfig']
        end
      end

      # ES 词库信息
      class EsDictionaryInfo < TencentCloud::Common::AbstractModel
        # @param MainDict: 启用词词典列表
        # @type MainDict: Array
        # @param Stopwords: 停用词词典列表
        # @type Stopwords: Array
        # @param QQDict: QQ分词词典列表
        # @type QQDict: Array
        # @param Synonym: 同义词词典列表
        # @type Synonym: Array
        # @param UpdateType: 更新词典类型
        # @type UpdateType: String

        attr_accessor :MainDict, :Stopwords, :QQDict, :Synonym, :UpdateType
        
        def initialize(maindict=nil, stopwords=nil, qqdict=nil, synonym=nil, updatetype=nil)
          @MainDict = maindict
          @Stopwords = stopwords
          @QQDict = qqdict
          @Synonym = synonym
          @UpdateType = updatetype
        end

        def deserialize(params)
          unless params['MainDict'].nil?
            @MainDict = []
            params['MainDict'].each do |i|
              dictinfo_tmp = DictInfo.new
              dictinfo_tmp.deserialize(i)
              @MainDict << dictinfo_tmp
            end
          end
          unless params['Stopwords'].nil?
            @Stopwords = []
            params['Stopwords'].each do |i|
              dictinfo_tmp = DictInfo.new
              dictinfo_tmp.deserialize(i)
              @Stopwords << dictinfo_tmp
            end
          end
          unless params['QQDict'].nil?
            @QQDict = []
            params['QQDict'].each do |i|
              dictinfo_tmp = DictInfo.new
              dictinfo_tmp.deserialize(i)
              @QQDict << dictinfo_tmp
            end
          end
          unless params['Synonym'].nil?
            @Synonym = []
            params['Synonym'].each do |i|
              dictinfo_tmp = DictInfo.new
              dictinfo_tmp.deserialize(i)
              @Synonym << dictinfo_tmp
            end
          end
          @UpdateType = params['UpdateType']
        end
      end

      # ES公网访问访问控制信息
      class EsPublicAcl < TencentCloud::Common::AbstractModel
        # @param BlackIpList: 访问黑名单
        # @type BlackIpList: Array
        # @param WhiteIpList: 访问白名单
        # @type WhiteIpList: Array

        attr_accessor :BlackIpList, :WhiteIpList
        
        def initialize(blackiplist=nil, whiteiplist=nil)
          @BlackIpList = blackiplist
          @WhiteIpList = whiteiplist
        end

        def deserialize(params)
          @BlackIpList = params['BlackIpList']
          @WhiteIpList = params['WhiteIpList']
        end
      end

      # GetRequestTargetNodeTypes请求参数结构体
      class GetRequestTargetNodeTypesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # GetRequestTargetNodeTypes返回参数结构体
      class GetRequestTargetNodeTypesResponse < TencentCloud::Common::AbstractModel
        # @param TargetNodeTypes: 接收请求的目标节点类型列表
        # @type TargetNodeTypes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetNodeTypes, :RequestId
        
        def initialize(targetnodetypes=nil, requestid=nil)
          @TargetNodeTypes = targetnodetypes
          @RequestId = requestid
        end

        def deserialize(params)
          @TargetNodeTypes = params['TargetNodeTypes']
          @RequestId = params['RequestId']
        end
      end

      # 索引元数据字段
      class IndexMetaField < TencentCloud::Common::AbstractModel
        # @param IndexType: 索引类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexType: String
        # @param IndexName: 索引名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexName: String
        # @param IndexStatus: 索引状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStatus: String
        # @param IndexStorage: 索引存储大小，单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStorage: Integer
        # @param IndexCreateTime: 索引创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexCreateTime: String
        # @param BackingIndices: 后备索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackingIndices: Array
        # @param ClusterId: 索引所属集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 索引所属集群名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterVersion: 索引所属集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterVersion: String
        # @param IndexPolicyField: 索引生命周期字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexPolicyField: :class:`Tencentcloud::Es.v20180416.models.IndexPolicyField`
        # @param IndexOptionsField: 索引自治字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexOptionsField: :class:`Tencentcloud::Es.v20180416.models.IndexOptionsField`
        # @param IndexSettingsField: 索引配置字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexSettingsField: :class:`Tencentcloud::Es.v20180416.models.IndexSettingsField`
        # @param AppId: 索引所属集群APP ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer

        attr_accessor :IndexType, :IndexName, :IndexStatus, :IndexStorage, :IndexCreateTime, :BackingIndices, :ClusterId, :ClusterName, :ClusterVersion, :IndexPolicyField, :IndexOptionsField, :IndexSettingsField, :AppId
        
        def initialize(indextype=nil, indexname=nil, indexstatus=nil, indexstorage=nil, indexcreatetime=nil, backingindices=nil, clusterid=nil, clustername=nil, clusterversion=nil, indexpolicyfield=nil, indexoptionsfield=nil, indexsettingsfield=nil, appid=nil)
          @IndexType = indextype
          @IndexName = indexname
          @IndexStatus = indexstatus
          @IndexStorage = indexstorage
          @IndexCreateTime = indexcreatetime
          @BackingIndices = backingindices
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterVersion = clusterversion
          @IndexPolicyField = indexpolicyfield
          @IndexOptionsField = indexoptionsfield
          @IndexSettingsField = indexsettingsfield
          @AppId = appid
        end

        def deserialize(params)
          @IndexType = params['IndexType']
          @IndexName = params['IndexName']
          @IndexStatus = params['IndexStatus']
          @IndexStorage = params['IndexStorage']
          @IndexCreateTime = params['IndexCreateTime']
          unless params['BackingIndices'].nil?
            @BackingIndices = []
            params['BackingIndices'].each do |i|
              backingindexmetafield_tmp = BackingIndexMetaField.new
              backingindexmetafield_tmp.deserialize(i)
              @BackingIndices << backingindexmetafield_tmp
            end
          end
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterVersion = params['ClusterVersion']
          unless params['IndexPolicyField'].nil?
            @IndexPolicyField = IndexPolicyField.new
            @IndexPolicyField.deserialize(params['IndexPolicyField'])
          end
          unless params['IndexOptionsField'].nil?
            @IndexOptionsField = IndexOptionsField.new
            @IndexOptionsField.deserialize(params['IndexOptionsField'])
          end
          unless params['IndexSettingsField'].nil?
            @IndexSettingsField = IndexSettingsField.new
            @IndexSettingsField.deserialize(params['IndexSettingsField'])
          end
          @AppId = params['AppId']
        end
      end

      # 索引自治字段
      class IndexOptionsField < TencentCloud::Common::AbstractModel
        # @param ExpireMaxAge: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireMaxAge: String
        # @param ExpireMaxSize: 过期大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireMaxSize: String
        # @param RolloverMaxAge: 滚动周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RolloverMaxAge: String
        # @param RolloverDynamic: 是否开启动态滚动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RolloverDynamic: String
        # @param ShardNumDynamic: 是否开启动态分片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardNumDynamic: String
        # @param TimestampField: 时间分区字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimestampField: String
        # @param WriteMode: 写入模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WriteMode: String

        attr_accessor :ExpireMaxAge, :ExpireMaxSize, :RolloverMaxAge, :RolloverDynamic, :ShardNumDynamic, :TimestampField, :WriteMode
        
        def initialize(expiremaxage=nil, expiremaxsize=nil, rollovermaxage=nil, rolloverdynamic=nil, shardnumdynamic=nil, timestampfield=nil, writemode=nil)
          @ExpireMaxAge = expiremaxage
          @ExpireMaxSize = expiremaxsize
          @RolloverMaxAge = rollovermaxage
          @RolloverDynamic = rolloverdynamic
          @ShardNumDynamic = shardnumdynamic
          @TimestampField = timestampfield
          @WriteMode = writemode
        end

        def deserialize(params)
          @ExpireMaxAge = params['ExpireMaxAge']
          @ExpireMaxSize = params['ExpireMaxSize']
          @RolloverMaxAge = params['RolloverMaxAge']
          @RolloverDynamic = params['RolloverDynamic']
          @ShardNumDynamic = params['ShardNumDynamic']
          @TimestampField = params['TimestampField']
          @WriteMode = params['WriteMode']
        end
      end

      # 索引生命周期字段
      class IndexPolicyField < TencentCloud::Common::AbstractModel
        # @param WarmEnable: 是否开启warm阶段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmEnable: String
        # @param WarmMinAge: warm阶段转入时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmMinAge: String
        # @param ColdEnable: 是否开启cold阶段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdEnable: String
        # @param ColdMinAge: cold阶段转入时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdMinAge: String
        # @param FrozenEnable: 是否开启frozen阶段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenEnable: String
        # @param FrozenMinAge: frozen阶段转入时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenMinAge: String

        attr_accessor :WarmEnable, :WarmMinAge, :ColdEnable, :ColdMinAge, :FrozenEnable, :FrozenMinAge
        
        def initialize(warmenable=nil, warmminage=nil, coldenable=nil, coldminage=nil, frozenenable=nil, frozenminage=nil)
          @WarmEnable = warmenable
          @WarmMinAge = warmminage
          @ColdEnable = coldenable
          @ColdMinAge = coldminage
          @FrozenEnable = frozenenable
          @FrozenMinAge = frozenminage
        end

        def deserialize(params)
          @WarmEnable = params['WarmEnable']
          @WarmMinAge = params['WarmMinAge']
          @ColdEnable = params['ColdEnable']
          @ColdMinAge = params['ColdMinAge']
          @FrozenEnable = params['FrozenEnable']
          @FrozenMinAge = params['FrozenMinAge']
        end
      end

      # 索引配置字段
      class IndexSettingsField < TencentCloud::Common::AbstractModel
        # @param NumberOfShards: 索引主分片数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumberOfShards: String
        # @param NumberOfReplicas: 索引副本分片数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumberOfReplicas: String
        # @param RefreshInterval: 索引刷新频率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefreshInterval: String

        attr_accessor :NumberOfShards, :NumberOfReplicas, :RefreshInterval
        
        def initialize(numberofshards=nil, numberofreplicas=nil, refreshinterval=nil)
          @NumberOfShards = numberofshards
          @NumberOfReplicas = numberofreplicas
          @RefreshInterval = refreshinterval
        end

        def deserialize(params)
          @NumberOfShards = params['NumberOfShards']
          @NumberOfReplicas = params['NumberOfReplicas']
          @RefreshInterval = params['RefreshInterval']
        end
      end

      # 实例详细信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param Uin: 用户UIN
        # @type Uin: String
        # @param VpcUid: 实例所属VPC的UID
        # @type VpcUid: String
        # @param SubnetUid: 实例所属子网的UID
        # @type SubnetUid: String
        # @param Status: 实例状态，0:处理中,1:正常,-1停止,-2:销毁中,-3:已销毁
        # @type Status: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # RENEW_FLAG_AUTO：自动续费
        # RENEW_FLAG_MANUAL：不自动续费
        # 默认取值：
        # RENEW_FLAG_DEFAULT：不自动续费
        # 若该参数指定为 RENEW_FLAG_AUTO，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String
        # @param ChargeType: 实例计费模式。取值范围：  PREPAID：表示预付费，即包年包月  POSTPAID_BY_HOUR：表示后付费，即按量计费  CDHPAID：CDH付费，即只对CDH计费，不对CDH上的实例计费。
        # @type ChargeType: String
        # @param ChargePeriod: 包年包月购买时长,单位:月
        # @type ChargePeriod: Integer
        # @param NodeType: 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param NodeNum: 节点个数
        # @type NodeNum: Integer
        # @param CpuNum: 节点CPU核数
        # @type CpuNum: Integer
        # @param MemSize: 节点内存大小，单位GB
        # @type MemSize: Integer
        # @param DiskType: 节点磁盘类型
        # @type DiskType: String
        # @param DiskSize: 节点磁盘大小，单位GB
        # @type DiskSize: Integer
        # @param EsDomain: ES域名
        # @type EsDomain: String
        # @param EsVip: ES VIP
        # @type EsVip: String
        # @param EsPort: ES端口
        # @type EsPort: Integer
        # @param KibanaUrl: Kibana访问url
        # @type KibanaUrl: String
        # @param EsVersion: ES版本号
        # @type EsVersion: String
        # @param EsConfig: ES配置项
        # @type EsConfig: String
        # @param EsAcl: Kibana访问控制配置
        # @type EsAcl: :class:`Tencentcloud::Es.v20180416.models.EsAcl`
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param UpdateTime: 实例最后修改操作时间
        # @type UpdateTime: String
        # @param Deadline: 实例到期时间
        # @type Deadline: String
        # @param InstanceType: 实例类型（实例类型标识，当前只有1,2两种）
        # @type InstanceType: Integer
        # @param IkConfig: Ik分词器配置
        # @type IkConfig: :class:`Tencentcloud::Es.v20180416.models.EsDictionaryInfo`
        # @param MasterNodeInfo: 专用主节点配置
        # @type MasterNodeInfo: :class:`Tencentcloud::Es.v20180416.models.MasterNodeInfo`
        # @param CosBackup: cos自动备份配置
        # @type CosBackup: :class:`Tencentcloud::Es.v20180416.models.CosBackup`
        # @param AllowCosBackup: 是否允许cos自动备份
        # @type AllowCosBackup: Boolean
        # @param TagList: 实例拥有的标签列表
        # @type TagList: Array
        # @param LicenseType: License类型<li>oss：开源版</li><li>basic：基础版</li><li>platinum：白金版</li>默认值platinum
        # @type LicenseType: String
        # @param EnableHotWarmMode: 是否为冷热集群<li>true: 冷热集群</li><li>false: 非冷热集群</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableHotWarmMode: Boolean
        # @param WarmNodeType: 温节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmNodeType: String
        # @param WarmNodeNum: 温节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmNodeNum: Integer
        # @param WarmCpuNum: 温节点CPU核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmCpuNum: Integer
        # @param WarmMemSize: 温节点内存内存大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmMemSize: Integer
        # @param WarmDiskType: 温节点磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmDiskType: String
        # @param WarmDiskSize: 温节点磁盘大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmDiskSize: Integer
        # @param NodeInfoList: 集群节点信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfoList: Array
        # @param EsPublicUrl: Es公网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsPublicUrl: String
        # @param MultiZoneInfo: 多可用区网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiZoneInfo: Array
        # @param DeployMode: 部署模式<li>0：单可用区</li><li>1：多可用区</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployMode: Integer
        # @param PublicAccess: ES公网访问状态<li>OPEN：开启</li><li>CLOSE：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicAccess: String
        # @param EsPublicAcl: ES公网访问控制配置
        # @type EsPublicAcl: :class:`Tencentcloud::Es.v20180416.models.EsAcl`
        # @param KibanaPrivateUrl: Kibana内网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaPrivateUrl: String
        # @param KibanaPublicAccess: Kibana公网访问状态<li>OPEN：开启</li><li>CLOSE：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaPublicAccess: String
        # @param KibanaPrivateAccess: Kibana内网访问状态<li>OPEN：开启</li><li>CLOSE：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaPrivateAccess: String
        # @param SecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityType: Integer
        # @param SceneType: 场景化模板类型：0、不开启；1、通用场景；2、日志场景；3、搜索场景
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneType: Integer
        # @param KibanaConfig: Kibana配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaConfig: String
        # @param KibanaNodeInfo: Kibana节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaNodeInfo: :class:`Tencentcloud::Es.v20180416.models.KibanaNodeInfo`
        # @param WebNodeTypeInfo: 可视化节点配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebNodeTypeInfo: :class:`Tencentcloud::Es.v20180416.models.WebNodeTypeInfo`
        # @param Jdk: JDK类型，oracle或kona
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Jdk: String
        # @param Protocol: 集群网络通讯协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param SecurityGroups: 安全组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroups: Array
        # @param ColdNodeType: 冷节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdNodeType: String
        # @param ColdNodeNum: 冷节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdNodeNum: Integer
        # @param ColdCpuNum: 冷节点CPU核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdCpuNum: Integer
        # @param ColdMemSize: 冷节点内存大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdMemSize: Integer
        # @param ColdDiskType: 冷节点磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdDiskType: String
        # @param ColdDiskSize: 冷节点磁盘大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColdDiskSize: Integer
        # @param FrozenNodeType: 冻节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenNodeType: String
        # @param FrozenNodeNum: 冻节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenNodeNum: Integer
        # @param FrozenCpuNum: 冻节点CPU核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenCpuNum: Integer
        # @param FrozenMemSize: 冻节点内存大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenMemSize: Integer
        # @param FrozenDiskType: 冻节点磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenDiskType: String
        # @param FrozenDiskSize: 冻节点磁盘大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrozenDiskSize: Integer
        # @param HealthStatus: 集群健康状态 -1 未知；0 Green; 1 Yellow; 2 Red
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthStatus: Integer
        # @param EsPrivateUrl: https集群内网url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsPrivateUrl: String
        # @param EsPrivateDomain: https集群内网域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsPrivateDomain: String
        # @param EsConfigSets: 集群的配置组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsConfigSets: Array
        # @param OperationDuration: 集群可维护时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationDuration: :class:`Tencentcloud::Es.v20180416.models.OperationDuration`
        # @param OptionalWebServiceInfos: web节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptionalWebServiceInfos: Array
        # @param AutoIndexEnabled: 自治索引开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoIndexEnabled: Boolean
        # @param EnableHybridStorage: 是否支持存储计算分离
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableHybridStorage: Boolean

        attr_accessor :InstanceId, :InstanceName, :Region, :Zone, :AppId, :Uin, :VpcUid, :SubnetUid, :Status, :RenewFlag, :ChargeType, :ChargePeriod, :NodeType, :NodeNum, :CpuNum, :MemSize, :DiskType, :DiskSize, :EsDomain, :EsVip, :EsPort, :KibanaUrl, :EsVersion, :EsConfig, :EsAcl, :CreateTime, :UpdateTime, :Deadline, :InstanceType, :IkConfig, :MasterNodeInfo, :CosBackup, :AllowCosBackup, :TagList, :LicenseType, :EnableHotWarmMode, :WarmNodeType, :WarmNodeNum, :WarmCpuNum, :WarmMemSize, :WarmDiskType, :WarmDiskSize, :NodeInfoList, :EsPublicUrl, :MultiZoneInfo, :DeployMode, :PublicAccess, :EsPublicAcl, :KibanaPrivateUrl, :KibanaPublicAccess, :KibanaPrivateAccess, :SecurityType, :SceneType, :KibanaConfig, :KibanaNodeInfo, :WebNodeTypeInfo, :Jdk, :Protocol, :SecurityGroups, :ColdNodeType, :ColdNodeNum, :ColdCpuNum, :ColdMemSize, :ColdDiskType, :ColdDiskSize, :FrozenNodeType, :FrozenNodeNum, :FrozenCpuNum, :FrozenMemSize, :FrozenDiskType, :FrozenDiskSize, :HealthStatus, :EsPrivateUrl, :EsPrivateDomain, :EsConfigSets, :OperationDuration, :OptionalWebServiceInfos, :AutoIndexEnabled, :EnableHybridStorage
        
        def initialize(instanceid=nil, instancename=nil, region=nil, zone=nil, appid=nil, uin=nil, vpcuid=nil, subnetuid=nil, status=nil, renewflag=nil, chargetype=nil, chargeperiod=nil, nodetype=nil, nodenum=nil, cpunum=nil, memsize=nil, disktype=nil, disksize=nil, esdomain=nil, esvip=nil, esport=nil, kibanaurl=nil, esversion=nil, esconfig=nil, esacl=nil, createtime=nil, updatetime=nil, deadline=nil, instancetype=nil, ikconfig=nil, masternodeinfo=nil, cosbackup=nil, allowcosbackup=nil, taglist=nil, licensetype=nil, enablehotwarmmode=nil, warmnodetype=nil, warmnodenum=nil, warmcpunum=nil, warmmemsize=nil, warmdisktype=nil, warmdisksize=nil, nodeinfolist=nil, espublicurl=nil, multizoneinfo=nil, deploymode=nil, publicaccess=nil, espublicacl=nil, kibanaprivateurl=nil, kibanapublicaccess=nil, kibanaprivateaccess=nil, securitytype=nil, scenetype=nil, kibanaconfig=nil, kibananodeinfo=nil, webnodetypeinfo=nil, jdk=nil, protocol=nil, securitygroups=nil, coldnodetype=nil, coldnodenum=nil, coldcpunum=nil, coldmemsize=nil, colddisktype=nil, colddisksize=nil, frozennodetype=nil, frozennodenum=nil, frozencpunum=nil, frozenmemsize=nil, frozendisktype=nil, frozendisksize=nil, healthstatus=nil, esprivateurl=nil, esprivatedomain=nil, esconfigsets=nil, operationduration=nil, optionalwebserviceinfos=nil, autoindexenabled=nil, enablehybridstorage=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @Zone = zone
          @AppId = appid
          @Uin = uin
          @VpcUid = vpcuid
          @SubnetUid = subnetuid
          @Status = status
          @RenewFlag = renewflag
          @ChargeType = chargetype
          @ChargePeriod = chargeperiod
          @NodeType = nodetype
          @NodeNum = nodenum
          @CpuNum = cpunum
          @MemSize = memsize
          @DiskType = disktype
          @DiskSize = disksize
          @EsDomain = esdomain
          @EsVip = esvip
          @EsPort = esport
          @KibanaUrl = kibanaurl
          @EsVersion = esversion
          @EsConfig = esconfig
          @EsAcl = esacl
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Deadline = deadline
          @InstanceType = instancetype
          @IkConfig = ikconfig
          @MasterNodeInfo = masternodeinfo
          @CosBackup = cosbackup
          @AllowCosBackup = allowcosbackup
          @TagList = taglist
          @LicenseType = licensetype
          @EnableHotWarmMode = enablehotwarmmode
          @WarmNodeType = warmnodetype
          @WarmNodeNum = warmnodenum
          @WarmCpuNum = warmcpunum
          @WarmMemSize = warmmemsize
          @WarmDiskType = warmdisktype
          @WarmDiskSize = warmdisksize
          @NodeInfoList = nodeinfolist
          @EsPublicUrl = espublicurl
          @MultiZoneInfo = multizoneinfo
          @DeployMode = deploymode
          @PublicAccess = publicaccess
          @EsPublicAcl = espublicacl
          @KibanaPrivateUrl = kibanaprivateurl
          @KibanaPublicAccess = kibanapublicaccess
          @KibanaPrivateAccess = kibanaprivateaccess
          @SecurityType = securitytype
          @SceneType = scenetype
          @KibanaConfig = kibanaconfig
          @KibanaNodeInfo = kibananodeinfo
          @WebNodeTypeInfo = webnodetypeinfo
          @Jdk = jdk
          @Protocol = protocol
          @SecurityGroups = securitygroups
          @ColdNodeType = coldnodetype
          @ColdNodeNum = coldnodenum
          @ColdCpuNum = coldcpunum
          @ColdMemSize = coldmemsize
          @ColdDiskType = colddisktype
          @ColdDiskSize = colddisksize
          @FrozenNodeType = frozennodetype
          @FrozenNodeNum = frozennodenum
          @FrozenCpuNum = frozencpunum
          @FrozenMemSize = frozenmemsize
          @FrozenDiskType = frozendisktype
          @FrozenDiskSize = frozendisksize
          @HealthStatus = healthstatus
          @EsPrivateUrl = esprivateurl
          @EsPrivateDomain = esprivatedomain
          @EsConfigSets = esconfigsets
          @OperationDuration = operationduration
          @OptionalWebServiceInfos = optionalwebserviceinfos
          @AutoIndexEnabled = autoindexenabled
          @EnableHybridStorage = enablehybridstorage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @Zone = params['Zone']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @VpcUid = params['VpcUid']
          @SubnetUid = params['SubnetUid']
          @Status = params['Status']
          @RenewFlag = params['RenewFlag']
          @ChargeType = params['ChargeType']
          @ChargePeriod = params['ChargePeriod']
          @NodeType = params['NodeType']
          @NodeNum = params['NodeNum']
          @CpuNum = params['CpuNum']
          @MemSize = params['MemSize']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @EsDomain = params['EsDomain']
          @EsVip = params['EsVip']
          @EsPort = params['EsPort']
          @KibanaUrl = params['KibanaUrl']
          @EsVersion = params['EsVersion']
          @EsConfig = params['EsConfig']
          unless params['EsAcl'].nil?
            @EsAcl = EsAcl.new
            @EsAcl.deserialize(params['EsAcl'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Deadline = params['Deadline']
          @InstanceType = params['InstanceType']
          unless params['IkConfig'].nil?
            @IkConfig = EsDictionaryInfo.new
            @IkConfig.deserialize(params['IkConfig'])
          end
          unless params['MasterNodeInfo'].nil?
            @MasterNodeInfo = MasterNodeInfo.new
            @MasterNodeInfo.deserialize(params['MasterNodeInfo'])
          end
          unless params['CosBackup'].nil?
            @CosBackup = CosBackup.new
            @CosBackup.deserialize(params['CosBackup'])
          end
          @AllowCosBackup = params['AllowCosBackup']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagList << taginfo_tmp
            end
          end
          @LicenseType = params['LicenseType']
          @EnableHotWarmMode = params['EnableHotWarmMode']
          @WarmNodeType = params['WarmNodeType']
          @WarmNodeNum = params['WarmNodeNum']
          @WarmCpuNum = params['WarmCpuNum']
          @WarmMemSize = params['WarmMemSize']
          @WarmDiskType = params['WarmDiskType']
          @WarmDiskSize = params['WarmDiskSize']
          unless params['NodeInfoList'].nil?
            @NodeInfoList = []
            params['NodeInfoList'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @NodeInfoList << nodeinfo_tmp
            end
          end
          @EsPublicUrl = params['EsPublicUrl']
          unless params['MultiZoneInfo'].nil?
            @MultiZoneInfo = []
            params['MultiZoneInfo'].each do |i|
              zonedetail_tmp = ZoneDetail.new
              zonedetail_tmp.deserialize(i)
              @MultiZoneInfo << zonedetail_tmp
            end
          end
          @DeployMode = params['DeployMode']
          @PublicAccess = params['PublicAccess']
          unless params['EsPublicAcl'].nil?
            @EsPublicAcl = EsAcl.new
            @EsPublicAcl.deserialize(params['EsPublicAcl'])
          end
          @KibanaPrivateUrl = params['KibanaPrivateUrl']
          @KibanaPublicAccess = params['KibanaPublicAccess']
          @KibanaPrivateAccess = params['KibanaPrivateAccess']
          @SecurityType = params['SecurityType']
          @SceneType = params['SceneType']
          @KibanaConfig = params['KibanaConfig']
          unless params['KibanaNodeInfo'].nil?
            @KibanaNodeInfo = KibanaNodeInfo.new
            @KibanaNodeInfo.deserialize(params['KibanaNodeInfo'])
          end
          unless params['WebNodeTypeInfo'].nil?
            @WebNodeTypeInfo = WebNodeTypeInfo.new
            @WebNodeTypeInfo.deserialize(params['WebNodeTypeInfo'])
          end
          @Jdk = params['Jdk']
          @Protocol = params['Protocol']
          @SecurityGroups = params['SecurityGroups']
          @ColdNodeType = params['ColdNodeType']
          @ColdNodeNum = params['ColdNodeNum']
          @ColdCpuNum = params['ColdCpuNum']
          @ColdMemSize = params['ColdMemSize']
          @ColdDiskType = params['ColdDiskType']
          @ColdDiskSize = params['ColdDiskSize']
          @FrozenNodeType = params['FrozenNodeType']
          @FrozenNodeNum = params['FrozenNodeNum']
          @FrozenCpuNum = params['FrozenCpuNum']
          @FrozenMemSize = params['FrozenMemSize']
          @FrozenDiskType = params['FrozenDiskType']
          @FrozenDiskSize = params['FrozenDiskSize']
          @HealthStatus = params['HealthStatus']
          @EsPrivateUrl = params['EsPrivateUrl']
          @EsPrivateDomain = params['EsPrivateDomain']
          unless params['EsConfigSets'].nil?
            @EsConfigSets = []
            params['EsConfigSets'].each do |i|
              esconfigsetinfo_tmp = EsConfigSetInfo.new
              esconfigsetinfo_tmp.deserialize(i)
              @EsConfigSets << esconfigsetinfo_tmp
            end
          end
          unless params['OperationDuration'].nil?
            @OperationDuration = OperationDuration.new
            @OperationDuration.deserialize(params['OperationDuration'])
          end
          unless params['OptionalWebServiceInfos'].nil?
            @OptionalWebServiceInfos = []
            params['OptionalWebServiceInfos'].each do |i|
              optionalwebserviceinfo_tmp = OptionalWebServiceInfo.new
              optionalwebserviceinfo_tmp.deserialize(i)
              @OptionalWebServiceInfos << optionalwebserviceinfo_tmp
            end
          end
          @AutoIndexEnabled = params['AutoIndexEnabled']
          @EnableHybridStorage = params['EnableHybridStorage']
        end
      end

      # ES集群日志详细信息
      class InstanceLog < TencentCloud::Common::AbstractModel
        # @param Time: 日志时间
        # @type Time: String
        # @param Level: 日志级别
        # @type Level: String
        # @param Ip: 集群节点ip
        # @type Ip: String
        # @param Message: 日志内容
        # @type Message: String

        attr_accessor :Time, :Level, :Ip, :Message
        
        def initialize(time=nil, level=nil, ip=nil, message=nil)
          @Time = time
          @Level = level
          @Ip = ip
          @Message = message
        end

        def deserialize(params)
          @Time = params['Time']
          @Level = params['Level']
          @Ip = params['Ip']
          @Message = params['Message']
        end
      end

      # OperationDetail使用此结构的数组描述新旧配置
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 键
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

      # 实例Kibana节点相关信息
      class KibanaNodeInfo < TencentCloud::Common::AbstractModel
        # @param KibanaNodeType: Kibana节点规格
        # @type KibanaNodeType: String
        # @param KibanaNodeNum: Kibana节点个数
        # @type KibanaNodeNum: Integer
        # @param KibanaNodeCpuNum: Kibana节点CPU数
        # @type KibanaNodeCpuNum: Integer
        # @param KibanaNodeMemSize: Kibana节点内存GB
        # @type KibanaNodeMemSize: Integer
        # @param KibanaNodeDiskType: Kibana节点磁盘类型
        # @type KibanaNodeDiskType: String
        # @param KibanaNodeDiskSize: Kibana节点磁盘大小
        # @type KibanaNodeDiskSize: Integer

        attr_accessor :KibanaNodeType, :KibanaNodeNum, :KibanaNodeCpuNum, :KibanaNodeMemSize, :KibanaNodeDiskType, :KibanaNodeDiskSize
        
        def initialize(kibananodetype=nil, kibananodenum=nil, kibananodecpunum=nil, kibananodememsize=nil, kibananodedisktype=nil, kibananodedisksize=nil)
          @KibanaNodeType = kibananodetype
          @KibanaNodeNum = kibananodenum
          @KibanaNodeCpuNum = kibananodecpunum
          @KibanaNodeMemSize = kibananodememsize
          @KibanaNodeDiskType = kibananodedisktype
          @KibanaNodeDiskSize = kibananodedisksize
        end

        def deserialize(params)
          @KibanaNodeType = params['KibanaNodeType']
          @KibanaNodeNum = params['KibanaNodeNum']
          @KibanaNodeCpuNum = params['KibanaNodeCpuNum']
          @KibanaNodeMemSize = params['KibanaNodeMemSize']
          @KibanaNodeDiskType = params['KibanaNodeDiskType']
          @KibanaNodeDiskSize = params['KibanaNodeDiskSize']
        end
      end

      # Kibana视图数据
      class KibanaView < TencentCloud::Common::AbstractModel
        # @param Ip: Kibana节点IP
        # @type Ip: String
        # @param DiskSize: 节点总磁盘大小
        # @type DiskSize: Integer
        # @param DiskUsage: 磁盘使用率
        # @type DiskUsage: Float
        # @param MemSize: 节点内存大小
        # @type MemSize: Integer
        # @param MemUsage: 内存使用率
        # @type MemUsage: Float
        # @param CpuNum: 节点cpu个数
        # @type CpuNum: Integer
        # @param CpuUsage: cpu使用率
        # @type CpuUsage: Float
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :Ip, :DiskSize, :DiskUsage, :MemSize, :MemUsage, :CpuNum, :CpuUsage, :Zone
        
        def initialize(ip=nil, disksize=nil, diskusage=nil, memsize=nil, memusage=nil, cpunum=nil, cpuusage=nil, zone=nil)
          @Ip = ip
          @DiskSize = disksize
          @DiskUsage = diskusage
          @MemSize = memsize
          @MemUsage = memusage
          @CpuNum = cpunum
          @CpuUsage = cpuusage
          @Zone = zone
        end

        def deserialize(params)
          @Ip = params['Ip']
          @DiskSize = params['DiskSize']
          @DiskUsage = params['DiskUsage']
          @MemSize = params['MemSize']
          @MemUsage = params['MemUsage']
          @CpuNum = params['CpuNum']
          @CpuUsage = params['CpuUsage']
          @Zone = params['Zone']
        end
      end

      # 节点本地盘信息
      class LocalDiskInfo < TencentCloud::Common::AbstractModel
        # @param LocalDiskType: 本地盘类型<li>LOCAL_SATA：大数据型</li><li>NVME_SSD：高IO型</li>
        # @type LocalDiskType: String
        # @param LocalDiskSize: 本地盘单盘大小
        # @type LocalDiskSize: Integer
        # @param LocalDiskCount: 本地盘块数
        # @type LocalDiskCount: Integer

        attr_accessor :LocalDiskType, :LocalDiskSize, :LocalDiskCount
        
        def initialize(localdisktype=nil, localdisksize=nil, localdiskcount=nil)
          @LocalDiskType = localdisktype
          @LocalDiskSize = localdisksize
          @LocalDiskCount = localdiskcount
        end

        def deserialize(params)
          @LocalDiskType = params['LocalDiskType']
          @LocalDiskSize = params['LocalDiskSize']
          @LocalDiskCount = params['LocalDiskCount']
        end
      end

      # Logstash绑定的ES集群信息
      class LogstashBindedES < TencentCloud::Common::AbstractModel
        # @param ESInstanceId: ES集群ID
        # @type ESInstanceId: String
        # @param ESUserName: ES集群用户名
        # @type ESUserName: String
        # @param ESPassword: ES集群密码
        # @type ESPassword: String

        attr_accessor :ESInstanceId, :ESUserName, :ESPassword
        
        def initialize(esinstanceid=nil, esusername=nil, espassword=nil)
          @ESInstanceId = esinstanceid
          @ESUserName = esusername
          @ESPassword = espassword
        end

        def deserialize(params)
          @ESInstanceId = params['ESInstanceId']
          @ESUserName = params['ESUserName']
          @ESPassword = params['ESPassword']
        end
      end

      # Logstash扩展文件信息
      class LogstashExtendedFile < TencentCloud::Common::AbstractModel
        # @param Name: 扩展文件名称
        # @type Name: String
        # @param Size: 扩展文件大小，单位B
        # @type Size: Integer

        attr_accessor :Name, :Size
        
        def initialize(name=nil, size=nil)
          @Name = name
          @Size = size
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
        end
      end

      # Logstash实例详细信息
      class LogstashInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param Uin: 用户UIN
        # @type Uin: String
        # @param VpcId: 实例所属VPC的ID
        # @type VpcId: String
        # @param SubnetId: 实例所属子网的ID
        # @type SubnetId: String
        # @param Status: 实例状态，0:处理中,1:正常,-1停止,-2:销毁中,-3:已销毁
        # @type Status: Integer
        # @param ChargeType: 实例计费模式。取值范围：  PREPAID：表示预付费，即包年包月  POSTPAID_BY_HOUR：表示后付费，即按量计费  CDHPAID：CDH付费，即只对CDH计费，不对CDH上的实例计费。
        # @type ChargeType: String
        # @param ChargePeriod: 包年包月购买时长,单位:月
        # @type ChargePeriod: Integer
        # @param RenewFlag: 自动续费标识。取值范围：  NOTIFY_AND_AUTO_RENEW：通知过期且自动续费  NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费  DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费  默认取值：NOTIFY_AND_AUTO_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String
        # @param NodeType: 节点规格<li>LOGSTASH.S1.SMALL2：1核2G</li><li>LOGSTASH.S1.MEDIUM4：2核4G</li><li>LOGSTASH.S1.MEDIUM8：2核8G</li><li>LOGSTASH.S1.LARGE16：4核16G</li><li>LOGSTASH.S1.2XLARGE32：8核32G</li><li>LOGSTASH.S1.4XLARGE32：16核32G</li><li>LOGSTASH.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param NodeNum: 节点个数
        # @type NodeNum: Integer
        # @param DiskType: 节点磁盘类型
        # @type DiskType: String
        # @param DiskSize: 节点磁盘大小，单位GB
        # @type DiskSize: Integer
        # @param LogstashVersion: Logstash版本号
        # @type LogstashVersion: String
        # @param LicenseType: License类型<li>oss：开源版</li><li>xpack：基础版</li>默认值xpack
        # @type LicenseType: String
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param UpdateTime: 实例最后修改操作时间
        # @type UpdateTime: String
        # @param Deadline: 实例到期时间
        # @type Deadline: String
        # @param Nodes: 实例节点类型
        # @type Nodes: Array
        # @param BindedESInstanceId: 实例绑定的ES集群ID
        # @type BindedESInstanceId: String
        # @param YMLConfig: 实例的YML配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type YMLConfig: String
        # @param ExtendedFiles: 扩展文件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendedFiles: Array
        # @param OperationDuration: 可维护时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationDuration: :class:`Tencentcloud::Es.v20180416.models.OperationDuration`

        attr_accessor :InstanceId, :InstanceName, :Region, :Zone, :AppId, :Uin, :VpcId, :SubnetId, :Status, :ChargeType, :ChargePeriod, :RenewFlag, :NodeType, :NodeNum, :DiskType, :DiskSize, :LogstashVersion, :LicenseType, :CreateTime, :UpdateTime, :Deadline, :Nodes, :BindedESInstanceId, :YMLConfig, :ExtendedFiles, :OperationDuration
        
        def initialize(instanceid=nil, instancename=nil, region=nil, zone=nil, appid=nil, uin=nil, vpcid=nil, subnetid=nil, status=nil, chargetype=nil, chargeperiod=nil, renewflag=nil, nodetype=nil, nodenum=nil, disktype=nil, disksize=nil, logstashversion=nil, licensetype=nil, createtime=nil, updatetime=nil, deadline=nil, nodes=nil, bindedesinstanceid=nil, ymlconfig=nil, extendedfiles=nil, operationduration=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @Zone = zone
          @AppId = appid
          @Uin = uin
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @ChargeType = chargetype
          @ChargePeriod = chargeperiod
          @RenewFlag = renewflag
          @NodeType = nodetype
          @NodeNum = nodenum
          @DiskType = disktype
          @DiskSize = disksize
          @LogstashVersion = logstashversion
          @LicenseType = licensetype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Deadline = deadline
          @Nodes = nodes
          @BindedESInstanceId = bindedesinstanceid
          @YMLConfig = ymlconfig
          @ExtendedFiles = extendedfiles
          @OperationDuration = operationduration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @Zone = params['Zone']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @ChargeType = params['ChargeType']
          @ChargePeriod = params['ChargePeriod']
          @RenewFlag = params['RenewFlag']
          @NodeType = params['NodeType']
          @NodeNum = params['NodeNum']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @LogstashVersion = params['LogstashVersion']
          @LicenseType = params['LicenseType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Deadline = params['Deadline']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              logstashnodeinfo_tmp = LogstashNodeInfo.new
              logstashnodeinfo_tmp.deserialize(i)
              @Nodes << logstashnodeinfo_tmp
            end
          end
          @BindedESInstanceId = params['BindedESInstanceId']
          @YMLConfig = params['YMLConfig']
          unless params['ExtendedFiles'].nil?
            @ExtendedFiles = []
            params['ExtendedFiles'].each do |i|
              logstashextendedfile_tmp = LogstashExtendedFile.new
              logstashextendedfile_tmp.deserialize(i)
              @ExtendedFiles << logstashextendedfile_tmp
            end
          end
          unless params['OperationDuration'].nil?
            @OperationDuration = OperationDuration.new
            @OperationDuration.deserialize(params['OperationDuration'])
          end
        end
      end

      # Logstash节点信息
      class LogstashNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID
        # @type NodeId: String
        # @param Ip: 节点IP
        # @type Ip: String
        # @param Port: 节点端口
        # @type Port: Integer

        attr_accessor :NodeId, :Ip, :Port
        
        def initialize(nodeid=nil, ip=nil, port=nil)
          @NodeId = nodeid
          @Ip = ip
          @Port = port
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Ip = params['Ip']
          @Port = params['Port']
        end
      end

      # Logstash管道信息
      class LogstashPipeline < TencentCloud::Common::AbstractModel
        # @param PipelineId: 管道ID
        # @type PipelineId: String
        # @param PipelineDesc: 管道描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PipelineDesc: String
        # @param Config: 管道配置内容
        # @type Config: String
        # @param Workers: 管道的Worker数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Workers: Integer
        # @param BatchSize: 管道批处理大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchSize: Integer
        # @param BatchDelay: 管道批处理延迟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchDelay: Integer
        # @param QueueType: 管道缓冲队列类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueType: String
        # @param QueueMaxBytes: 管道缓冲队列大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueMaxBytes: String
        # @param QueueCheckPointWrites: 管道缓冲队列检查点写入数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueCheckPointWrites: Integer

        attr_accessor :PipelineId, :PipelineDesc, :Config, :Workers, :BatchSize, :BatchDelay, :QueueType, :QueueMaxBytes, :QueueCheckPointWrites
        
        def initialize(pipelineid=nil, pipelinedesc=nil, config=nil, workers=nil, batchsize=nil, batchdelay=nil, queuetype=nil, queuemaxbytes=nil, queuecheckpointwrites=nil)
          @PipelineId = pipelineid
          @PipelineDesc = pipelinedesc
          @Config = config
          @Workers = workers
          @BatchSize = batchsize
          @BatchDelay = batchdelay
          @QueueType = queuetype
          @QueueMaxBytes = queuemaxbytes
          @QueueCheckPointWrites = queuecheckpointwrites
        end

        def deserialize(params)
          @PipelineId = params['PipelineId']
          @PipelineDesc = params['PipelineDesc']
          @Config = params['Config']
          @Workers = params['Workers']
          @BatchSize = params['BatchSize']
          @BatchDelay = params['BatchDelay']
          @QueueType = params['QueueType']
          @QueueMaxBytes = params['QueueMaxBytes']
          @QueueCheckPointWrites = params['QueueCheckPointWrites']
        end
      end

      # Logstash管道信息
      class LogstashPipelineInfo < TencentCloud::Common::AbstractModel
        # @param PipelineId: 管道ID
        # @type PipelineId: String
        # @param PipelineDesc: 管道描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PipelineDesc: String
        # @param Config: 管道配置内容
        # @type Config: String
        # @param Status: 管道状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Workers: 管道的Worker数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Workers: Integer
        # @param BatchSize: 管道批处理大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchSize: Integer
        # @param BatchDelay: 管道批处理延迟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchDelay: Integer
        # @param QueueType: 管道缓冲队列类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueType: String
        # @param QueueMaxBytes: 管道缓冲队列大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueMaxBytes: String
        # @param QueueCheckPointWrites: 管道缓冲队列检查点写入数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueCheckPointWrites: Integer

        attr_accessor :PipelineId, :PipelineDesc, :Config, :Status, :Workers, :BatchSize, :BatchDelay, :QueueType, :QueueMaxBytes, :QueueCheckPointWrites
        
        def initialize(pipelineid=nil, pipelinedesc=nil, config=nil, status=nil, workers=nil, batchsize=nil, batchdelay=nil, queuetype=nil, queuemaxbytes=nil, queuecheckpointwrites=nil)
          @PipelineId = pipelineid
          @PipelineDesc = pipelinedesc
          @Config = config
          @Status = status
          @Workers = workers
          @BatchSize = batchsize
          @BatchDelay = batchdelay
          @QueueType = queuetype
          @QueueMaxBytes = queuemaxbytes
          @QueueCheckPointWrites = queuecheckpointwrites
        end

        def deserialize(params)
          @PipelineId = params['PipelineId']
          @PipelineDesc = params['PipelineDesc']
          @Config = params['Config']
          @Status = params['Status']
          @Workers = params['Workers']
          @BatchSize = params['BatchSize']
          @BatchDelay = params['BatchDelay']
          @QueueType = params['QueueType']
          @QueueMaxBytes = params['QueueMaxBytes']
          @QueueCheckPointWrites = params['QueueCheckPointWrites']
        end
      end

      # 实例专用主节点相关信息
      class MasterNodeInfo < TencentCloud::Common::AbstractModel
        # @param EnableDedicatedMaster: 是否启用了专用主节点
        # @type EnableDedicatedMaster: Boolean
        # @param MasterNodeType: 专用主节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type MasterNodeType: String
        # @param MasterNodeNum: 专用主节点个数
        # @type MasterNodeNum: Integer
        # @param MasterNodeCpuNum: 专用主节点CPU核数
        # @type MasterNodeCpuNum: Integer
        # @param MasterNodeMemSize: 专用主节点内存大小，单位GB
        # @type MasterNodeMemSize: Integer
        # @param MasterNodeDiskSize: 专用主节点磁盘大小，单位GB
        # @type MasterNodeDiskSize: Integer
        # @param MasterNodeDiskType: 专用主节点磁盘类型
        # @type MasterNodeDiskType: String

        attr_accessor :EnableDedicatedMaster, :MasterNodeType, :MasterNodeNum, :MasterNodeCpuNum, :MasterNodeMemSize, :MasterNodeDiskSize, :MasterNodeDiskType
        
        def initialize(enablededicatedmaster=nil, masternodetype=nil, masternodenum=nil, masternodecpunum=nil, masternodememsize=nil, masternodedisksize=nil, masternodedisktype=nil)
          @EnableDedicatedMaster = enablededicatedmaster
          @MasterNodeType = masternodetype
          @MasterNodeNum = masternodenum
          @MasterNodeCpuNum = masternodecpunum
          @MasterNodeMemSize = masternodememsize
          @MasterNodeDiskSize = masternodedisksize
          @MasterNodeDiskType = masternodedisktype
        end

        def deserialize(params)
          @EnableDedicatedMaster = params['EnableDedicatedMaster']
          @MasterNodeType = params['MasterNodeType']
          @MasterNodeNum = params['MasterNodeNum']
          @MasterNodeCpuNum = params['MasterNodeCpuNum']
          @MasterNodeMemSize = params['MasterNodeMemSize']
          @MasterNodeDiskSize = params['MasterNodeDiskSize']
          @MasterNodeDiskType = params['MasterNodeDiskType']
        end
      end

      # 集群中一种节点类型（如热数据节点，冷数据节点，专用主节点等）的规格描述信息，包括节点类型，节点个数，节点规格，磁盘类型，磁盘大小等, Type不指定时默认为热数据节点；如果节点为master节点，则DiskType和DiskSize参数会被忽略（主节点无数据盘）
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeNum: 节点数量
        # @type NodeNum: Integer
        # @param NodeType: 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param Type: 节点类型<li>hotData: 热数据节点</li>
        # <li>warmData: 冷数据节点</li>
        # <li>dedicatedMaster: 专用主节点</li>
        # 默认值为hotData
        # @type Type: String
        # @param DiskType: 节点磁盘类型<li>CLOUD_SSD：SSD云硬盘</li><li>CLOUD_PREMIUM：高硬能云硬盘</li>默认值CLOUD_SSD
        # @type DiskType: String
        # @param DiskSize: 节点磁盘容量（单位GB）
        # @type DiskSize: Integer
        # @param LocalDiskInfo: 节点本地盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDiskInfo: :class:`Tencentcloud::Es.v20180416.models.LocalDiskInfo`
        # @param DiskCount: 节点磁盘块数
        # @type DiskCount: Integer
        # @param DiskEncrypt: 节点磁盘是否加密 0: 不加密，1: 加密；默认不加密
        # @type DiskEncrypt: Integer
        # @param CpuNum: cpu数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuNum: Integer
        # @param MemSize: 内存大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer

        attr_accessor :NodeNum, :NodeType, :Type, :DiskType, :DiskSize, :LocalDiskInfo, :DiskCount, :DiskEncrypt, :CpuNum, :MemSize
        
        def initialize(nodenum=nil, nodetype=nil, type=nil, disktype=nil, disksize=nil, localdiskinfo=nil, diskcount=nil, diskencrypt=nil, cpunum=nil, memsize=nil)
          @NodeNum = nodenum
          @NodeType = nodetype
          @Type = type
          @DiskType = disktype
          @DiskSize = disksize
          @LocalDiskInfo = localdiskinfo
          @DiskCount = diskcount
          @DiskEncrypt = diskencrypt
          @CpuNum = cpunum
          @MemSize = memsize
        end

        def deserialize(params)
          @NodeNum = params['NodeNum']
          @NodeType = params['NodeType']
          @Type = params['Type']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          unless params['LocalDiskInfo'].nil?
            @LocalDiskInfo = LocalDiskInfo.new
            @LocalDiskInfo.deserialize(params['LocalDiskInfo'])
          end
          @DiskCount = params['DiskCount']
          @DiskEncrypt = params['DiskEncrypt']
          @CpuNum = params['CpuNum']
          @MemSize = params['MemSize']
        end
      end

      # 节点维度视图数据
      class NodeView < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID
        # @type NodeId: String
        # @param NodeIp: 节点IP
        # @type NodeIp: String
        # @param Visible: 节点是否可见
        # @type Visible: Float
        # @param Break: 是否熔断
        # @type Break: Float
        # @param DiskSize: 节点总磁盘大小
        # @type DiskSize: Integer
        # @param DiskUsage: 磁盘使用率
        # @type DiskUsage: Float
        # @param MemSize: 节点内存大小，单位GB
        # @type MemSize: Integer
        # @param MemUsage: 内存使用率
        # @type MemUsage: Float
        # @param CpuNum: 节点cpu个数
        # @type CpuNum: Integer
        # @param CpuUsage: cpu使用率
        # @type CpuUsage: Float
        # @param Zone: 可用区
        # @type Zone: String
        # @param NodeRole: 节点角色
        # @type NodeRole: String
        # @param NodeHttpIp: 节点HTTP IP
        # @type NodeHttpIp: String
        # @param JvmMemUsage: JVM内存使用率
        # @type JvmMemUsage: Float
        # @param ShardNum: 节点分片数
        # @type ShardNum: Integer
        # @param DiskIds: 节点上磁盘ID列表
        # @type DiskIds: Array
        # @param Hidden: 是否为隐藏可用区
        # @type Hidden: Boolean

        attr_accessor :NodeId, :NodeIp, :Visible, :Break, :DiskSize, :DiskUsage, :MemSize, :MemUsage, :CpuNum, :CpuUsage, :Zone, :NodeRole, :NodeHttpIp, :JvmMemUsage, :ShardNum, :DiskIds, :Hidden
        
        def initialize(nodeid=nil, nodeip=nil, visible=nil, _break=nil, disksize=nil, diskusage=nil, memsize=nil, memusage=nil, cpunum=nil, cpuusage=nil, zone=nil, noderole=nil, nodehttpip=nil, jvmmemusage=nil, shardnum=nil, diskids=nil, hidden=nil)
          @NodeId = nodeid
          @NodeIp = nodeip
          @Visible = visible
          @Break = _break
          @DiskSize = disksize
          @DiskUsage = diskusage
          @MemSize = memsize
          @MemUsage = memusage
          @CpuNum = cpunum
          @CpuUsage = cpuusage
          @Zone = zone
          @NodeRole = noderole
          @NodeHttpIp = nodehttpip
          @JvmMemUsage = jvmmemusage
          @ShardNum = shardnum
          @DiskIds = diskids
          @Hidden = hidden
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeIp = params['NodeIp']
          @Visible = params['Visible']
          @Break = params['Break']
          @DiskSize = params['DiskSize']
          @DiskUsage = params['DiskUsage']
          @MemSize = params['MemSize']
          @MemUsage = params['MemUsage']
          @CpuNum = params['CpuNum']
          @CpuUsage = params['CpuUsage']
          @Zone = params['Zone']
          @NodeRole = params['NodeRole']
          @NodeHttpIp = params['NodeHttpIp']
          @JvmMemUsage = params['JvmMemUsage']
          @ShardNum = params['ShardNum']
          @DiskIds = params['DiskIds']
          @Hidden = params['Hidden']
        end
      end

      # ES集群操作详细信息
      class Operation < TencentCloud::Common::AbstractModel
        # @param Id: 操作唯一id
        # @type Id: Integer
        # @param StartTime: 操作开始时间
        # @type StartTime: String
        # @param Type: 操作类型
        # @type Type: String
        # @param Detail: 操作详情
        # @type Detail: :class:`Tencentcloud::Es.v20180416.models.OperationDetail`
        # @param Result: 操作结果
        # @type Result: String
        # @param Tasks: 流程任务信息
        # @type Tasks: Array
        # @param Progress: 操作进度
        # @type Progress: Float

        attr_accessor :Id, :StartTime, :Type, :Detail, :Result, :Tasks, :Progress
        
        def initialize(id=nil, starttime=nil, type=nil, detail=nil, result=nil, tasks=nil, progress=nil)
          @Id = id
          @StartTime = starttime
          @Type = type
          @Detail = detail
          @Result = result
          @Tasks = tasks
          @Progress = progress
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @Type = params['Type']
          unless params['Detail'].nil?
            @Detail = OperationDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @Result = params['Result']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskdetail_tmp = TaskDetail.new
              taskdetail_tmp.deserialize(i)
              @Tasks << taskdetail_tmp
            end
          end
          @Progress = params['Progress']
        end
      end

      # 操作详情
      class OperationDetail < TencentCloud::Common::AbstractModel
        # @param OldInfo: 实例原始配置信息
        # @type OldInfo: Array
        # @param NewInfo: 实例更新后配置信息
        # @type NewInfo: Array

        attr_accessor :OldInfo, :NewInfo
        
        def initialize(oldinfo=nil, newinfo=nil)
          @OldInfo = oldinfo
          @NewInfo = newinfo
        end

        def deserialize(params)
          unless params['OldInfo'].nil?
            @OldInfo = []
            params['OldInfo'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @OldInfo << keyvalue_tmp
            end
          end
          unless params['NewInfo'].nil?
            @NewInfo = []
            params['NewInfo'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @NewInfo << keyvalue_tmp
            end
          end
        end
      end

      # 集群可运维时间
      class OperationDuration < TencentCloud::Common::AbstractModel
        # @param Periods: 维护周期，表示周一到周日，可取值[0, 6]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Periods: Array
        # @param TimeStart: 维护开始时间
        # @type TimeStart: String
        # @param TimeEnd: 维护结束时间
        # @type TimeEnd: String
        # @param TimeZone: 时区，以UTC形式表示
        # @type TimeZone: String

        attr_accessor :Periods, :TimeStart, :TimeEnd, :TimeZone
        
        def initialize(periods=nil, timestart=nil, timeend=nil, timezone=nil)
          @Periods = periods
          @TimeStart = timestart
          @TimeEnd = timeend
          @TimeZone = timezone
        end

        def deserialize(params)
          @Periods = params['Periods']
          @TimeStart = params['TimeStart']
          @TimeEnd = params['TimeEnd']
          @TimeZone = params['TimeZone']
        end
      end

      # 集群可运维时间
      class OperationDurationUpdated < TencentCloud::Common::AbstractModel
        # @param Periods: 维护周期，表示周一到周日，可取值[0, 6]
        # @type Periods: Array
        # @param TimeStart: 维护开始时间
        # @type TimeStart: String
        # @param TimeEnd: 维护结束时间
        # @type TimeEnd: String
        # @param TimeZone: 时区，以UTC形式表示
        # @type TimeZone: String
        # @param MoreInstances: ES集群ID数组
        # @type MoreInstances: Array

        attr_accessor :Periods, :TimeStart, :TimeEnd, :TimeZone, :MoreInstances
        
        def initialize(periods=nil, timestart=nil, timeend=nil, timezone=nil, moreinstances=nil)
          @Periods = periods
          @TimeStart = timestart
          @TimeEnd = timeend
          @TimeZone = timezone
          @MoreInstances = moreinstances
        end

        def deserialize(params)
          @Periods = params['Periods']
          @TimeStart = params['TimeStart']
          @TimeEnd = params['TimeEnd']
          @TimeZone = params['TimeZone']
          @MoreInstances = params['MoreInstances']
        end
      end

      # 可选web组件信息
      class OptionalWebServiceInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param PublicUrl: 公网url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicUrl: String
        # @param PrivateUrl: 内网url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateUrl: String
        # @param PublicAccess: 公网访问权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicAccess: String
        # @param PrivateAccess: 内网访问权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateAccess: String
        # @param Version: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :Type, :Status, :PublicUrl, :PrivateUrl, :PublicAccess, :PrivateAccess, :Version
        
        def initialize(type=nil, status=nil, publicurl=nil, privateurl=nil, publicaccess=nil, privateaccess=nil, version=nil)
          @Type = type
          @Status = status
          @PublicUrl = publicurl
          @PrivateUrl = privateurl
          @PublicAccess = publicaccess
          @PrivateAccess = privateaccess
          @Version = version
        end

        def deserialize(params)
          @Type = params['Type']
          @Status = params['Status']
          @PublicUrl = params['PublicUrl']
          @PrivateUrl = params['PrivateUrl']
          @PublicAccess = params['PublicAccess']
          @PrivateAccess = params['PrivateAccess']
          @Version = params['Version']
        end
      end

      # RestartInstance请求参数结构体
      class RestartInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ForceRestart: 是否强制重启<li>true：强制重启</li><li>false：不强制重启</li>默认false
        # @type ForceRestart: Boolean
        # @param RestartMode: 重启模式：0 滚动重启； 1 全量重启
        # @type RestartMode: Integer

        attr_accessor :InstanceId, :ForceRestart, :RestartMode
        
        def initialize(instanceid=nil, forcerestart=nil, restartmode=nil)
          @InstanceId = instanceid
          @ForceRestart = forcerestart
          @RestartMode = restartmode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ForceRestart = params['ForceRestart']
          @RestartMode = params['RestartMode']
        end
      end

      # RestartInstance返回参数结构体
      class RestartInstanceResponse < TencentCloud::Common::AbstractModel
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

      # RestartKibana请求参数结构体
      class RestartKibanaRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # RestartKibana返回参数结构体
      class RestartKibanaResponse < TencentCloud::Common::AbstractModel
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

      # RestartLogstashInstance请求参数结构体
      class RestartLogstashInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 重启类型，0全量重启，1滚动重启
        # @type Type: Integer

        attr_accessor :InstanceId, :Type
        
        def initialize(instanceid=nil, type=nil)
          @InstanceId = instanceid
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
        end
      end

      # RestartLogstashInstance返回参数结构体
      class RestartLogstashInstanceResponse < TencentCloud::Common::AbstractModel
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

      # RestartNodes请求参数结构体
      class RestartNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param NodeNames: 节点名称列表
        # @type NodeNames: Array
        # @param ForceRestart: 是否强制重启
        # @type ForceRestart: Boolean

        attr_accessor :InstanceId, :NodeNames, :ForceRestart
        
        def initialize(instanceid=nil, nodenames=nil, forcerestart=nil)
          @InstanceId = instanceid
          @NodeNames = nodenames
          @ForceRestart = forcerestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeNames = params['NodeNames']
          @ForceRestart = params['ForceRestart']
        end
      end

      # RestartNodes返回参数结构体
      class RestartNodesResponse < TencentCloud::Common::AbstractModel
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

      # SaveAndDeployLogstashPipeline请求参数结构体
      class SaveAndDeployLogstashPipelineRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Pipeline: 实例管道信息
        # @type Pipeline: :class:`Tencentcloud::Es.v20180416.models.LogstashPipeline`
        # @param OpType: 操作类型<li>1：只保存</li><li>2：保存并部署</li>
        # @type OpType: Integer

        attr_accessor :InstanceId, :Pipeline, :OpType
        
        def initialize(instanceid=nil, pipeline=nil, optype=nil)
          @InstanceId = instanceid
          @Pipeline = pipeline
          @OpType = optype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Pipeline'].nil?
            @Pipeline = LogstashPipeline.new
            @Pipeline.deserialize(params['Pipeline'])
          end
          @OpType = params['OpType']
        end
      end

      # SaveAndDeployLogstashPipeline返回参数结构体
      class SaveAndDeployLogstashPipelineResponse < TencentCloud::Common::AbstractModel
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

      # StartLogstashPipelines请求参数结构体
      class StartLogstashPipelinesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param PipelineIds: 管道ID列表
        # @type PipelineIds: Array

        attr_accessor :InstanceId, :PipelineIds
        
        def initialize(instanceid=nil, pipelineids=nil)
          @InstanceId = instanceid
          @PipelineIds = pipelineids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PipelineIds = params['PipelineIds']
        end
      end

      # StartLogstashPipelines返回参数结构体
      class StartLogstashPipelinesResponse < TencentCloud::Common::AbstractModel
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

      # StopLogstashPipelines请求参数结构体
      class StopLogstashPipelinesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param PipelineIds: 管道ID列表
        # @type PipelineIds: Array

        attr_accessor :InstanceId, :PipelineIds
        
        def initialize(instanceid=nil, pipelineids=nil)
          @InstanceId = instanceid
          @PipelineIds = pipelineids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PipelineIds = params['PipelineIds']
        end
      end

      # StopLogstashPipelines返回参数结构体
      class StopLogstashPipelinesResponse < TencentCloud::Common::AbstractModel
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

      # 实例操作记录流程任务中的子任务信息（如升级检查任务中的各个检查项）
      class SubTaskDetail < TencentCloud::Common::AbstractModel
        # @param Name: 子任务名
        # @type Name: String
        # @param Result: 子任务结果
        # @type Result: Boolean
        # @param ErrMsg: 子任务错误信息
        # @type ErrMsg: String
        # @param Type: 子任务类型
        # @type Type: String
        # @param Status: 子任务状态，0处理中 1成功 -1失败
        # @type Status: Integer
        # @param FailedIndices: 升级检查失败的索引名
        # @type FailedIndices: Array
        # @param FinishTime: 子任务结束时间
        # @type FinishTime: String
        # @param Level: 子任务等级，1警告 2失败
        # @type Level: Integer

        attr_accessor :Name, :Result, :ErrMsg, :Type, :Status, :FailedIndices, :FinishTime, :Level
        
        def initialize(name=nil, result=nil, errmsg=nil, type=nil, status=nil, failedindices=nil, finishtime=nil, level=nil)
          @Name = name
          @Result = result
          @ErrMsg = errmsg
          @Type = type
          @Status = status
          @FailedIndices = failedindices
          @FinishTime = finishtime
          @Level = level
        end

        def deserialize(params)
          @Name = params['Name']
          @Result = params['Result']
          @ErrMsg = params['ErrMsg']
          @Type = params['Type']
          @Status = params['Status']
          @FailedIndices = params['FailedIndices']
          @FinishTime = params['FinishTime']
          @Level = params['Level']
        end
      end

      # 实例标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
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

      # 实例操作记录中的流程任务信息
      class TaskDetail < TencentCloud::Common::AbstractModel
        # @param Name: 任务名
        # @type Name: String
        # @param Progress: 任务进度
        # @type Progress: Float
        # @param FinishTime: 任务完成时间
        # @type FinishTime: String
        # @param SubTasks: 子任务
        # @type SubTasks: Array

        attr_accessor :Name, :Progress, :FinishTime, :SubTasks
        
        def initialize(name=nil, progress=nil, finishtime=nil, subtasks=nil)
          @Name = name
          @Progress = progress
          @FinishTime = finishtime
          @SubTasks = subtasks
        end

        def deserialize(params)
          @Name = params['Name']
          @Progress = params['Progress']
          @FinishTime = params['FinishTime']
          unless params['SubTasks'].nil?
            @SubTasks = []
            params['SubTasks'].each do |i|
              subtaskdetail_tmp = SubTaskDetail.new
              subtaskdetail_tmp.deserialize(i)
              @SubTasks << subtaskdetail_tmp
            end
          end
        end
      end

      # UpdateDiagnoseSettings请求参数结构体
      class UpdateDiagnoseSettingsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES实例ID
        # @type InstanceId: String
        # @param Status: 0：开启智能运维；-1：关闭智能运维
        # @type Status: Integer
        # @param CronTime: 智能运维每天定时巡检时间
        # @type CronTime: String

        attr_accessor :InstanceId, :Status, :CronTime
        
        def initialize(instanceid=nil, status=nil, crontime=nil)
          @InstanceId = instanceid
          @Status = status
          @CronTime = crontime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @CronTime = params['CronTime']
        end
      end

      # UpdateDiagnoseSettings返回参数结构体
      class UpdateDiagnoseSettingsResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDictionaries请求参数结构体
      class UpdateDictionariesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES实例ID
        # @type InstanceId: String
        # @param IkMainDicts: IK分词主词典COS地址
        # @type IkMainDicts: Array
        # @param IkStopwords: IK分词停用词词典COS地址
        # @type IkStopwords: Array
        # @param Synonym: 同义词词典COS地址
        # @type Synonym: Array
        # @param QQDict: QQ分词词典COS地址
        # @type QQDict: Array
        # @param UpdateType: 0：安装；1：删除。默认值0
        # @type UpdateType: Integer
        # @param ForceRestart: 是否强制重启集群。默认值false
        # @type ForceRestart: Boolean

        attr_accessor :InstanceId, :IkMainDicts, :IkStopwords, :Synonym, :QQDict, :UpdateType, :ForceRestart
        
        def initialize(instanceid=nil, ikmaindicts=nil, ikstopwords=nil, synonym=nil, qqdict=nil, updatetype=nil, forcerestart=nil)
          @InstanceId = instanceid
          @IkMainDicts = ikmaindicts
          @IkStopwords = ikstopwords
          @Synonym = synonym
          @QQDict = qqdict
          @UpdateType = updatetype
          @ForceRestart = forcerestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IkMainDicts = params['IkMainDicts']
          @IkStopwords = params['IkStopwords']
          @Synonym = params['Synonym']
          @QQDict = params['QQDict']
          @UpdateType = params['UpdateType']
          @ForceRestart = params['ForceRestart']
        end
      end

      # UpdateDictionaries返回参数结构体
      class UpdateDictionariesResponse < TencentCloud::Common::AbstractModel
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

      # UpdateIndex请求参数结构体
      class UpdateIndexRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES集群ID
        # @type InstanceId: String
        # @param IndexType: 更新的索引类型。auto：自治索引；normal：普通索引
        # @type IndexType: String
        # @param IndexName: 更新的索引名
        # @type IndexName: String
        # @param UpdateMetaJson: 更新的索引元数据JSON，如mappings、settings
        # @type UpdateMetaJson: String
        # @param Username: 集群访问用户名
        # @type Username: String
        # @param Password: 集群访问密码
        # @type Password: String
        # @param RolloverBackingIndex: 是否滚动后备索引
        # @type RolloverBackingIndex: Boolean

        attr_accessor :InstanceId, :IndexType, :IndexName, :UpdateMetaJson, :Username, :Password, :RolloverBackingIndex
        
        def initialize(instanceid=nil, indextype=nil, indexname=nil, updatemetajson=nil, username=nil, password=nil, rolloverbackingindex=nil)
          @InstanceId = instanceid
          @IndexType = indextype
          @IndexName = indexname
          @UpdateMetaJson = updatemetajson
          @Username = username
          @Password = password
          @RolloverBackingIndex = rolloverbackingindex
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IndexType = params['IndexType']
          @IndexName = params['IndexName']
          @UpdateMetaJson = params['UpdateMetaJson']
          @Username = params['Username']
          @Password = params['Password']
          @RolloverBackingIndex = params['RolloverBackingIndex']
        end
      end

      # UpdateIndex返回参数结构体
      class UpdateIndexResponse < TencentCloud::Common::AbstractModel
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

      # UpdateInstance请求参数结构体
      class UpdateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称（1-50 个英文、汉字、数字、连接线-或下划线_）
        # @type InstanceName: String
        # @param NodeNum: 已废弃请使用NodeInfoList
        # 节点个数（2-50个）
        # @type NodeNum: Integer
        # @param EsConfig: ES配置项（JSON格式字符串）
        # @type EsConfig: String
        # @param Password: 默认用户elastic的密码（8到16位，至少包括两项（[a-z,A-Z],[0-9]和[-!@#$%&^*+=_:;,.?]的特殊符号）
        # @type Password: String
        # @param EsAcl: 访问控制列表
        # @type EsAcl: :class:`Tencentcloud::Es.v20180416.models.EsAcl`
        # @param DiskSize: 已废弃请使用NodeInfoList
        # 磁盘大小（单位GB）
        # @type DiskSize: Integer
        # @param NodeType: 已废弃请使用NodeInfoList
        # 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param MasterNodeNum: 已废弃请使用NodeInfoList
        # 专用主节点个数（只支持3个或5个）
        # @type MasterNodeNum: Integer
        # @param MasterNodeType: 已废弃请使用NodeInfoList
        # 专用主节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type MasterNodeType: String
        # @param MasterNodeDiskSize: 已废弃请使用NodeInfoList
        # 专用主节点磁盘大小（单位GB系统默认配置为50GB,暂不支持自定义）
        # @type MasterNodeDiskSize: Integer
        # @param ForceRestart: 更新配置时是否强制重启<li>true强制重启</li><li>false不强制重启</li>当前仅更新EsConfig时需要设置，默认值为false
        # @type ForceRestart: Boolean
        # @param CosBackup: COS自动备份信息
        # @type CosBackup: :class:`Tencentcloud::Es.v20180416.models.CosBackup`
        # @param NodeInfoList: 节点信息列表，可以只传递要更新的节点及其对应的规格信息。支持的操作包括<li>修改一种节点的个数</li><li>修改一种节点的节点规格及磁盘大小</li><li>增加一种节点类型（需要同时指定该节点的类型，个数，规格，磁盘等信息）</li>上述操作一次只能进行一种，且磁盘类型不支持修改
        # @type NodeInfoList: Array
        # @param PublicAccess: 公网访问状态
        # @type PublicAccess: String
        # @param EsPublicAcl: 公网访问控制列表
        # @type EsPublicAcl: :class:`Tencentcloud::Es.v20180416.models.EsPublicAcl`
        # @param KibanaPublicAccess: Kibana公网访问状态
        # @type KibanaPublicAccess: String
        # @param KibanaPrivateAccess: Kibana内网访问状态
        # @type KibanaPrivateAccess: String
        # @param BasicSecurityType: ES 6.8及以上版本基础版开启或关闭用户认证
        # @type BasicSecurityType: Integer
        # @param KibanaPrivatePort: Kibana内网端口
        # @type KibanaPrivatePort: Integer
        # @param ScaleType: 0: 蓝绿变更方式扩容，集群不重启 （默认） 1: 磁盘解挂载扩容，集群滚动重启
        # @type ScaleType: Integer
        # @param MultiZoneInfo: 多可用区部署
        # @type MultiZoneInfo: Array
        # @param SceneType: 场景化模板类型 -1：不启用 1：通用 2：日志 3：搜索
        # @type SceneType: Integer
        # @param KibanaConfig: Kibana配置项（JSON格式字符串）
        # @type KibanaConfig: String
        # @param WebNodeTypeInfo: 可视化节点配置
        # @type WebNodeTypeInfo: :class:`Tencentcloud::Es.v20180416.models.WebNodeTypeInfo`
        # @param SwitchPrivateLink: 切换到新网络架构
        # @type SwitchPrivateLink: String
        # @param EnableCerebro: 启用Cerebro
        # @type EnableCerebro: Boolean
        # @param CerebroPublicAccess: Cerebro公网访问状态
        # @type CerebroPublicAccess: String
        # @param CerebroPrivateAccess: Cerebro内网访问状态
        # @type CerebroPrivateAccess: String
        # @param EsConfigSet: 新增或修改的配置组信息
        # @type EsConfigSet: :class:`Tencentcloud::Es.v20180416.models.EsConfigSetInfo`
        # @param OperationDuration: 可维护时间段
        # @type OperationDuration: :class:`Tencentcloud::Es.v20180416.models.OperationDurationUpdated`

        attr_accessor :InstanceId, :InstanceName, :NodeNum, :EsConfig, :Password, :EsAcl, :DiskSize, :NodeType, :MasterNodeNum, :MasterNodeType, :MasterNodeDiskSize, :ForceRestart, :CosBackup, :NodeInfoList, :PublicAccess, :EsPublicAcl, :KibanaPublicAccess, :KibanaPrivateAccess, :BasicSecurityType, :KibanaPrivatePort, :ScaleType, :MultiZoneInfo, :SceneType, :KibanaConfig, :WebNodeTypeInfo, :SwitchPrivateLink, :EnableCerebro, :CerebroPublicAccess, :CerebroPrivateAccess, :EsConfigSet, :OperationDuration
        
        def initialize(instanceid=nil, instancename=nil, nodenum=nil, esconfig=nil, password=nil, esacl=nil, disksize=nil, nodetype=nil, masternodenum=nil, masternodetype=nil, masternodedisksize=nil, forcerestart=nil, cosbackup=nil, nodeinfolist=nil, publicaccess=nil, espublicacl=nil, kibanapublicaccess=nil, kibanaprivateaccess=nil, basicsecuritytype=nil, kibanaprivateport=nil, scaletype=nil, multizoneinfo=nil, scenetype=nil, kibanaconfig=nil, webnodetypeinfo=nil, switchprivatelink=nil, enablecerebro=nil, cerebropublicaccess=nil, cerebroprivateaccess=nil, esconfigset=nil, operationduration=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @NodeNum = nodenum
          @EsConfig = esconfig
          @Password = password
          @EsAcl = esacl
          @DiskSize = disksize
          @NodeType = nodetype
          @MasterNodeNum = masternodenum
          @MasterNodeType = masternodetype
          @MasterNodeDiskSize = masternodedisksize
          @ForceRestart = forcerestart
          @CosBackup = cosbackup
          @NodeInfoList = nodeinfolist
          @PublicAccess = publicaccess
          @EsPublicAcl = espublicacl
          @KibanaPublicAccess = kibanapublicaccess
          @KibanaPrivateAccess = kibanaprivateaccess
          @BasicSecurityType = basicsecuritytype
          @KibanaPrivatePort = kibanaprivateport
          @ScaleType = scaletype
          @MultiZoneInfo = multizoneinfo
          @SceneType = scenetype
          @KibanaConfig = kibanaconfig
          @WebNodeTypeInfo = webnodetypeinfo
          @SwitchPrivateLink = switchprivatelink
          @EnableCerebro = enablecerebro
          @CerebroPublicAccess = cerebropublicaccess
          @CerebroPrivateAccess = cerebroprivateaccess
          @EsConfigSet = esconfigset
          @OperationDuration = operationduration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @NodeNum = params['NodeNum']
          @EsConfig = params['EsConfig']
          @Password = params['Password']
          unless params['EsAcl'].nil?
            @EsAcl = EsAcl.new
            @EsAcl.deserialize(params['EsAcl'])
          end
          @DiskSize = params['DiskSize']
          @NodeType = params['NodeType']
          @MasterNodeNum = params['MasterNodeNum']
          @MasterNodeType = params['MasterNodeType']
          @MasterNodeDiskSize = params['MasterNodeDiskSize']
          @ForceRestart = params['ForceRestart']
          unless params['CosBackup'].nil?
            @CosBackup = CosBackup.new
            @CosBackup.deserialize(params['CosBackup'])
          end
          unless params['NodeInfoList'].nil?
            @NodeInfoList = []
            params['NodeInfoList'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @NodeInfoList << nodeinfo_tmp
            end
          end
          @PublicAccess = params['PublicAccess']
          unless params['EsPublicAcl'].nil?
            @EsPublicAcl = EsPublicAcl.new
            @EsPublicAcl.deserialize(params['EsPublicAcl'])
          end
          @KibanaPublicAccess = params['KibanaPublicAccess']
          @KibanaPrivateAccess = params['KibanaPrivateAccess']
          @BasicSecurityType = params['BasicSecurityType']
          @KibanaPrivatePort = params['KibanaPrivatePort']
          @ScaleType = params['ScaleType']
          unless params['MultiZoneInfo'].nil?
            @MultiZoneInfo = []
            params['MultiZoneInfo'].each do |i|
              zonedetail_tmp = ZoneDetail.new
              zonedetail_tmp.deserialize(i)
              @MultiZoneInfo << zonedetail_tmp
            end
          end
          @SceneType = params['SceneType']
          @KibanaConfig = params['KibanaConfig']
          unless params['WebNodeTypeInfo'].nil?
            @WebNodeTypeInfo = WebNodeTypeInfo.new
            @WebNodeTypeInfo.deserialize(params['WebNodeTypeInfo'])
          end
          @SwitchPrivateLink = params['SwitchPrivateLink']
          @EnableCerebro = params['EnableCerebro']
          @CerebroPublicAccess = params['CerebroPublicAccess']
          @CerebroPrivateAccess = params['CerebroPrivateAccess']
          unless params['EsConfigSet'].nil?
            @EsConfigSet = EsConfigSetInfo.new
            @EsConfigSet.deserialize(params['EsConfigSet'])
          end
          unless params['OperationDuration'].nil?
            @OperationDuration = OperationDurationUpdated.new
            @OperationDuration.deserialize(params['OperationDuration'])
          end
        end
      end

      # UpdateInstance返回参数结构体
      class UpdateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId
        
        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # UpdateJdk请求参数结构体
      class UpdateJdkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ES实例ID
        # @type InstanceId: String
        # @param Jdk: Jdk类型，支持kona和oracle
        # @type Jdk: String
        # @param Gc: Gc类型，支持g1和cms
        # @type Gc: String
        # @param ForceRestart: 是否强制重启
        # @type ForceRestart: Boolean

        attr_accessor :InstanceId, :Jdk, :Gc, :ForceRestart
        
        def initialize(instanceid=nil, jdk=nil, gc=nil, forcerestart=nil)
          @InstanceId = instanceid
          @Jdk = jdk
          @Gc = gc
          @ForceRestart = forcerestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Jdk = params['Jdk']
          @Gc = params['Gc']
          @ForceRestart = params['ForceRestart']
        end
      end

      # UpdateJdk返回参数结构体
      class UpdateJdkResponse < TencentCloud::Common::AbstractModel
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

      # UpdateLogstashInstance请求参数结构体
      class UpdateLogstashInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param NodeNum: 实例节点数量
        # @type NodeNum: Integer
        # @param YMLConfig: 实例YML配置
        # @type YMLConfig: String
        # @param BindedES: 实例绑定的ES集群信息
        # @type BindedES: :class:`Tencentcloud::Es.v20180416.models.LogstashBindedES`
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ExtendedFiles: 扩展文件列表
        # @type ExtendedFiles: Array
        # @param NodeType: 实例规格
        # @type NodeType: String
        # @param DiskSize: 节点磁盘容量
        # @type DiskSize: Integer
        # @param OperationDuration: 可维护时间段
        # @type OperationDuration: :class:`Tencentcloud::Es.v20180416.models.OperationDurationUpdated`

        attr_accessor :InstanceId, :NodeNum, :YMLConfig, :BindedES, :InstanceName, :ExtendedFiles, :NodeType, :DiskSize, :OperationDuration
        
        def initialize(instanceid=nil, nodenum=nil, ymlconfig=nil, bindedes=nil, instancename=nil, extendedfiles=nil, nodetype=nil, disksize=nil, operationduration=nil)
          @InstanceId = instanceid
          @NodeNum = nodenum
          @YMLConfig = ymlconfig
          @BindedES = bindedes
          @InstanceName = instancename
          @ExtendedFiles = extendedfiles
          @NodeType = nodetype
          @DiskSize = disksize
          @OperationDuration = operationduration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeNum = params['NodeNum']
          @YMLConfig = params['YMLConfig']
          unless params['BindedES'].nil?
            @BindedES = LogstashBindedES.new
            @BindedES.deserialize(params['BindedES'])
          end
          @InstanceName = params['InstanceName']
          unless params['ExtendedFiles'].nil?
            @ExtendedFiles = []
            params['ExtendedFiles'].each do |i|
              logstashextendedfile_tmp = LogstashExtendedFile.new
              logstashextendedfile_tmp.deserialize(i)
              @ExtendedFiles << logstashextendedfile_tmp
            end
          end
          @NodeType = params['NodeType']
          @DiskSize = params['DiskSize']
          unless params['OperationDuration'].nil?
            @OperationDuration = OperationDurationUpdated.new
            @OperationDuration.deserialize(params['OperationDuration'])
          end
        end
      end

      # UpdateLogstashInstance返回参数结构体
      class UpdateLogstashInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpdateLogstashPipelineDesc请求参数结构体
      class UpdateLogstashPipelineDescRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param PipelineId: 实例管道ID
        # @type PipelineId: String
        # @param PipelineDesc: 管道描述信息
        # @type PipelineDesc: String

        attr_accessor :InstanceId, :PipelineId, :PipelineDesc
        
        def initialize(instanceid=nil, pipelineid=nil, pipelinedesc=nil)
          @InstanceId = instanceid
          @PipelineId = pipelineid
          @PipelineDesc = pipelinedesc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PipelineId = params['PipelineId']
          @PipelineDesc = params['PipelineDesc']
        end
      end

      # UpdateLogstashPipelineDesc返回参数结构体
      class UpdateLogstashPipelineDescResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePlugins请求参数结构体
      class UpdatePluginsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstallPluginList: 需要安装的插件名列表
        # @type InstallPluginList: Array
        # @param RemovePluginList: 需要卸载的插件名列表
        # @type RemovePluginList: Array
        # @param ForceRestart: 是否强制重启，默认值false
        # @type ForceRestart: Boolean
        # @param ForceUpdate: 是否重新安装，默认值false
        # @type ForceUpdate: Boolean
        # @param PluginType: 0：系统插件
        # @type PluginType: Integer

        attr_accessor :InstanceId, :InstallPluginList, :RemovePluginList, :ForceRestart, :ForceUpdate, :PluginType
        
        def initialize(instanceid=nil, installpluginlist=nil, removepluginlist=nil, forcerestart=nil, forceupdate=nil, plugintype=nil)
          @InstanceId = instanceid
          @InstallPluginList = installpluginlist
          @RemovePluginList = removepluginlist
          @ForceRestart = forcerestart
          @ForceUpdate = forceupdate
          @PluginType = plugintype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstallPluginList = params['InstallPluginList']
          @RemovePluginList = params['RemovePluginList']
          @ForceRestart = params['ForceRestart']
          @ForceUpdate = params['ForceUpdate']
          @PluginType = params['PluginType']
        end
      end

      # UpdatePlugins返回参数结构体
      class UpdatePluginsResponse < TencentCloud::Common::AbstractModel
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

      # UpdateRequestTargetNodeTypes请求参数结构体
      class UpdateRequestTargetNodeTypesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TargetNodeTypes: 接收请求的目标节点类型列表
        # @type TargetNodeTypes: Array

        attr_accessor :InstanceId, :TargetNodeTypes
        
        def initialize(instanceid=nil, targetnodetypes=nil)
          @InstanceId = instanceid
          @TargetNodeTypes = targetnodetypes
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TargetNodeTypes = params['TargetNodeTypes']
        end
      end

      # UpdateRequestTargetNodeTypes返回参数结构体
      class UpdateRequestTargetNodeTypesResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param EsVersion: 目标ES版本，支持：”6.4.3“, "6.8.2"，"7.5.1"
        # @type EsVersion: String
        # @param CheckOnly: 是否只做升级检查，默认值为false
        # @type CheckOnly: Boolean
        # @param LicenseType: 目标商业特性版本：<li>oss 开源版</li><li>basic 基础版</li>当前仅在5.6.4升级6.x版本时使用，默认值为basic
        # @type LicenseType: String
        # @param BasicSecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # @type BasicSecurityType: Integer
        # @param UpgradeMode: 升级方式：<li>scale 蓝绿变更</li><li>restart 滚动重启</li>默认值为scale
        # @type UpgradeMode: String
        # @param CosBackup: 升级版本前是否对集群进行备份，默认不备份
        # @type CosBackup: Boolean

        attr_accessor :InstanceId, :EsVersion, :CheckOnly, :LicenseType, :BasicSecurityType, :UpgradeMode, :CosBackup
        
        def initialize(instanceid=nil, esversion=nil, checkonly=nil, licensetype=nil, basicsecuritytype=nil, upgrademode=nil, cosbackup=nil)
          @InstanceId = instanceid
          @EsVersion = esversion
          @CheckOnly = checkonly
          @LicenseType = licensetype
          @BasicSecurityType = basicsecuritytype
          @UpgradeMode = upgrademode
          @CosBackup = cosbackup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EsVersion = params['EsVersion']
          @CheckOnly = params['CheckOnly']
          @LicenseType = params['LicenseType']
          @BasicSecurityType = params['BasicSecurityType']
          @UpgradeMode = params['UpgradeMode']
          @CosBackup = params['CosBackup']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeLicense请求参数结构体
      class UpgradeLicenseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param LicenseType: License类型<li>oss：开源版</li><li>basic：基础版</li><li>platinum：白金版</li>默认值platinum
        # @type LicenseType: String
        # @param AutoVoucher: 是否自动使用代金券<li>0：不自动使用</li><li>1：自动使用</li>默认值0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表（目前仅支持指定一张代金券）
        # @type VoucherIds: Array
        # @param BasicSecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # @type BasicSecurityType: Integer
        # @param ForceRestart: 是否强制重启<li>true强制重启</li><li>false不强制重启</li> 默认值false
        # @type ForceRestart: Boolean

        attr_accessor :InstanceId, :LicenseType, :AutoVoucher, :VoucherIds, :BasicSecurityType, :ForceRestart
        
        def initialize(instanceid=nil, licensetype=nil, autovoucher=nil, voucherids=nil, basicsecuritytype=nil, forcerestart=nil)
          @InstanceId = instanceid
          @LicenseType = licensetype
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @BasicSecurityType = basicsecuritytype
          @ForceRestart = forcerestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LicenseType = params['LicenseType']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @BasicSecurityType = params['BasicSecurityType']
          @ForceRestart = params['ForceRestart']
        end
      end

      # UpgradeLicense返回参数结构体
      class UpgradeLicenseResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId
        
        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # 可视化节点配置
      class WebNodeTypeInfo < TencentCloud::Common::AbstractModel
        # @param NodeNum: 可视化节点个数，固定为1
        # @type NodeNum: Integer
        # @param NodeType: 可视化节点规格
        # @type NodeType: String

        attr_accessor :NodeNum, :NodeType
        
        def initialize(nodenum=nil, nodetype=nil)
          @NodeNum = nodenum
          @NodeType = nodetype
        end

        def deserialize(params)
          @NodeNum = params['NodeNum']
          @NodeType = params['NodeType']
        end
      end

      # 多可用区部署时可用区的详细信息
      class ZoneDetail < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String

        attr_accessor :Zone, :SubnetId
        
        def initialize(zone=nil, subnetid=nil)
          @Zone = zone
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end

