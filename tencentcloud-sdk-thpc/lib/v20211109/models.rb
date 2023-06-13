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
  module Thpc
    module V20211109
      # BindAutoScalingGroup请求参数结构体
      class BindAutoScalingGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param LaunchConfigurationId: 弹性伸缩启动配置ID。
        # @type LaunchConfigurationId: String
        # @param AutoScalingGroupId: 弹性伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param QueueName: 队列名称。
        # @type QueueName: String
        # @param ExpansionBusyTime: 任务连续等待时间，队列的任务处于连续等待的时间。单位秒。默认值120。
        # @type ExpansionBusyTime: Integer
        # @param ShrinkIdleTime: 节点连续空闲（未运行作业）时间，一个节点连续处于空闲状态时间。单位秒。默认值300。
        # @type ShrinkIdleTime: Integer
        # @param EnableAutoExpansion: 是否开启自动扩容，默认值true。
        # @type EnableAutoExpansion: Boolean
        # @param EnableAutoShrink: 是否开启自动缩容，默认值true。
        # @type EnableAutoShrink: Boolean
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会绑定弹性伸缩组。检查项包括是否填写了必需参数，请求格式，业务限制。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId。
        # false（默认）：发送正常请求，通过检查后直接绑定弹性伸缩组。
        # @type DryRun: Boolean

        attr_accessor :ClusterId, :LaunchConfigurationId, :AutoScalingGroupId, :QueueName, :ExpansionBusyTime, :ShrinkIdleTime, :EnableAutoExpansion, :EnableAutoShrink, :DryRun

        def initialize(clusterid=nil, launchconfigurationid=nil, autoscalinggroupid=nil, queuename=nil, expansionbusytime=nil, shrinkidletime=nil, enableautoexpansion=nil, enableautoshrink=nil, dryrun=nil)
          @ClusterId = clusterid
          @LaunchConfigurationId = launchconfigurationid
          @AutoScalingGroupId = autoscalinggroupid
          @QueueName = queuename
          @ExpansionBusyTime = expansionbusytime
          @ShrinkIdleTime = shrinkidletime
          @EnableAutoExpansion = enableautoexpansion
          @EnableAutoShrink = enableautoshrink
          @DryRun = dryrun
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @QueueName = params['QueueName']
          @ExpansionBusyTime = params['ExpansionBusyTime']
          @ShrinkIdleTime = params['ShrinkIdleTime']
          @EnableAutoExpansion = params['EnableAutoExpansion']
          @EnableAutoShrink = params['EnableAutoShrink']
          @DryRun = params['DryRun']
        end
      end

      # BindAutoScalingGroup返回参数结构体
      class BindAutoScalingGroupResponse < TencentCloud::Common::AbstractModel
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

      # 描述CFS文件系统版本和挂载信息
      class CFSOption < TencentCloud::Common::AbstractModel
        # @param LocalPath: 文件系统本地挂载路径
        # @type LocalPath: String
        # @param RemotePath: 文件系统远程挂载ip及路径
        # @type RemotePath: String
        # @param Protocol: 文件系统协议类型，默认值NFS 3.0。
        # <li>NFS 3.0。
        # <li>NFS 4.0。
        # <li>TURBO。
        # @type Protocol: String
        # @param StorageType: 文件系统存储类型，默认值SD；其中 SD 为通用标准型标准型存储， HP为通用性能型存储， TB为turbo标准型， TP 为turbo性能型。
        # @type StorageType: String

        attr_accessor :LocalPath, :RemotePath, :Protocol, :StorageType

        def initialize(localpath=nil, remotepath=nil, protocol=nil, storagetype=nil)
          @LocalPath = localpath
          @RemotePath = remotepath
          @Protocol = protocol
          @StorageType = storagetype
        end

        def deserialize(params)
          @LocalPath = params['LocalPath']
          @RemotePath = params['RemotePath']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
        end
      end

      # 集群概览信息。
      class ClusterOverview < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param ClusterStatus: 集群状态。取值范围：<br><li>PENDING：创建中<br><li>INITING：初始化中<br><li>INIT_FAILED：初始化失败<br><li>RUNNING：运行中<br><li>TERMINATING：销毁中
        # @type ClusterStatus: String
        # @param ClusterName: 集群名称。
        # @type ClusterName: String
        # @param Placement: 集群位置信息。
        # @type Placement: :class:`Tencentcloud::Thpc.v20211109.models.Placement`
        # @param CreateTime: 集群创建时间。
        # @type CreateTime: String
        # @param SchedulerType: 集群调度器。
        # @type SchedulerType: String
        # @param ComputeNodeCount: 计算节点数量。
        # @type ComputeNodeCount: Integer
        # @param ComputeNodeSet: 计算节点概览。
        # @type ComputeNodeSet: Array
        # @param ManagerNodeCount: 管控节点数量。
        # @type ManagerNodeCount: Integer
        # @param ManagerNodeSet: 管控节点概览。
        # @type ManagerNodeSet: Array
        # @param LoginNodeSet: 登录节点概览。
        # @type LoginNodeSet: Array
        # @param LoginNodeCount: 登录节点数量。
        # @type LoginNodeCount: Integer

        attr_accessor :ClusterId, :ClusterStatus, :ClusterName, :Placement, :CreateTime, :SchedulerType, :ComputeNodeCount, :ComputeNodeSet, :ManagerNodeCount, :ManagerNodeSet, :LoginNodeSet, :LoginNodeCount

        def initialize(clusterid=nil, clusterstatus=nil, clustername=nil, placement=nil, createtime=nil, schedulertype=nil, computenodecount=nil, computenodeset=nil, managernodecount=nil, managernodeset=nil, loginnodeset=nil, loginnodecount=nil)
          @ClusterId = clusterid
          @ClusterStatus = clusterstatus
          @ClusterName = clustername
          @Placement = placement
          @CreateTime = createtime
          @SchedulerType = schedulertype
          @ComputeNodeCount = computenodecount
          @ComputeNodeSet = computenodeset
          @ManagerNodeCount = managernodecount
          @ManagerNodeSet = managernodeset
          @LoginNodeSet = loginnodeset
          @LoginNodeCount = loginnodecount
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterStatus = params['ClusterStatus']
          @ClusterName = params['ClusterName']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @CreateTime = params['CreateTime']
          @SchedulerType = params['SchedulerType']
          @ComputeNodeCount = params['ComputeNodeCount']
          unless params['ComputeNodeSet'].nil?
            @ComputeNodeSet = []
            params['ComputeNodeSet'].each do |i|
              computenodeoverview_tmp = ComputeNodeOverview.new
              computenodeoverview_tmp.deserialize(i)
              @ComputeNodeSet << computenodeoverview_tmp
            end
          end
          @ManagerNodeCount = params['ManagerNodeCount']
          unless params['ManagerNodeSet'].nil?
            @ManagerNodeSet = []
            params['ManagerNodeSet'].each do |i|
              managernodeoverview_tmp = ManagerNodeOverview.new
              managernodeoverview_tmp.deserialize(i)
              @ManagerNodeSet << managernodeoverview_tmp
            end
          end
          unless params['LoginNodeSet'].nil?
            @LoginNodeSet = []
            params['LoginNodeSet'].each do |i|
              loginnodeoverview_tmp = LoginNodeOverview.new
              loginnodeoverview_tmp.deserialize(i)
              @LoginNodeSet << loginnodeoverview_tmp
            end
          end
          @LoginNodeCount = params['LoginNodeCount']
        end
      end

      # 计算节点信息。
      class ComputeNode < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20211109.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20211109.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20211109.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # 最多支持60个字符。
        # @type InstanceName: String

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName

        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceName = params['InstanceName']
        end
      end

      # 计算节点概览。
      class ComputeNodeOverview < TencentCloud::Common::AbstractModel
        # @param NodeId: 计算节点ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String

        attr_accessor :NodeId

        def initialize(nodeid=nil)
          @NodeId = nodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 集群中实例所在的位置。
        # @type Placement: :class:`Tencentcloud::Thpc.v20211109.models.Placement`
        # @param ManagerNode: 指定管理节点。
        # @type ManagerNode: :class:`Tencentcloud::Thpc.v20211109.models.ManagerNode`
        # @param ManagerNodeCount: 指定管理节点的数量。默认取值：1。取值范围：1～2。
        # @type ManagerNodeCount: Integer
        # @param ComputeNode: 指定计算节点。
        # @type ComputeNode: :class:`Tencentcloud::Thpc.v20211109.models.ComputeNode`
        # @param ComputeNodeCount: 指定计算节点的数量。默认取值：0。
        # @type ComputeNodeCount: Integer
        # @param SchedulerType: 调度器类型。<br><li>SGE：SGE调度器。<br><li>SLURM：SLURM调度器。
        # @type SchedulerType: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前仅支持公有镜像。
        # @type ImageId: String
        # @param VirtualPrivateCloud: 私有网络相关信息配置。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Thpc.v20211109.models.VirtualPrivateCloud`
        # @param LoginSettings: 集群登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Thpc.v20211109.models.LoginSettings`
        # @param SecurityGroupIds: 集群中实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId.
        # false（默认）：发送正常请求，通过检查后直接创建实例
        # @type DryRun: Boolean
        # @param AccountType: 域名字服务类型。默认值：NIS
        # <li>NIS：NIS域名字服务。
        # @type AccountType: String
        # @param ClusterName: 集群显示名称。
        # @type ClusterName: String
        # @param StorageOption: 集群存储选项
        # @type StorageOption: :class:`Tencentcloud::Thpc.v20211109.models.StorageOption`
        # @param LoginNode: 已废弃。
        # 指定登录节点。
        # @type LoginNode: Array
        # @param LoginNodeCount: 已废弃。
        # 指定登录节点的数量。默认取值：0。取值范围：0～10。
        # @type LoginNodeCount: Integer
        # @param Tags: 创建集群时同时绑定的标签对说明。
        # @type Tags: Array

        attr_accessor :Placement, :ManagerNode, :ManagerNodeCount, :ComputeNode, :ComputeNodeCount, :SchedulerType, :ImageId, :VirtualPrivateCloud, :LoginSettings, :SecurityGroupIds, :ClientToken, :DryRun, :AccountType, :ClusterName, :StorageOption, :LoginNode, :LoginNodeCount, :Tags

        def initialize(placement=nil, managernode=nil, managernodecount=nil, computenode=nil, computenodecount=nil, schedulertype=nil, imageid=nil, virtualprivatecloud=nil, loginsettings=nil, securitygroupids=nil, clienttoken=nil, dryrun=nil, accounttype=nil, clustername=nil, storageoption=nil, loginnode=nil, loginnodecount=nil, tags=nil)
          @Placement = placement
          @ManagerNode = managernode
          @ManagerNodeCount = managernodecount
          @ComputeNode = computenode
          @ComputeNodeCount = computenodecount
          @SchedulerType = schedulertype
          @ImageId = imageid
          @VirtualPrivateCloud = virtualprivatecloud
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @ClientToken = clienttoken
          @DryRun = dryrun
          @AccountType = accounttype
          @ClusterName = clustername
          @StorageOption = storageoption
          @LoginNode = loginnode
          @LoginNodeCount = loginnodecount
          @Tags = tags
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['ManagerNode'].nil?
            @ManagerNode = ManagerNode.new
            @ManagerNode.deserialize(params['ManagerNode'])
          end
          @ManagerNodeCount = params['ManagerNodeCount']
          unless params['ComputeNode'].nil?
            @ComputeNode = ComputeNode.new
            @ComputeNode.deserialize(params['ComputeNode'])
          end
          @ComputeNodeCount = params['ComputeNodeCount']
          @SchedulerType = params['SchedulerType']
          @ImageId = params['ImageId']
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
          @AccountType = params['AccountType']
          @ClusterName = params['ClusterName']
          unless params['StorageOption'].nil?
            @StorageOption = StorageOption.new
            @StorageOption.deserialize(params['StorageOption'])
          end
          unless params['LoginNode'].nil?
            @LoginNode = []
            params['LoginNode'].each do |i|
              loginnode_tmp = LoginNode.new
              loginnode_tmp.deserialize(i)
              @LoginNode << loginnode_tmp
            end
          end
          @LoginNodeCount = params['LoginNodeCount']
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

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId

        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # 描述了数据盘的信息
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskSize: 数据盘大小，单位：GB。最小调整步长为10G，不同数据盘类型取值范围不同，具体限制详见：[存储概述](https://cloud.tencent.com/document/product/213/4952)。默认值为0，表示不购买数据盘。更多限制详见产品文档。
        # @type DiskSize: Integer
        # @param DiskType: 数据盘类型。数据盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br><li>LOCAL_BASIC：本地硬盘<br><li>LOCAL_SSD：本地SSD硬盘<br><li>LOCAL_NVME：本地NVME硬盘，与InstanceType强相关，不支持指定<br><li>LOCAL_PRO：本地HDD硬盘，与InstanceType强相关，不支持指定<br><li>CLOUD_BASIC：普通云硬盘<br><li>CLOUD_PREMIUM：高性能云硬盘<br><li>CLOUD_SSD：SSD云硬盘<br><li>CLOUD_HSSD：增强型SSD云硬盘<br><li>CLOUD_TSSD：极速型SSD云硬盘<br><br>默认取值：LOCAL_BASIC。
        # @type DiskType: String

        attr_accessor :DiskSize, :DiskType

        def initialize(disksize=nil, disktype=nil)
          @DiskSize = disksize
          @DiskType = disktype
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
        end
      end

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteCluster返回参数结构体
      class DeleteClusterResponse < TencentCloud::Common::AbstractModel
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

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表。通过该参数可以指定需要查询信息的集群列表。<br>如果您不指定该参数，则返回Limit数量以内的集群信息。
        # @type ClusterIds: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ClusterIds, :Offset, :Limit

        def initialize(clusterids=nil, offset=nil, limit=nil)
          @ClusterIds = clusterids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param ClusterSet: 集群概览信息列表。
        # @type ClusterSet: Array
        # @param TotalCount: 集群数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterSet, :TotalCount, :RequestId

        def initialize(clusterset=nil, totalcount=nil, requestid=nil)
          @ClusterSet = clusterset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              clusteroverview_tmp = ClusterOverview.new
              clusteroverview_tmp.deserialize(i)
              @ClusterSet << clusteroverview_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 描述GooseFS挂载信息
      class GooseFSOption < TencentCloud::Common::AbstractModel
        # @param LocalPath: 文件系统本地挂载路径
        # @type LocalPath: String
        # @param RemotePath: 文件系统远程挂载路径
        # @type RemotePath: String
        # @param Masters: 文件系统master的ip和端口
        # @type Masters: Array

        attr_accessor :LocalPath, :RemotePath, :Masters

        def initialize(localpath=nil, remotepath=nil, masters=nil)
          @LocalPath = localpath
          @RemotePath = remotepath
          @Masters = masters
        end

        def deserialize(params)
          @LocalPath = params['LocalPath']
          @RemotePath = params['RemotePath']
          @Masters = params['Masters']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36, 48, 60。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String

        attr_accessor :Period, :RenewFlag

        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 描述了实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。取值范围：
        # BANDWIDTH_PREPAID：预付费按带宽结算
        # TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费
        # BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费
        # BANDWIDTH_PACKAGE：带宽包用户
        # 默认取值：非带宽包用户默认与子机付费类型保持一致。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见购买网络带宽。
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # 登录节点信息。
      class LoginNode < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20211109.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: Array
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: Array
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # 最多支持60个字符。
        # @type InstanceName: String

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName

        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = []
            params['SystemDisk'].each do |i|
              systemdisk_tmp = SystemDisk.new
              systemdisk_tmp.deserialize(i)
              @SystemDisk << systemdisk_tmp
            end
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = []
            params['InternetAccessible'].each do |i|
              internetaccessible_tmp = InternetAccessible.new
              internetaccessible_tmp.deserialize(i)
              @InternetAccessible << internetaccessible_tmp
            end
          end
          @InstanceName = params['InstanceName']
        end
      end

      # 登录节点概览。
      class LoginNodeOverview < TencentCloud::Common::AbstractModel
        # @param NodeId: 登录节点ID。
        # @type NodeId: String

        attr_accessor :NodeId

        def initialize(nodeid=nil)
          @NodeId = nodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
        end
      end

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：<br><li>Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) \` ~ ! @ # $ % ^ & *  - + = | { } [ ] : ; ' , . ? / ]中的特殊符号。<br><li>Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) \` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? /]中的特殊符号。<br><br>若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        # @type Password: String

        attr_accessor :Password

        def initialize(password=nil)
          @Password = password
        end

        def deserialize(params)
          @Password = params['Password']
        end
      end

      # 管控节点信息
      class ManagerNode < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20211109.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20211109.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20211109.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # </li><li>购买多个节点，如果指定模式串`{R:x}`，表示生成数字[`[x, x+n-1]`，其中`n`表示购买节点的数量，例如`server_{R:3}`，购买1个时，节点显示名称为`server_3`；购买2个时，节点显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。
        # 购买多个节点，如果不指定模式串，则在节点显示名称添加后缀`1、2...n`，其中`n`表示购买节点的数量，例如`server_`，购买2个时，节点显示名称分别为`server_1`，`server_2`。</li><li>
        # 最多支持60个字符（包含模式串）。
        # @type InstanceName: String

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName

        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceName = params['InstanceName']
        end
      end

      # 管控节点概览。
      class ManagerNodeOverview < TencentCloud::Common::AbstractModel
        # @param NodeId: 管控节点ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String

        attr_accessor :NodeId

        def initialize(nodeid=nil)
          @NodeId = nodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
        end
      end

      # 描述了实例的抽象位置
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属的可用区名称。该参数可以通过调用  [DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        # @type Zone: String

        attr_accessor :Zone

        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # 描述集群文件系统选项
      class StorageOption < TencentCloud::Common::AbstractModel
        # @param CFSOptions: 集群挂载CFS文件系统选项
        # @type CFSOptions: Array
        # @param GooseFSOptions: 集群挂在GooseFS文件系统选项
        # @type GooseFSOptions: Array

        attr_accessor :CFSOptions, :GooseFSOptions

        def initialize(cfsoptions=nil, goosefsoptions=nil)
          @CFSOptions = cfsoptions
          @GooseFSOptions = goosefsoptions
        end

        def deserialize(params)
          unless params['CFSOptions'].nil?
            @CFSOptions = []
            params['CFSOptions'].each do |i|
              cfsoption_tmp = CFSOption.new
              cfsoption_tmp.deserialize(i)
              @CFSOptions << cfsoption_tmp
            end
          end
          unless params['GooseFSOptions'].nil?
            @GooseFSOptions = []
            params['GooseFSOptions'].each do |i|
              goosefsoption_tmp = GooseFSOption.new
              goosefsoption_tmp.deserialize(i)
              @GooseFSOptions << goosefsoption_tmp
            end
          end
        end
      end

      # 描述了操作系统所在块设备即系统盘的信息
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。系统盘类型限制详见存储概述。取值范围：
        # LOCAL_BASIC：本地硬盘
        # LOCAL_SSD：本地SSD硬盘
        # CLOUD_BASIC：普通云硬盘
        # CLOUD_SSD：SSD云硬盘
        # CLOUD_PREMIUM：高性能云硬盘

        # 默认取值：当前有库存的硬盘类型。
        # @type DiskType: String
        # @param DiskSize: 系统盘大小，单位：GB。默认值为 50
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize

        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

      # 标签键值对。
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

      # 描述了VPC相关信息
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID，形如`vpc-xxx`。有效的VpcId可通过登录[控制台](https://console.cloud.tencent.com/vpc/vpc?rid=1)查询；也可以调用接口 [DescribeVpcEx](/document/api/215/1372) ，从接口返回中的`unVpcId`字段获取。若在创建子机时VpcId与SubnetId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如`subnet-xxx`。有效的私有网络子网ID可通过登录[控制台](https://console.cloud.tencent.com/vpc/subnet?rid=1)查询；也可以调用接口  [DescribeSubnets](/document/api/215/15784) ，从接口返回中的`unSubnetId`字段获取。若在创建子机时SubnetId与VpcId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId

        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end

