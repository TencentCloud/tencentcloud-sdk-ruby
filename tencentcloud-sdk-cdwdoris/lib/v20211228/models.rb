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
  module Cdwdoris
    module V20211228
      # 集群内节点的规格磁盘规格描述
      class AttachCBSSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 节点磁盘类型，例如“CLOUD_SSD”\"CLOUD_PREMIUM"
        # @type DiskType: String
        # @param DiskSize: 磁盘容量，单位G
        # @type DiskSize: Integer
        # @param DiskCount: 磁盘总数
        # @type DiskCount: Integer
        # @param DiskDesc: 描述
        # @type DiskDesc: String

        attr_accessor :DiskType, :DiskSize, :DiskCount, :DiskDesc

        def initialize(disktype=nil, disksize=nil, diskcount=nil, diskdesc=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
          @DiskDesc = diskdesc
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
          @DiskDesc = params['DiskDesc']
        end
      end

      # DescribeInstanceNodes请求参数结构体
      class DescribeInstanceNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param NodeRole: 集群角色类型，默认为 "data"数据节点
        # @type NodeRole: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param DisplayPolicy: 展现策略，All时显示所有
        # @type DisplayPolicy: String

        attr_accessor :InstanceId, :NodeRole, :Offset, :Limit, :DisplayPolicy

        def initialize(instanceid=nil, noderole=nil, offset=nil, limit=nil, displaypolicy=nil)
          @InstanceId = instanceid
          @NodeRole = noderole
          @Offset = offset
          @Limit = limit
          @DisplayPolicy = displaypolicy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeRole = params['NodeRole']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DisplayPolicy = params['DisplayPolicy']
        end
      end

      # DescribeInstanceNodes返回参数结构体
      class DescribeInstanceNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param InstanceNodesList: 实例节点总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNodesList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceNodesList, :RequestId

        def initialize(totalcount=nil, instancenodeslist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceNodesList = instancenodeslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceNodesList'].nil?
            @InstanceNodesList = []
            params['InstanceNodesList'].each do |i|
              instancenode_tmp = InstanceNode.new
              instancenode_tmp.deserialize(i)
              @InstanceNodesList << instancenode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceInfo: 实例描述信息
        # @type InstanceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.InstanceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceInfo, :RequestId

        def initialize(instanceinfo=nil, requestid=nil)
          @InstanceInfo = instanceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceInfo'].nil?
            @InstanceInfo = InstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceId: 搜索的集群id名称
        # @type SearchInstanceId: String
        # @param SearchInstanceName: 搜索的集群name
        # @type SearchInstanceName: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param SearchTags: 搜索标签列表
        # @type SearchTags: Array

        attr_accessor :SearchInstanceId, :SearchInstanceName, :Offset, :Limit, :SearchTags

        def initialize(searchinstanceid=nil, searchinstancename=nil, offset=nil, limit=nil, searchtags=nil)
          @SearchInstanceId = searchinstanceid
          @SearchInstanceName = searchinstancename
          @Offset = offset
          @Limit = limit
          @SearchTags = searchtags
        end

        def deserialize(params)
          @SearchInstanceId = params['SearchInstanceId']
          @SearchInstanceName = params['SearchInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['SearchTags'].nil?
            @SearchTags = []
            params['SearchTags'].each do |i|
              searchtags_tmp = SearchTags.new
              searchtags_tmp.deserialize(i)
              @SearchTags << searchtags_tmp
            end
          end
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param InstancesList: 实例数组
        # @type InstancesList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstancesList << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例描述信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID, "cdw-xxxx" 字符串类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 集群实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Status: 状态,
        # Init 创建中; Serving 运行中；
        # Deleted已销毁；Deleting 销毁中；
        # Modify 集群变更中；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Region: 地域, ap-guangzhou
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 可用区， ap-guangzhou-3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param VpcId: 私有网络名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param PayMode: 付费类型，"hour", "prepay"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param MasterSummary: 数据节点描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterSummary: :class:`Tencentcloud::Cdwdoris.v20211228.models.NodesSummary`
        # @param CoreSummary: zookeeper节点描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreSummary: :class:`Tencentcloud::Cdwdoris.v20211228.models.NodesSummary`
        # @param HA: 高可用，“true" "false"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HA: String
        # @param HaType: 高可用类型：
        # 0：非高可用
        # 1：读高可用
        # 2：读写高可用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HaType: Integer
        # @param AccessInfo: 访问地址，例如 "10.0.0.1:9000"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessInfo: String
        # @param Id: 记录ID，数值型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param RegionId: regionId, 表示地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param ZoneDesc: 可用区说明，例如 "广州二区"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneDesc: String
        # @param FlowMsg: 错误流程说明信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param StatusDesc: 状态描述，例如“运行中”等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param RenewFlag: 自动续费标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Boolean
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Monitor: 监控信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Monitor: String
        # @param HasClsTopic: 是否开通日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasClsTopic: Boolean
        # @param ClsTopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsTopicId: String
        # @param ClsLogSetId: 日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsLogSetId: String
        # @param EnableXMLConfig: 是否支持xml配置管理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableXMLConfig: Integer
        # @param RegionDesc: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDesc: String
        # @param Eip: 弹性网卡地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Eip: String
        # @param CosMoveFactor: 冷热分层系数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosMoveFactor: Integer
        # @param Kind: external/local/yunti
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param CosBucketName: cos桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosBucketName: String
        # @param CanAttachCbs: cbs
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanAttachCbs: Boolean
        # @param BuildVersion: 小版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildVersion: String
        # @param Components: 组件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: String
        # @param IfExistCatalog: 判断审计日志表是否有catalog字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfExistCatalog: Integer
        # @param Characteristic: 页面特性，用于前端屏蔽一些页面入口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Characteristic: Array
        # @param RestartTimeout: 超时时间 单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartTimeout: String

        attr_accessor :InstanceId, :InstanceName, :Status, :Version, :Region, :Zone, :VpcId, :SubnetId, :PayMode, :CreateTime, :ExpireTime, :MasterSummary, :CoreSummary, :HA, :HaType, :AccessInfo, :Id, :RegionId, :ZoneDesc, :FlowMsg, :StatusDesc, :RenewFlag, :Tags, :Monitor, :HasClsTopic, :ClsTopicId, :ClsLogSetId, :EnableXMLConfig, :RegionDesc, :Eip, :CosMoveFactor, :Kind, :CosBucketName, :CanAttachCbs, :BuildVersion, :Components, :IfExistCatalog, :Characteristic, :RestartTimeout
        extend Gem::Deprecate
        deprecate :IfExistCatalog, :none, 2023, 12
        deprecate :IfExistCatalog=, :none, 2023, 12

        def initialize(instanceid=nil, instancename=nil, status=nil, version=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, paymode=nil, createtime=nil, expiretime=nil, mastersummary=nil, coresummary=nil, ha=nil, hatype=nil, accessinfo=nil, id=nil, regionid=nil, zonedesc=nil, flowmsg=nil, statusdesc=nil, renewflag=nil, tags=nil, monitor=nil, hasclstopic=nil, clstopicid=nil, clslogsetid=nil, enablexmlconfig=nil, regiondesc=nil, eip=nil, cosmovefactor=nil, kind=nil, cosbucketname=nil, canattachcbs=nil, buildversion=nil, components=nil, ifexistcatalog=nil, characteristic=nil, restarttimeout=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @Version = version
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @CreateTime = createtime
          @ExpireTime = expiretime
          @MasterSummary = mastersummary
          @CoreSummary = coresummary
          @HA = ha
          @HaType = hatype
          @AccessInfo = accessinfo
          @Id = id
          @RegionId = regionid
          @ZoneDesc = zonedesc
          @FlowMsg = flowmsg
          @StatusDesc = statusdesc
          @RenewFlag = renewflag
          @Tags = tags
          @Monitor = monitor
          @HasClsTopic = hasclstopic
          @ClsTopicId = clstopicid
          @ClsLogSetId = clslogsetid
          @EnableXMLConfig = enablexmlconfig
          @RegionDesc = regiondesc
          @Eip = eip
          @CosMoveFactor = cosmovefactor
          @Kind = kind
          @CosBucketName = cosbucketname
          @CanAttachCbs = canattachcbs
          @BuildVersion = buildversion
          @Components = components
          @IfExistCatalog = ifexistcatalog
          @Characteristic = characteristic
          @RestartTimeout = restarttimeout
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @Version = params['Version']
          @Region = params['Region']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          unless params['MasterSummary'].nil?
            @MasterSummary = NodesSummary.new
            @MasterSummary.deserialize(params['MasterSummary'])
          end
          unless params['CoreSummary'].nil?
            @CoreSummary = NodesSummary.new
            @CoreSummary.deserialize(params['CoreSummary'])
          end
          @HA = params['HA']
          @HaType = params['HaType']
          @AccessInfo = params['AccessInfo']
          @Id = params['Id']
          @RegionId = params['RegionId']
          @ZoneDesc = params['ZoneDesc']
          @FlowMsg = params['FlowMsg']
          @StatusDesc = params['StatusDesc']
          @RenewFlag = params['RenewFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Monitor = params['Monitor']
          @HasClsTopic = params['HasClsTopic']
          @ClsTopicId = params['ClsTopicId']
          @ClsLogSetId = params['ClsLogSetId']
          @EnableXMLConfig = params['EnableXMLConfig']
          @RegionDesc = params['RegionDesc']
          @Eip = params['Eip']
          @CosMoveFactor = params['CosMoveFactor']
          @Kind = params['Kind']
          @CosBucketName = params['CosBucketName']
          @CanAttachCbs = params['CanAttachCbs']
          @BuildVersion = params['BuildVersion']
          @Components = params['Components']
          @IfExistCatalog = params['IfExistCatalog']
          @Characteristic = params['Characteristic']
          @RestartTimeout = params['RestartTimeout']
        end
      end

      # 实例节点描述信息
      class InstanceNode < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param Core: cpu核数
        # @type Core: Integer
        # @param Memory: 内存大小
        # @type Memory: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskSize: 磁盘大小
        # @type DiskSize: Integer
        # @param Role: 所属clickhouse cluster名称
        # @type Role: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Rip: rip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rip: String
        # @param FeRole: FE节点角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeRole: String
        # @param UUID: UUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UUID: String

        attr_accessor :Ip, :Spec, :Core, :Memory, :DiskType, :DiskSize, :Role, :Status, :Rip, :FeRole, :UUID

        def initialize(ip=nil, spec=nil, core=nil, memory=nil, disktype=nil, disksize=nil, role=nil, status=nil, rip=nil, ferole=nil, uuid=nil)
          @Ip = ip
          @Spec = spec
          @Core = core
          @Memory = memory
          @DiskType = disktype
          @DiskSize = disksize
          @Role = role
          @Status = status
          @Rip = rip
          @FeRole = ferole
          @UUID = uuid
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Spec = params['Spec']
          @Core = params['Core']
          @Memory = params['Memory']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @Role = params['Role']
          @Status = params['Status']
          @Rip = params['Rip']
          @FeRole = params['FeRole']
          @UUID = params['UUID']
        end
      end

      # 节点角色描述信息
      class NodesSummary < TencentCloud::Common::AbstractModel
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param NodeSize: 节点数目
        # @type NodeSize: Integer
        # @param Core: cpu核数，单位个
        # @type Core: Integer
        # @param Memory: 内存大小，单位G
        # @type Memory: Integer
        # @param Disk: 磁盘大小，单位G
        # @type Disk: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskDesc: 磁盘描述
        # @type DiskDesc: String
        # @param AttachCBSSpec: 挂载云盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachCBSSpec: :class:`Tencentcloud::Cdwdoris.v20211228.models.AttachCBSSpec`
        # @param SubProductType: 子产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductType: String
        # @param SpecCore: 规格核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecCore: Integer
        # @param SpecMemory: 规格内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecMemory: Integer
        # @param DiskCount: 磁盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskCount: Integer
        # @param Encrypt: 是否加密
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encrypt: Integer
        # @param MaxDiskSize: 最大磁盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDiskSize: Integer

        attr_accessor :Spec, :NodeSize, :Core, :Memory, :Disk, :DiskType, :DiskDesc, :AttachCBSSpec, :SubProductType, :SpecCore, :SpecMemory, :DiskCount, :Encrypt, :MaxDiskSize

        def initialize(spec=nil, nodesize=nil, core=nil, memory=nil, disk=nil, disktype=nil, diskdesc=nil, attachcbsspec=nil, subproducttype=nil, speccore=nil, specmemory=nil, diskcount=nil, encrypt=nil, maxdisksize=nil)
          @Spec = spec
          @NodeSize = nodesize
          @Core = core
          @Memory = memory
          @Disk = disk
          @DiskType = disktype
          @DiskDesc = diskdesc
          @AttachCBSSpec = attachcbsspec
          @SubProductType = subproducttype
          @SpecCore = speccore
          @SpecMemory = specmemory
          @DiskCount = diskcount
          @Encrypt = encrypt
          @MaxDiskSize = maxdisksize
        end

        def deserialize(params)
          @Spec = params['Spec']
          @NodeSize = params['NodeSize']
          @Core = params['Core']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
          unless params['AttachCBSSpec'].nil?
            @AttachCBSSpec = AttachCBSSpec.new
            @AttachCBSSpec.deserialize(params['AttachCBSSpec'])
          end
          @SubProductType = params['SubProductType']
          @SpecCore = params['SpecCore']
          @SpecMemory = params['SpecMemory']
          @DiskCount = params['DiskCount']
          @Encrypt = params['Encrypt']
          @MaxDiskSize = params['MaxDiskSize']
        end
      end

      # 列表页搜索的标记列表
      class SearchTags < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String
        # @param AllValue: 1表示只输入标签的键，没有输入值；0表示输入键时且输入值
        # @type AllValue: Integer

        attr_accessor :TagKey, :TagValue, :AllValue

        def initialize(tagkey=nil, tagvalue=nil, allvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @AllValue = allvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @AllValue = params['AllValue']
        end
      end

      # 标签描述
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
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

    end
  end
end

