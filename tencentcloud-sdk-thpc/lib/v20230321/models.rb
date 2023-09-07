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
    module V20230321
      # AddClusterStorageOption请求参数结构体
      class AddClusterStorageOptionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param StorageOption: 集群存储选项。
        # @type StorageOption: :class:`Tencentcloud::Thpc.v20230321.models.StorageOption`

        attr_accessor :ClusterId, :StorageOption

        def initialize(clusterid=nil, storageoption=nil)
          @ClusterId = clusterid
          @StorageOption = storageoption
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['StorageOption'].nil?
            @StorageOption = StorageOption.new
            @StorageOption.deserialize(params['StorageOption'])
          end
        end
      end

      # AddClusterStorageOption返回参数结构体
      class AddClusterStorageOptionResponse < TencentCloud::Common::AbstractModel
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

      # AddNodes请求参数结构体
      class AddNodesRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 集群中实例所在的位置。
        # @type Placement: :class:`Tencentcloud::Thpc.v20230321.models.Placement`
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param VirtualPrivateCloud: 私有网络相关信息配置。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Thpc.v20230321.models.VirtualPrivateCloud`
        # @param Count: 添加节点数量。
        # @type Count: Integer
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前仅支持公有镜像和特定自定义镜像。
        # @type ImageId: String
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20230321.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。<br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20230321.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20230321.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。
        # 不指定节点显示名称则默认显示‘未命名’。
        # 最多支持60个字符。
        # @type InstanceName: String
        # @param LoginSettings: 集群登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Thpc.v20230321.models.LoginSettings`
        # @param SecurityGroupIds: 集群中实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param QueueName: 队列名称。不指定则为默认队列。<li>SLURM默认队列为：compute。<li>SGE默认队列为：all.q。
        # @type QueueName: String
        # @param NodeRole: 添加节点角色。默认值：Compute<br><li>Compute：计算节点。<br><li>Login：登录节点。
        # @type NodeRole: String
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId.
        # false（默认）：发送正常请求，通过检查后直接创建实例
        # @type DryRun: Boolean
        # @param NodeType: 添加节点类型。默认取值：STATIC。<li>STATIC：静态节点，不会参与弹性伸缩流程。<li>DYNAMIC：弹性节点，会被弹性缩容的节点。管控节点和登录节点不支持此参数。
        # @type NodeType: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer

        attr_accessor :Placement, :ClusterId, :VirtualPrivateCloud, :Count, :ImageId, :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName, :LoginSettings, :SecurityGroupIds, :ClientToken, :QueueName, :NodeRole, :DryRun, :NodeType, :ProjectId

        def initialize(placement=nil, clusterid=nil, virtualprivatecloud=nil, count=nil, imageid=nil, instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil, loginsettings=nil, securitygroupids=nil, clienttoken=nil, queuename=nil, noderole=nil, dryrun=nil, nodetype=nil, projectid=nil)
          @Placement = placement
          @ClusterId = clusterid
          @VirtualPrivateCloud = virtualprivatecloud
          @Count = count
          @ImageId = imageid
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @ClientToken = clienttoken
          @QueueName = queuename
          @NodeRole = noderole
          @DryRun = dryrun
          @NodeType = nodetype
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ClusterId = params['ClusterId']
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @Count = params['Count']
          @ImageId = params['ImageId']
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
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @ClientToken = params['ClientToken']
          @QueueName = params['QueueName']
          @NodeRole = params['NodeRole']
          @DryRun = params['DryRun']
          @NodeType = params['NodeType']
          @ProjectId = params['ProjectId']
        end
      end

      # AddNodes返回参数结构体
      class AddNodesResponse < TencentCloud::Common::AbstractModel
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

      # AddQueue请求参数结构体
      class AddQueueRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param QueueName: 队列名称。<br><li>最多支持32个字符。
        # @type QueueName: String

        attr_accessor :ClusterId, :QueueName

        def initialize(clusterid=nil, queuename=nil)
          @ClusterId = clusterid
          @QueueName = queuename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @QueueName = params['QueueName']
        end
      end

      # AddQueue返回参数结构体
      class AddQueueResponse < TencentCloud::Common::AbstractModel
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
        # @param LocalPath: 文件系统本地挂载路径。
        # @type LocalPath: String
        # @param RemotePath: 文件系统远程挂载ip及路径。
        # @type RemotePath: String
        # @param Protocol: 文件系统协议类型，默认值NFS 3.0。
        # <li>NFS 3.0。
        # <li>NFS 4.0。
        # <li>TURBO。
        # @type Protocol: String
        # @param StorageType: 文件系统存储类型，默认值SD；其中 SD 为通用标准型标准型存储， HP为通用性能型存储， TB为turbo标准型， TP 为turbo性能型。
        # @type StorageType: String
        # @param MountOption: 文件系统挂载挂载命令参数选项。

        # - NFS 3.0默认值：vers=3,nolock,proto=tcp,noresvport
        # - NFS 4.0默认值：vers=4.0,noresvport
        # - TURBO默认值：user_xattr
        # @type MountOption: String

        attr_accessor :LocalPath, :RemotePath, :Protocol, :StorageType, :MountOption

        def initialize(localpath=nil, remotepath=nil, protocol=nil, storagetype=nil, mountoption=nil)
          @LocalPath = localpath
          @RemotePath = remotepath
          @Protocol = protocol
          @StorageType = storagetype
          @MountOption = mountoption
        end

        def deserialize(params)
          @LocalPath = params['LocalPath']
          @RemotePath = params['RemotePath']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
          @MountOption = params['MountOption']
        end
      end

      # CFS存储选项概览信息。
      class CFSOptionOverview < TencentCloud::Common::AbstractModel
        # @param LocalPath: 文件系统本地挂载路径。
        # @type LocalPath: String
        # @param RemotePath: 文件系统远程挂载ip及路径。
        # @type RemotePath: String
        # @param Protocol: 文件系统协议类型。
        # <li>NFS 3.0。
        # <li>NFS 4.0。
        # <li>TURBO。
        # @type Protocol: String
        # @param StorageType: 文件系统存储类型，默认值SD；其中 SD 为通用标准型标准型存储， HP为通用性能型存储， TB为turbo标准型， TP 为turbo性能型。
        # @type StorageType: String
        # @param MountOption: 文件系统挂载命令参数选项。
        # @type MountOption: String

        attr_accessor :LocalPath, :RemotePath, :Protocol, :StorageType, :MountOption

        def initialize(localpath=nil, remotepath=nil, protocol=nil, storagetype=nil, mountoption=nil)
          @LocalPath = localpath
          @RemotePath = remotepath
          @Protocol = protocol
          @StorageType = storagetype
          @MountOption = mountoption
        end

        def deserialize(params)
          @LocalPath = params['LocalPath']
          @RemotePath = params['RemotePath']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
          @MountOption = params['MountOption']
        end
      end

      # 符合条件的集群活动信息。
      class ClusterActivity < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param ActivityId: 集群活动ID。
        # @type ActivityId: String
        # @param ActivityType: 集群活动类型。取值范围：<br><li>CreateAndAddNodes：创建实例并添加进集群<br><li>RemoveNodesFromCluster：从集群移除实例<br><li>TerminateNodes：销毁实例<br><li>MountStorageOption：增加挂载选项并进行挂载<br><li>UmountStorageOption：删除集群挂载存储选项并解挂载
        # @type ActivityType: String
        # @param ActivityStatus: 集群活动状态。取值范围：<br><li>PENDING：等待运行<br><li>RUNNING：运行中<br><li>SUCCESSFUL：活动成功<br><li>PARTIALLY_SUCCESSFUL：活动部分成功<br><li>FAILED：活动失败
        # @type ActivityStatus: String
        # @param ActivityStatusCode: 集群活动状态码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityStatusCode: String
        # @param ResultDetail: 集群活动结果详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultDetail: String
        # @param Cause: 集群活动起因。
        # @type Cause: String
        # @param Description: 集群活动描述。
        # @type Description: String
        # @param RelatedNodeActivitySet: 集群活动相关节点活动集合。
        # @type RelatedNodeActivitySet: Array
        # @param StartTime: 集群活动开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 集群活动结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :ClusterId, :ActivityId, :ActivityType, :ActivityStatus, :ActivityStatusCode, :ResultDetail, :Cause, :Description, :RelatedNodeActivitySet, :StartTime, :EndTime

        def initialize(clusterid=nil, activityid=nil, activitytype=nil, activitystatus=nil, activitystatuscode=nil, resultdetail=nil, cause=nil, description=nil, relatednodeactivityset=nil, starttime=nil, endtime=nil)
          @ClusterId = clusterid
          @ActivityId = activityid
          @ActivityType = activitytype
          @ActivityStatus = activitystatus
          @ActivityStatusCode = activitystatuscode
          @ResultDetail = resultdetail
          @Cause = cause
          @Description = description
          @RelatedNodeActivitySet = relatednodeactivityset
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ActivityId = params['ActivityId']
          @ActivityType = params['ActivityType']
          @ActivityStatus = params['ActivityStatus']
          @ActivityStatusCode = params['ActivityStatusCode']
          @ResultDetail = params['ResultDetail']
          @Cause = params['Cause']
          @Description = params['Description']
          unless params['RelatedNodeActivitySet'].nil?
            @RelatedNodeActivitySet = []
            params['RelatedNodeActivitySet'].each do |i|
              nodeactivity_tmp = NodeActivity.new
              nodeactivity_tmp.deserialize(i)
              @RelatedNodeActivitySet << nodeactivity_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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
        # @type Placement: :class:`Tencentcloud::Thpc.v20230321.models.Placement`
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
        # @param AutoScalingType: 弹性伸缩类型。<br><li>THPC_AS：集群自动扩缩容由THPC产品内部实现。<br><li>AS：集群自动扩缩容由[弹性伸缩](https://cloud.tencent.com/document/product/377/3154)产品实现。
        # @type AutoScalingType: String
        # @param VpcId: 集群所属私有网络ID。
        # @type VpcId: String

        attr_accessor :ClusterId, :ClusterStatus, :ClusterName, :Placement, :CreateTime, :SchedulerType, :ComputeNodeCount, :ComputeNodeSet, :ManagerNodeCount, :ManagerNodeSet, :LoginNodeSet, :LoginNodeCount, :AutoScalingType, :VpcId

        def initialize(clusterid=nil, clusterstatus=nil, clustername=nil, placement=nil, createtime=nil, schedulertype=nil, computenodecount=nil, computenodeset=nil, managernodecount=nil, managernodeset=nil, loginnodeset=nil, loginnodecount=nil, autoscalingtype=nil, vpcid=nil)
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
          @AutoScalingType = autoscalingtype
          @VpcId = vpcid
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
          @AutoScalingType = params['AutoScalingType']
          @VpcId = params['VpcId']
        end
      end

      # 计算节点信息。
      class ComputeNode < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20230321.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20230321.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20230321.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # 最多支持60个字符。
        # @type InstanceName: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName, :ProjectId

        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil, projectid=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
          @ProjectId = projectid
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
          @ProjectId = params['ProjectId']
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
        # @type Placement: :class:`Tencentcloud::Thpc.v20230321.models.Placement`
        # @param ManagerNode: 指定管理节点。
        # @type ManagerNode: :class:`Tencentcloud::Thpc.v20230321.models.ManagerNode`
        # @param ManagerNodeCount: 指定管理节点的数量。默认取值：1。取值范围：1～2。
        # @type ManagerNodeCount: Integer
        # @param ComputeNode: 指定计算节点。
        # @type ComputeNode: :class:`Tencentcloud::Thpc.v20230321.models.ComputeNode`
        # @param ComputeNodeCount: 指定计算节点的数量。默认取值：0。
        # @type ComputeNodeCount: Integer
        # @param SchedulerType: 调度器类型。默认取值：SLURM。<br><li>SGE：SGE调度器。<br><li>SLURM：SLURM调度器。
        # @type SchedulerType: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前支持部分公有镜像和自定义镜像。
        # @type ImageId: String
        # @param VirtualPrivateCloud: 私有网络相关信息配置。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Thpc.v20230321.models.VirtualPrivateCloud`
        # @param LoginSettings: 集群登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Thpc.v20230321.models.LoginSettings`
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
        # @param AccountType: 域名字服务类型。默认取值：NIS。
        # <li>NIS：NIS域名字服务。
        # @type AccountType: String
        # @param ClusterName: 集群显示名称。
        # @type ClusterName: String
        # @param StorageOption: 集群存储选项
        # @type StorageOption: :class:`Tencentcloud::Thpc.v20230321.models.StorageOption`
        # @param LoginNode: 指定登录节点。
        # @type LoginNode: :class:`Tencentcloud::Thpc.v20230321.models.LoginNode`
        # @param LoginNodeCount: 指定登录节点的数量。默认取值：0。取值范围：0～10。
        # @type LoginNodeCount: Integer
        # @param Tags: 创建集群时同时绑定的标签对说明。
        # @type Tags: Array
        # @param AutoScalingType: 弹性伸缩类型。默认值：THPC_AS<br><li>THPC_AS：集群自动扩缩容由THPC产品内部实现。<br><li>AS：集群自动扩缩容由[弹性伸缩](https://cloud.tencent.com/document/product/377/3154)产品实现。
        # @type AutoScalingType: String
        # @param InitNodeScripts: 节点初始化脚本信息列表。
        # @type InitNodeScripts: Array

        attr_accessor :Placement, :ManagerNode, :ManagerNodeCount, :ComputeNode, :ComputeNodeCount, :SchedulerType, :ImageId, :VirtualPrivateCloud, :LoginSettings, :SecurityGroupIds, :ClientToken, :DryRun, :AccountType, :ClusterName, :StorageOption, :LoginNode, :LoginNodeCount, :Tags, :AutoScalingType, :InitNodeScripts

        def initialize(placement=nil, managernode=nil, managernodecount=nil, computenode=nil, computenodecount=nil, schedulertype=nil, imageid=nil, virtualprivatecloud=nil, loginsettings=nil, securitygroupids=nil, clienttoken=nil, dryrun=nil, accounttype=nil, clustername=nil, storageoption=nil, loginnode=nil, loginnodecount=nil, tags=nil, autoscalingtype=nil, initnodescripts=nil)
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
          @AutoScalingType = autoscalingtype
          @InitNodeScripts = initnodescripts
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
            @LoginNode = LoginNode.new
            @LoginNode.deserialize(params['LoginNode'])
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
          @AutoScalingType = params['AutoScalingType']
          unless params['InitNodeScripts'].nil?
            @InitNodeScripts = []
            params['InitNodeScripts'].each do |i|
              nodescript_tmp = NodeScript.new
              nodescript_tmp.deserialize(i)
              @InitNodeScripts << nodescript_tmp
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param DiskType: 数据盘类型。数据盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br><li>LOCAL_NVME：本地NVME硬盘，与InstanceType强相关，不支持指定<br><li>LOCAL_PRO：本地HDD硬盘，与InstanceType强相关，不支持指定<br><li>CLOUD_BASIC：普通云硬盘<br><li>CLOUD_PREMIUM：高性能云硬盘<br><li>CLOUD_SSD：SSD云硬盘<br><li>CLOUD_HSSD：增强型SSD云硬盘<br><li>CLOUD_TSSD：极速型SSD云硬盘<br><li>CLOUD_BSSD：通用型SSD云硬盘
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteClusterStorageOption请求参数结构体
      class DeleteClusterStorageOptionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param LocalPath: 本地挂载路径。
        # @type LocalPath: String

        attr_accessor :ClusterId, :LocalPath

        def initialize(clusterid=nil, localpath=nil)
          @ClusterId = clusterid
          @LocalPath = localpath
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @LocalPath = params['LocalPath']
        end
      end

      # DeleteClusterStorageOption返回参数结构体
      class DeleteClusterStorageOptionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNodes请求参数结构体
      class DeleteNodesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param NodeIds: 节点ID。
        # @type NodeIds: Array

        attr_accessor :ClusterId, :NodeIds

        def initialize(clusterid=nil, nodeids=nil)
          @ClusterId = clusterid
          @NodeIds = nodeids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodeIds = params['NodeIds']
        end
      end

      # DeleteNodes返回参数结构体
      class DeleteNodesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteQueue请求参数结构体
      class DeleteQueueRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param QueueName: 队列名称。<br><li>最多支持32个字符。
        # @type QueueName: String

        attr_accessor :ClusterId, :QueueName

        def initialize(clusterid=nil, queuename=nil)
          @ClusterId = clusterid
          @QueueName = queuename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @QueueName = params['QueueName']
        end
      end

      # DeleteQueue返回参数结构体
      class DeleteQueueResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAutoScalingConfiguration请求参数结构体
      class DescribeAutoScalingConfigurationRequest < TencentCloud::Common::AbstractModel
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

      # DescribeAutoScalingConfiguration返回参数结构体
      class DescribeAutoScalingConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param ExpansionBusyTime: 任务连续等待时间，队列的任务处于连续等待的时间。单位秒。
        # @type ExpansionBusyTime: Integer
        # @param ShrinkIdleTime: 节点连续空闲（未运行作业）时间，一个节点连续处于空闲状态时间。
        # @type ShrinkIdleTime: Integer
        # @param QueueConfigs: 扩容队列配置概览列表。
        # @type QueueConfigs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :ExpansionBusyTime, :ShrinkIdleTime, :QueueConfigs, :RequestId

        def initialize(clusterid=nil, expansionbusytime=nil, shrinkidletime=nil, queueconfigs=nil, requestid=nil)
          @ClusterId = clusterid
          @ExpansionBusyTime = expansionbusytime
          @ShrinkIdleTime = shrinkidletime
          @QueueConfigs = queueconfigs
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ExpansionBusyTime = params['ExpansionBusyTime']
          @ShrinkIdleTime = params['ShrinkIdleTime']
          unless params['QueueConfigs'].nil?
            @QueueConfigs = []
            params['QueueConfigs'].each do |i|
              queueconfigoverview_tmp = QueueConfigOverview.new
              queueconfigoverview_tmp.deserialize(i)
              @QueueConfigs << queueconfigoverview_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterActivities请求参数结构体
      class DescribeClusterActivitiesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。通过该参数指定需要查询活动历史记录的集群。
        # @type ClusterId: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ClusterId, :Offset, :Limit

        def initialize(clusterid=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClusterActivities返回参数结构体
      class DescribeClusterActivitiesResponse < TencentCloud::Common::AbstractModel
        # @param ClusterActivitySet: 集群活动历史记录列表。
        # @type ClusterActivitySet: Array
        # @param TotalCount: 集群活动历史记录数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterActivitySet, :TotalCount, :RequestId

        def initialize(clusteractivityset=nil, totalcount=nil, requestid=nil)
          @ClusterActivitySet = clusteractivityset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterActivitySet'].nil?
            @ClusterActivitySet = []
            params['ClusterActivitySet'].each do |i|
              clusteractivity_tmp = ClusterActivity.new
              clusteractivity_tmp.deserialize(i)
              @ClusterActivitySet << clusteractivity_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterStorageOption请求参数结构体
      class DescribeClusterStorageOptionRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClusterStorageOption返回参数结构体
      class DescribeClusterStorageOptionResponse < TencentCloud::Common::AbstractModel
        # @param StorageOption: 集群存储选项信息概览。
        # @type StorageOption: :class:`Tencentcloud::Thpc.v20230321.models.StorageOptionOverview`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StorageOption, :RequestId

        def initialize(storageoption=nil, requestid=nil)
          @StorageOption = storageoption
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StorageOption'].nil?
            @StorageOption = StorageOptionOverview.new
            @StorageOption.deserialize(params['StorageOption'])
          end
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

      # DescribeInitNodeScripts请求参数结构体
      class DescribeInitNodeScriptsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInitNodeScripts返回参数结构体
      class DescribeInitNodeScriptsResponse < TencentCloud::Common::AbstractModel
        # @param InitNodeScriptSet: 节点初始化脚本列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitNodeScriptSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InitNodeScriptSet, :RequestId

        def initialize(initnodescriptset=nil, requestid=nil)
          @InitNodeScriptSet = initnodescriptset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InitNodeScriptSet'].nil?
            @InitNodeScriptSet = []
            params['InitNodeScriptSet'].each do |i|
              nodescript_tmp = NodeScript.new
              nodescript_tmp.deserialize(i)
              @InitNodeScriptSet << nodescript_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodes请求参数结构体
      class DescribeNodesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param Filters: <li><strong>queue-name</strong></li> <p style="padding-left: 30px;">按照【<strong>队列名称</strong>】进行过滤。队列名称形如：compute。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;"><li><strong>node-role</strong></li> <p style="padding-left: 30px;">按照【<strong>节点角色</strong>】进行过滤。节点角色形如：Manager。（Manager：管控节点。Compute：计算节点。Login：登录节点。ManagerBackup：备用管控节点。）</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;"><li><strong>node-type</strong></li> <p style="padding-left: 30px;">按照【<strong>节点类型</strong>】进行过滤。节点类型形如：STATIC。(STATIC：静态节点。DYNAMIC：弹性节点。)</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ClusterId, :Filters, :Offset, :Limit

        def initialize(clusterid=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeNodes返回参数结构体
      class DescribeNodesResponse < TencentCloud::Common::AbstractModel
        # @param NodeSet: 节点概览信息列表。
        # @type NodeSet: Array
        # @param TotalCount: 符合条件的节点数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeSet, :TotalCount, :RequestId

        def initialize(nodeset=nil, totalcount=nil, requestid=nil)
          @NodeSet = nodeset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              nodeoverview_tmp = NodeOverview.new
              nodeoverview_tmp.deserialize(i)
              @NodeSet << nodeoverview_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeQueues请求参数结构体
      class DescribeQueuesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ClusterId, :Offset, :Limit

        def initialize(clusterid=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeQueues返回参数结构体
      class DescribeQueuesResponse < TencentCloud::Common::AbstractModel
        # @param QueueSet: 队列概览信息列表。
        # @type QueueSet: Array
        # @param TotalCount: 符合条件的节点数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueSet, :TotalCount, :RequestId

        def initialize(queueset=nil, totalcount=nil, requestid=nil)
          @QueueSet = queueset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QueueSet'].nil?
            @QueueSet = []
            params['QueueSet'].each do |i|
              queueoverview_tmp = QueueOverview.new
              queueoverview_tmp.deserialize(i)
              @QueueSet << queueoverview_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 弹性扩容节点配置信息。
      class ExpansionNodeConfig < TencentCloud::Common::AbstractModel
        # @param Placement: 扩容实例所在的位置。
        # @type Placement: :class:`Tencentcloud::Thpc.v20230321.models.Placement`
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20230321.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param VirtualPrivateCloud: 私有网络相关信息配置。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Thpc.v20230321.models.VirtualPrivateCloud`
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer

        attr_accessor :Placement, :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :VirtualPrivateCloud, :ProjectId

        def initialize(placement=nil, instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, virtualprivatecloud=nil, projectid=nil)
          @Placement = placement
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @VirtualPrivateCloud = virtualprivatecloud
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @ProjectId = params['ProjectId']
        end
      end

      # 扩容节点配置信息概览。
      class ExpansionNodeConfigOverview < TencentCloud::Common::AbstractModel
        # @param InstanceType: 节点机型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param Placement: 扩容实例所在的位置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Placement: :class:`Tencentcloud::Thpc.v20230321.models.Placement`
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20230321.models.InstanceChargePrepaid`
        # @param VirtualPrivateCloud: 私有网络相关信息配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Thpc.v20230321.models.VirtualPrivateCloud`
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param InternetAccessible: 公网带宽相关信息设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20230321.models.InternetAccessible`
        # @param SystemDisk: 节点系统盘配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20230321.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisks: Array

        attr_accessor :InstanceType, :Placement, :InstanceChargeType, :InstanceChargePrepaid, :VirtualPrivateCloud, :ImageId, :InternetAccessible, :SystemDisk, :DataDisks

        def initialize(instancetype=nil, placement=nil, instancechargetype=nil, instancechargeprepaid=nil, virtualprivatecloud=nil, imageid=nil, internetaccessible=nil, systemdisk=nil, datadisks=nil)
          @InstanceType = instancetype
          @Placement = placement
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @VirtualPrivateCloud = virtualprivatecloud
          @ImageId = imageid
          @InternetAccessible = internetaccessible
          @SystemDisk = systemdisk
          @DataDisks = datadisks
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @ImageId = params['ImageId']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
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
        end
      end

      # >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 描述GooseFS挂载信息
      class GooseFSOption < TencentCloud::Common::AbstractModel
        # @param LocalPath: 文件系统本地挂载路径。
        # @type LocalPath: String
        # @param RemotePath: 文件系统远程挂载路径。
        # @type RemotePath: String
        # @param Masters: 文件系统master的ip和端口。
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

      # GooseFS存储选项概览信息。
      class GooseFSOptionOverview < TencentCloud::Common::AbstractModel
        # @param LocalPath: 文件系统本地挂载路径。
        # @type LocalPath: String
        # @param RemotePath: 文件系统远程挂载路径。
        # @type RemotePath: String
        # @param Masters: 文件系统master的ip和端口。
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

      # 描述GooseFSx挂载信息
      class GooseFSxOption < TencentCloud::Common::AbstractModel
        # @param Masters: 文件系统master的ip和端口列表。
        # @type Masters: Array
        # @param LocalPath: 文件系统的本地挂载路径。GooseFSx目前只支持挂载在/goosefsx/{文件系统ID}_proxy/目录下。
        # @type LocalPath: String

        attr_accessor :Masters, :LocalPath

        def initialize(masters=nil, localpath=nil)
          @Masters = masters
          @LocalPath = localpath
        end

        def deserialize(params)
          @Masters = params['Masters']
          @LocalPath = params['LocalPath']
        end
      end

      # GooseFSx存储选项概览信息。
      class GooseFSxOptionOverview < TencentCloud::Common::AbstractModel
        # @param Masters: 文件系统master的ip和端口列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Masters: Array
        # @param LocalPath: 文件系统的本地挂载路径。GooseFSx目前只支持挂载在/goosefsx/{文件系统ID}_proxy/目录下。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalPath: String

        attr_accessor :Masters, :LocalPath

        def initialize(masters=nil, localpath=nil)
          @Masters = masters
          @LocalPath = localpath
        end

        def deserialize(params)
          @Masters = params['Masters']
          @LocalPath = params['LocalPath']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36, 48, 60。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见购买网络带宽。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20230321.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20230321.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20230321.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # 最多支持60个字符。
        # @type InstanceName: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName, :ProjectId

        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil, projectid=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
          @ProjectId = projectid
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
          @ProjectId = params['ProjectId']
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
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20230321.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20230321.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20230321.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # </li><li>购买多个节点，如果指定模式串`{R:x}`，表示生成数字[`[x, x+n-1]`，其中`n`表示购买节点的数量，例如`server_{R:3}`，购买1个时，节点显示名称为`server_3`；购买2个时，节点显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。
        # 购买多个节点，如果不指定模式串，则在节点显示名称添加后缀`1、2...n`，其中`n`表示购买节点的数量，例如`server_`，购买2个时，节点显示名称分别为`server_1`，`server_2`。</li><li>
        # 最多支持60个字符（包含模式串）。
        # @type InstanceName: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName, :ProjectId

        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil, projectid=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
          @ProjectId = projectid
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
          @ProjectId = params['ProjectId']
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

      # ModifyInitNodeScripts请求参数结构体
      class ModifyInitNodeScriptsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param InitNodeScripts: 节点初始化脚本信息列表。
        # @type InitNodeScripts: Array

        attr_accessor :ClusterId, :InitNodeScripts

        def initialize(clusterid=nil, initnodescripts=nil)
          @ClusterId = clusterid
          @InitNodeScripts = initnodescripts
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['InitNodeScripts'].nil?
            @InitNodeScripts = []
            params['InitNodeScripts'].each do |i|
              nodescript_tmp = NodeScript.new
              nodescript_tmp.deserialize(i)
              @InitNodeScripts << nodescript_tmp
            end
          end
        end
      end

      # ModifyInitNodeScripts返回参数结构体
      class ModifyInitNodeScriptsResponse < TencentCloud::Common::AbstractModel
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

      # 节点活动信息。
      class NodeActivity < TencentCloud::Common::AbstractModel
        # @param NodeInstanceId: 节点活动所在的实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInstanceId: String
        # @param NodeActivityStatus: 节点活动状态。取值范围：<br><li>RUNNING：运行中<br><li>SUCCESSFUL：活动成功<br><li>FAILED：活动失败
        # @type NodeActivityStatus: String
        # @param NodeActivityStatusCode: 节点活动状态码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeActivityStatusCode: String
        # @param NodeActivityStatusReason: 节点活动状态原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeActivityStatusReason: String

        attr_accessor :NodeInstanceId, :NodeActivityStatus, :NodeActivityStatusCode, :NodeActivityStatusReason

        def initialize(nodeinstanceid=nil, nodeactivitystatus=nil, nodeactivitystatuscode=nil, nodeactivitystatusreason=nil)
          @NodeInstanceId = nodeinstanceid
          @NodeActivityStatus = nodeactivitystatus
          @NodeActivityStatusCode = nodeactivitystatuscode
          @NodeActivityStatusReason = nodeactivitystatusreason
        end

        def deserialize(params)
          @NodeInstanceId = params['NodeInstanceId']
          @NodeActivityStatus = params['NodeActivityStatus']
          @NodeActivityStatusCode = params['NodeActivityStatusCode']
          @NodeActivityStatusReason = params['NodeActivityStatusReason']
        end
      end

      # 节点概览信息。
      class NodeOverview < TencentCloud::Common::AbstractModel
        # @param InstanceId: 节点实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Zone: 节点所在可用区信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param NodeState: 节点状态。<br><li>SUBMITTED：已完成提交。<br><li>CREATING：创建中。<br><li>CREATED：完成创建。<br><li>INITING：初始化中。<br><li>INIT_FAILED：初始化失败。<br><li>RUNNING：运行中。<br><li>DELETING：销毁中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeState: String
        # @param ImageId: 镜像ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param QueueName: 节点所属队列名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueName: String
        # @param NodeRole: 节点角色。<br><li>Manager：管控节点。<br><li>Compute：计算节点。<br><li>Login：登录节点。<br><li>ManagerBackup：备用管控节点。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeRole: String
        # @param NodeType: 节点类型。<br><li>STATIC：静态节点。<br><li>DYNAMIC：弹性节点。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String

        attr_accessor :InstanceId, :Zone, :NodeState, :ImageId, :QueueName, :NodeRole, :NodeType

        def initialize(instanceid=nil, zone=nil, nodestate=nil, imageid=nil, queuename=nil, noderole=nil, nodetype=nil)
          @InstanceId = instanceid
          @Zone = zone
          @NodeState = nodestate
          @ImageId = imageid
          @QueueName = queuename
          @NodeRole = noderole
          @NodeType = nodetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
          @NodeState = params['NodeState']
          @ImageId = params['ImageId']
          @QueueName = params['QueueName']
          @NodeRole = params['NodeRole']
          @NodeType = params['NodeType']
        end
      end

      # 描述节点执行脚本信息。
      class NodeScript < TencentCloud::Common::AbstractModel
        # @param ScriptPath: 节点执行脚本获取地址。
        # 目前仅支持cos地址。地址最大长度：255。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptPath: String
        # @param Timeout: 脚本执行超时时间（包含拉取脚本的时间）。单位秒，默认值：30。取值范围：10～1200。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer

        attr_accessor :ScriptPath, :Timeout

        def initialize(scriptpath=nil, timeout=nil)
          @ScriptPath = scriptpath
          @Timeout = timeout
        end

        def deserialize(params)
          @ScriptPath = params['ScriptPath']
          @Timeout = params['Timeout']
        end
      end

      # 描述了实例的抽象位置
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属的可用区名称。该参数可以通过调用  [DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String

        attr_accessor :Zone

        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # 扩容队列配置。
      class QueueConfig < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名称。
        # @type QueueName: String
        # @param MinSize: 队列中弹性节点数量最小值。默认值：0。取值范围：0～200。
        # @type MinSize: Integer
        # @param MaxSize: 队列中弹性节点数量最大值。默认值：10。取值范围：0～200。
        # @type MaxSize: Integer
        # @param EnableAutoExpansion: 是否开启自动扩容。
        # @type EnableAutoExpansion: Boolean
        # @param EnableAutoShrink: 是否开启自动缩容。
        # @type EnableAutoShrink: Boolean
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前仅支持公有镜和特定自定义镜像。
        # @type ImageId: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20230321.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20230321.models.InternetAccessible`
        # @param ExpansionNodeConfigs: 扩容节点配置信息。
        # @type ExpansionNodeConfigs: Array
        # @param DesiredIdleNodeCapacity: 队列中期望的空闲节点数量（包含弹性节点和静态节点）。默认值：0。队列中，处于空闲状态的节点小于此值，集群会扩容弹性节点；处于空闲状态的节点大于此值，集群会缩容弹性节点。
        # @type DesiredIdleNodeCapacity: Integer
        # @param ScaleOutRatio: 扩容比例。默认值：100。取值范围：1～100。
        # 如果扩容比例为50，那么每轮只会扩容当前作业负载所需的50%数量的节点。
        # @type ScaleOutRatio: Integer
        # @param ScaleOutNodeThreshold: 比例扩容阈值。默认值：0。取值范围：0～200。
        # 当作业负载需要扩容节点数量大于此值，当前扩容轮次按照ScaleOutRatio配置的比例进行扩容。当作业负载需要扩容节点数量小于此值，当前扩容轮次扩容当前作业负载所需数量的节点。
        # 此参数配合ScaleOutRatio参数进行使用，用于比例扩容场景下，在作业负载所需节点数量较小时，加快收敛速度。
        # @type ScaleOutNodeThreshold: Integer
        # @param MaxNodesPerCycle: 每轮扩容最大节点个数。默认值：100。取值范围：1～100。
        # @type MaxNodesPerCycle: Integer
        # @param ScaleUpMemRatio: 扩容过程中，作业的内存在匹配实例机型时增大比例（不会影响作业提交的内存大小，只影响匹配计算过程）。<br/>
        # 针对场景：由于实例机型的总内存会大于实例内部的可用内存，16GB内存规格的实例，实例操作系统内的可用内存只有约14.9GB内存。假设此时提交一个需要15GB内存的作业，

        # - 当ScaleUpMemRatio=0时，会匹配到16GB内存规格的实例,但是由于操作系统内的可用内存为14.9GB小于作业所需的15GB，扩容出来的实例作业无法运行起来。
        # - 当ScaleUpMemRatio=10时，匹配实例规格会按照15*(1+10%)=16.5GB来进行实例规格匹配，则不会匹配到16GB的实例，而是更大内存规格的实例来保证作业能够被运行起来。
        # @type ScaleUpMemRatio: Integer

        attr_accessor :QueueName, :MinSize, :MaxSize, :EnableAutoExpansion, :EnableAutoShrink, :ImageId, :SystemDisk, :DataDisks, :InternetAccessible, :ExpansionNodeConfigs, :DesiredIdleNodeCapacity, :ScaleOutRatio, :ScaleOutNodeThreshold, :MaxNodesPerCycle, :ScaleUpMemRatio

        def initialize(queuename=nil, minsize=nil, maxsize=nil, enableautoexpansion=nil, enableautoshrink=nil, imageid=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, expansionnodeconfigs=nil, desiredidlenodecapacity=nil, scaleoutratio=nil, scaleoutnodethreshold=nil, maxnodespercycle=nil, scaleupmemratio=nil)
          @QueueName = queuename
          @MinSize = minsize
          @MaxSize = maxsize
          @EnableAutoExpansion = enableautoexpansion
          @EnableAutoShrink = enableautoshrink
          @ImageId = imageid
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @ExpansionNodeConfigs = expansionnodeconfigs
          @DesiredIdleNodeCapacity = desiredidlenodecapacity
          @ScaleOutRatio = scaleoutratio
          @ScaleOutNodeThreshold = scaleoutnodethreshold
          @MaxNodesPerCycle = maxnodespercycle
          @ScaleUpMemRatio = scaleupmemratio
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
          @EnableAutoExpansion = params['EnableAutoExpansion']
          @EnableAutoShrink = params['EnableAutoShrink']
          @ImageId = params['ImageId']
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
          unless params['ExpansionNodeConfigs'].nil?
            @ExpansionNodeConfigs = []
            params['ExpansionNodeConfigs'].each do |i|
              expansionnodeconfig_tmp = ExpansionNodeConfig.new
              expansionnodeconfig_tmp.deserialize(i)
              @ExpansionNodeConfigs << expansionnodeconfig_tmp
            end
          end
          @DesiredIdleNodeCapacity = params['DesiredIdleNodeCapacity']
          @ScaleOutRatio = params['ScaleOutRatio']
          @ScaleOutNodeThreshold = params['ScaleOutNodeThreshold']
          @MaxNodesPerCycle = params['MaxNodesPerCycle']
          @ScaleUpMemRatio = params['ScaleUpMemRatio']
        end
      end

      # 扩容队列配置概览。
      class QueueConfigOverview < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名称。
        # @type QueueName: String
        # @param MinSize: 队列中弹性节点数量最小值。取值范围0～200。
        # @type MinSize: Integer
        # @param MaxSize: 队列中弹性节点数量最大值。取值范围0～200。
        # @type MaxSize: Integer
        # @param EnableAutoExpansion: 是否开启自动扩容。
        # @type EnableAutoExpansion: Boolean
        # @param EnableAutoShrink: 是否开启自动缩容。
        # @type EnableAutoShrink: Boolean
        # @param ExpansionNodeConfigs: 扩容节点配置信息。
        # @type ExpansionNodeConfigs: Array
        # @param DesiredIdleNodeCapacity: 队列中期望的空闲节点数量（包含弹性节点和静态节点）。默认值：0。队列中，处于空闲状态的节点小于此值，集群会扩容弹性节点；处于空闲状态的节点大于此值，集群会缩容弹性节点。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredIdleNodeCapacity: Integer
        # @param ScaleOutRatio: 扩容比例。默认值：100。取值范围：1～100。
        # 如果扩容比例为50，那么每轮只会扩容当前作业负载所需的50%数量的节点。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleOutRatio: Integer
        # @param ScaleOutNodeThreshold: 比例扩容阈值。默认值：0。取值范围：0～200。
        # 当作业负载需要扩容节点数量大于此值，当前扩容轮次按照ScaleOutRatio配置的的比例进行扩容。当作业负载需要扩容节点数量小于此值，当前扩容轮次扩容当前作业负载所需数量的节点。
        # 此参数配合ScaleOutRatio参数进行使用，用于比例扩容场景下，在作业负载所需节点数量较小时，加快收敛速度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleOutNodeThreshold: Integer
        # @param MaxNodesPerCycle: 每轮扩容最大节点个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxNodesPerCycle: Integer
        # @param ScaleUpMemRatio: 扩容过程中，作业的内存在匹配实例机型时增大比例（不会影响作业提交的内存大小，只影响匹配计算过程）。<br/>
        # 针对场景：由于实例机型的总内存会大于实例内部的可用内存，16GB内存规格的实例，实例操作系统内的可用内存只有约14.9GB内存。假设此时提交一个需要15GB内存的作业，

        # - 当ScaleUpMemRatio=0时，会匹配到16GB内存规格的实例,但是由于操作系统内的可用内存为14.9GB小于作业所需的15GB，扩容出来的实例作业无法运行起来。
        # - 当ScaleUpMemRatio=10时，匹配实例规格会按照15*(1+10%)=16.5GB来进行实例规格匹配，则不会匹配到16GB的实例，而是更大内存规格的实例来保证作业能够被运行起来。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleUpMemRatio: Integer

        attr_accessor :QueueName, :MinSize, :MaxSize, :EnableAutoExpansion, :EnableAutoShrink, :ExpansionNodeConfigs, :DesiredIdleNodeCapacity, :ScaleOutRatio, :ScaleOutNodeThreshold, :MaxNodesPerCycle, :ScaleUpMemRatio

        def initialize(queuename=nil, minsize=nil, maxsize=nil, enableautoexpansion=nil, enableautoshrink=nil, expansionnodeconfigs=nil, desiredidlenodecapacity=nil, scaleoutratio=nil, scaleoutnodethreshold=nil, maxnodespercycle=nil, scaleupmemratio=nil)
          @QueueName = queuename
          @MinSize = minsize
          @MaxSize = maxsize
          @EnableAutoExpansion = enableautoexpansion
          @EnableAutoShrink = enableautoshrink
          @ExpansionNodeConfigs = expansionnodeconfigs
          @DesiredIdleNodeCapacity = desiredidlenodecapacity
          @ScaleOutRatio = scaleoutratio
          @ScaleOutNodeThreshold = scaleoutnodethreshold
          @MaxNodesPerCycle = maxnodespercycle
          @ScaleUpMemRatio = scaleupmemratio
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
          @EnableAutoExpansion = params['EnableAutoExpansion']
          @EnableAutoShrink = params['EnableAutoShrink']
          unless params['ExpansionNodeConfigs'].nil?
            @ExpansionNodeConfigs = []
            params['ExpansionNodeConfigs'].each do |i|
              expansionnodeconfigoverview_tmp = ExpansionNodeConfigOverview.new
              expansionnodeconfigoverview_tmp.deserialize(i)
              @ExpansionNodeConfigs << expansionnodeconfigoverview_tmp
            end
          end
          @DesiredIdleNodeCapacity = params['DesiredIdleNodeCapacity']
          @ScaleOutRatio = params['ScaleOutRatio']
          @ScaleOutNodeThreshold = params['ScaleOutNodeThreshold']
          @MaxNodesPerCycle = params['MaxNodesPerCycle']
          @ScaleUpMemRatio = params['ScaleUpMemRatio']
        end
      end

      # 队列信息概览。
      class QueueOverview < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueName: String

        attr_accessor :QueueName

        def initialize(queuename=nil)
          @QueueName = queuename
        end

        def deserialize(params)
          @QueueName = params['QueueName']
        end
      end

      # SetAutoScalingConfiguration请求参数结构体
      class SetAutoScalingConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param ExpansionBusyTime: 任务连续等待时间，队列的任务处于连续等待的时间。单位秒。默认值120。
        # @type ExpansionBusyTime: Integer
        # @param ShrinkIdleTime: 节点连续空闲（未运行作业）时间，一个节点连续处于空闲状态时间。单位秒。默认值300。
        # @type ShrinkIdleTime: Integer
        # @param QueueConfigs: 扩容队列配置列表。
        # @type QueueConfigs: Array
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会绑定弹性伸缩组。检查项包括是否填写了必需参数，请求格式，业务限制。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId。
        # false（默认）：发送正常请求，通过检查后直接绑定弹性伸缩组。
        # @type DryRun: Boolean

        attr_accessor :ClusterId, :ExpansionBusyTime, :ShrinkIdleTime, :QueueConfigs, :DryRun

        def initialize(clusterid=nil, expansionbusytime=nil, shrinkidletime=nil, queueconfigs=nil, dryrun=nil)
          @ClusterId = clusterid
          @ExpansionBusyTime = expansionbusytime
          @ShrinkIdleTime = shrinkidletime
          @QueueConfigs = queueconfigs
          @DryRun = dryrun
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ExpansionBusyTime = params['ExpansionBusyTime']
          @ShrinkIdleTime = params['ShrinkIdleTime']
          unless params['QueueConfigs'].nil?
            @QueueConfigs = []
            params['QueueConfigs'].each do |i|
              queueconfig_tmp = QueueConfig.new
              queueconfig_tmp.deserialize(i)
              @QueueConfigs << queueconfig_tmp
            end
          end
          @DryRun = params['DryRun']
        end
      end

      # SetAutoScalingConfiguration返回参数结构体
      class SetAutoScalingConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # 描述集群文件系统选项
      class StorageOption < TencentCloud::Common::AbstractModel
        # @param CFSOptions: 集群挂载CFS文件系统选项。
        # @type CFSOptions: Array
        # @param GooseFSOptions: 集群挂载GooseFS文件系统选项。
        # @type GooseFSOptions: Array
        # @param GooseFSxOptions: 集群挂载GooseFSx文件系统选项。
        # @type GooseFSxOptions: Array

        attr_accessor :CFSOptions, :GooseFSOptions, :GooseFSxOptions

        def initialize(cfsoptions=nil, goosefsoptions=nil, goosefsxoptions=nil)
          @CFSOptions = cfsoptions
          @GooseFSOptions = goosefsoptions
          @GooseFSxOptions = goosefsxoptions
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
          unless params['GooseFSxOptions'].nil?
            @GooseFSxOptions = []
            params['GooseFSxOptions'].each do |i|
              goosefsxoption_tmp = GooseFSxOption.new
              goosefsxoption_tmp.deserialize(i)
              @GooseFSxOptions << goosefsxoption_tmp
            end
          end
        end
      end

      # 集群存储选项概览信息。
      class StorageOptionOverview < TencentCloud::Common::AbstractModel
        # @param CFSOptions: CFS存储选项概览信息列表。
        # @type CFSOptions: Array
        # @param GooseFSOptions: GooseFS存储选项概览信息列表。
        # @type GooseFSOptions: Array
        # @param GooseFSxOptions: GooseFSx存储选项概览信息列表。
        # @type GooseFSxOptions: Array

        attr_accessor :CFSOptions, :GooseFSOptions, :GooseFSxOptions

        def initialize(cfsoptions=nil, goosefsoptions=nil, goosefsxoptions=nil)
          @CFSOptions = cfsoptions
          @GooseFSOptions = goosefsoptions
          @GooseFSxOptions = goosefsxoptions
        end

        def deserialize(params)
          unless params['CFSOptions'].nil?
            @CFSOptions = []
            params['CFSOptions'].each do |i|
              cfsoptionoverview_tmp = CFSOptionOverview.new
              cfsoptionoverview_tmp.deserialize(i)
              @CFSOptions << cfsoptionoverview_tmp
            end
          end
          unless params['GooseFSOptions'].nil?
            @GooseFSOptions = []
            params['GooseFSOptions'].each do |i|
              goosefsoptionoverview_tmp = GooseFSOptionOverview.new
              goosefsoptionoverview_tmp.deserialize(i)
              @GooseFSOptions << goosefsoptionoverview_tmp
            end
          end
          unless params['GooseFSxOptions'].nil?
            @GooseFSxOptions = []
            params['GooseFSxOptions'].each do |i|
              goosefsxoptionoverview_tmp = GooseFSxOptionOverview.new
              goosefsxoptionoverview_tmp.deserialize(i)
              @GooseFSxOptions << goosefsxoptionoverview_tmp
            end
          end
        end
      end

      # 描述了操作系统所在块设备即系统盘的信息
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。系统盘类型限制详见存储概述。取值范围：
        # CLOUD_BASIC：普通云硬盘
        # CLOUD_SSD：SSD云硬盘
        # CLOUD_PREMIUM：高性能云硬盘

        # 默认取值：当前有库存的硬盘类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskSize: 系统盘大小，单位：GB。默认值为 50
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如`subnet-xxx`。有效的私有网络子网ID可通过登录[控制台](https://console.cloud.tencent.com/vpc/subnet?rid=1)查询；也可以调用接口  [DescribeSubnets](/document/api/215/15784) ，从接口返回中的`unSubnetId`字段获取。若在创建子机时SubnetId与VpcId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

